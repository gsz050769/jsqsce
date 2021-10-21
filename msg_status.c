// *********************************************************************************************
//
//  msg_script
//
//  Author: Georg Schmitz
// 
//
// *********************************************************************************************


//
// includes
//
#include <stdio.h>
#include <signal.h>
#include <unistd.h>
#include <stdbool.h> 
#include <stdlib.h> 
#include <string.h>
#include <pthread.h>
#include <signal.h>
#include "msg_status.h"

// jsqlib: parsing + build json content
#include "libjson.h"

typedef struct aml_msg
{
    char*  msgid;
    char*  hsid;
    char * tstate;
    struct aml_msg *next;
} aml_msg;

long int msgcounter=0;
aml_msg * messages=NULL;

aml_msg * msg_status_find_msgid(char *msgid)
{
    aml_msg * msg=messages;
    while(msg)
    {
        if (strcmp(msg->msgid,msgid)==0)
        {
            return msg;
        }
        msg=msg->next;
    }
    return NULL;
}

aml_msg * msg_status_find_hsid(char *hsid)
{
    aml_msg * msg=messages;
    while(msg)
    {
        if (strcmp(msg->hsid,hsid)==0)
        {
            return msg;
        }
        msg=msg->next;
    }
    return NULL;
}

void msg_status_garbage_collection(void)
{
    aml_msg * msg=messages;
    aml_msg * prev=NULL;
    while(msg)
    {
        if(strncmp(msg->tstate,"deleted",strlen("deleted"))==0) 
        {
            if(prev)
            {
                prev->next=msg->next;
            }
            else
            {
                messages=msg->next;
            }
            printf("STATUS: entry removed: \t%s\t%s\n",msg->msgid,msg->tstate);
            free(msg->tstate);
            free(msg->msgid);
            free(msg->hsid);
            free(msg);
            msg=prev; // go on with prev
        }
        else
        {
            prev=msg;
            msg=msg->next;
        }
    }
}
void msg_status_log(void)
{
  aml_msg * msg=messages;
  long int idx=0;
  printf("STATUS: ============= Message states ================>>>>>\n");
  while(msg)
  {
      idx++;
      printf("STATUS: %ld\t%s\t%s\t%s\n",idx,msg->hsid,msg->msgid,msg->tstate);
      msg=msg->next;
  }
  printf("STATUS: Number of mesages = %ld\n",idx);
  printf("STATUS: <<<<<======= Message states =======================\n");
}

int msg_status_update(char * msgid, char *state, char *hsid)
{
    aml_msg * msg=NULL;

    msg=msg_status_find_msgid(msgid);
    if(msg)
    {
        free(msg->tstate);
        msg->tstate=malloc(strlen(state)+1);
        strcpy(msg->tstate,state);
        return 0;
    }

    if(msgid&&state)
    {   
        msg=messages;
        messages=malloc(sizeof(aml_msg));
        messages->next=msg;
        messages->msgid=malloc(strlen(msgid)+1);
        strcpy(messages->msgid,msgid);
        messages->tstate=malloc(strlen(state)+1);
        strcpy(messages->tstate,state);
        messages->hsid=malloc(strlen(hsid)+1);
        strcpy(messages->hsid,hsid);
        msgcounter++;
        return 0;
    }
    return -1;
}

int msg_status_receive(char * msg)
{
    char *msgid=NULL;
    char *state=NULL;
    char * hsid=NULL;
    ljs* json_in=NULL;
    char *help=NULL;

  
    if((help=strstr(msg,"/noti/rpc/msgStatus "))!=NULL)
    {
        help=help+strlen("/noti/rpc/msgStatus ");
        printf("111 %s",help);
    }

    if(help)
    {
        help[strlen(help)-1]=0; // chop '\n' which makes a hickup in ljs_add_parse() 
        json_in=ljs_add_parse(help);

        int idx=0;char *info=NULL;
        if( (!ljs_add_parse_ok(&idx,&info)) && (idx > 0))
	    {
		    printf("STATUS: parse error at idx=%d: %s\n",idx,info);
	    }
        if(json_in)
        {
            ljs_read_string(json_in,"payload:OBJ/amsgId:STR",&msgid);
            ljs_read_string(json_in,"payload:OBJ/msg:OBJ/terminal_msg_status:STR",&state);
            ljs_read_string(json_in,"payload:OBJ/sip_id:STR",&hsid);
            //printf ("%s amsgId %s\n",__FUNCTION__,msgid);
            //printf ("%s state %s\n",__FUNCTION__,state);
            //printf ("%s hsid %s\n",__FUNCTION__,hsid);
            msg_status_garbage_collection();
            msg_status_update(msgid,state,hsid);
        }
        else
        {
            printf("STATUS: parsing failed\n");
        }
    }
    return -1;
}