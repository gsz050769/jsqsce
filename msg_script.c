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

// jsqlib: parsing + build json content
#include "libjson.h"

//
// static functions
//
static void * mqtt_sub_res(void * arg);
static ljs* msg_create_fromfile(int msgidx, char * sipid,char * ammsgid,char * msgfile);
static ljs* msg_hs_template_set_msg(void);
static ljs* msg_hs_template_del_msg(void);
static void msg_hs_mod(ljs* js,int idx ,char *sipid,char *msgid,char *text,char *prio,char *ttl);
static void msg_send(ljs* ljs_out, char *topic);
static void status_send(void);
static void pos_dect_send(char *token, int idx);
static void pos_ble_send(char *token, int idx);


// ***************************************************************************************
// msg_script: script based test tool for einstein2 MQTT api
//
// input paramter: scefile to be parsed
// 
// see readme.txt
//
//
//
//
// ***************************************************************************************
int main(int argc, const char *argv[])
{
    ljs *js=NULL;
    const char * sce_input_file;
    FILE *file = NULL;
    char line[255];
    char * token=NULL;
    char * sipid=token;
    char * ammsgid=NULL;
    char * prio=NULL;
    char * ttl=NULL;
    char * text=NULL;
    char * msgfile=NULL;
    int    msgidx=0;
    pthread_t mqtt_status_thread;
    int loop_idx_sipid=0;
    int loop_idx_amsgid=0;
    
    //
    // check for input scenario, if not given, take "msg.sce" from local directory
    //
    if (argc > 1) {
        sce_input_file = argv[1];
    } else {
        sce_input_file = "msg.sce";
    }

    // 
    // open file
    //
    file = fopen(sce_input_file, "r");
    if(!file)
    {
        printf("unable to open file %s\n",sce_input_file);
        return -1;
    }
    printf("message scenario started with scenario input file=%s\n",sce_input_file);

    //
    // create therad for listening to MQTT response topic
    //
    int ret = pthread_create(&mqtt_status_thread,NULL,&mqtt_sub_res,NULL);  
   
    // 
    // parse input scenario content
    //
    while (fgets(line, sizeof(line), file)) {
        token = strtok(line, ":");

        if (token && (strcmp(token,"S_MSG_FILE")==0))
        {
            token=strtok(NULL,":");
            printf("S_MSG_FILE: %s",token?token:"");
            if (token && (sipid=strtok(token,"|")))
            {
                if (ammsgid=strtok(NULL,"|"))
                {
                    if (msgfile=strtok(NULL,"|")) 
                    {
                        if(file)
                        {
                            js=msg_create_fromfile(msgidx,sipid,ammsgid,msgfile);
                            if(js)
                            {
                                msg_send(js,"as1/msg/xxl/msgsrv/req/setMsg");
                                msgidx++;
                            }
                        }
                    }
                }
            }
            continue;
        }
        if (token && (strcmp(token,"S_MSG")==0))
        {
            token=strtok(NULL,":");
            printf("S_MSG: %s",token?token:"");
            if (token && (sipid=strtok(token,"|")))
            {
                if (ammsgid=strtok(NULL,"|"))
                {
                     if (prio=strtok(NULL,"|"))
                     {
                        if (ttl=strtok(NULL,"|"))
                        {
                            printf("S_MSG: %s|%s|%s|%s|\n",sipid,ammsgid,prio,ttl);
                            text=strtok(NULL,"|");
                            js=msg_hs_template_set_msg();
                            msg_hs_mod(js,msgidx,sipid,ammsgid,text,prio,ttl);
                            msg_send(js,"as1/msg/xxl/msgsrv/req/setMsg");
                            msgidx++;
                        }
                     }
                }
            }
            continue;
        }
        if (token && (strcmp(token,"S_MSG_INC")==0))
        {
            token=strtok(NULL,":");
            printf("S_MSG_INC: %s",token?token:"");
            if (token && (sipid=strtok(token,"|")))
            {
                if (ammsgid=strtok(NULL,"|"))
                {
                     if (prio=strtok(NULL,"|"))
                     {
                        if (ttl=strtok(NULL,"|"))
                        {
                            printf("S_MSG: %s|%s|%s|%s|\n",sipid,ammsgid,prio,ttl);
                            text=strtok(NULL,"|");
                            js=msg_hs_template_set_msg();
                            char buf1[100];
                            char buf2[100];
                            int number=atoi(sipid);
                            number+=loop_idx_sipid;
                            sprintf(buf1,"%d",number);
                            sprintf(buf2,"%s_%d",ammsgid,loop_idx_amsgid);
                            msg_hs_mod(js,msgidx,buf1,buf2,text,prio,ttl);
                            msg_send(js,"as1/msg/xxl/msgsrv/req/setMsg");
                            msgidx++;
                            loop_idx_sipid++;
                            loop_idx_amsgid++;
                        }
                     }
                }
            }
            continue;
        }
        if (token && (strcmp(token,"D_MSG")==0))
        {
            token=strtok(NULL,":");
            printf("D_MSG: %s",token?token:"");
            if (token && (sipid=strtok(token,"|")))
            {
                
                if (ammsgid=strtok(NULL,"|"))
                {
                    printf("D_MSG: %s|%s|\n",sipid,ammsgid);
                    js=msg_hs_template_del_msg();
                    msg_hs_mod(js,msgidx,sipid,ammsgid,NULL,NULL,NULL);
                    msg_send(js,"as1/msg/xxl/msgsrv/req/delMsg");
                    msgidx++;
                }
            }
            continue;
        }
        if (token && (strcmp(token,"WAIT")==0))
        {
            if(token=strtok(NULL,":"))
            {
                printf("WAIT: %s",token?token:"");
                sleep(atoi(token));
            }
            continue;
        }
        if (token && (strcmp(token,"RESTART")==0))
        {
            printf("RESTART scenario\n");
            rewind(file);
            loop_idx_sipid=0;
            continue;
        }
        if (token && (strcmp(token,"END")==0))
        {
            printf("END scenario\n");
            break;
        }
        if (token && (strcmp(token,"STATUS")==0))
        {
            status_send();
        }
        if (token && (strcmp(token,"POS_BLE")==0))
        {
            token=strtok(NULL,":");
            pos_ble_send(token,msgidx);
        }
        if (token && (strcmp(token,"POS_DECT")==0))
        {
            token=strtok(NULL,":");
            pos_dect_send(token,msgidx);
        }
        if (token && (strcmp(token,"LOG")==0))
        {
            token=strtok(NULL,":");
            printf("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");
            printf("LOG: %s\n",token);
            printf("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++\n");
        }
    }
    //
    // clean resources
    //
    fclose(file);
    pthread_kill(mqtt_status_thread,SIGKILL);
}



// ***************************************************************************************
// Thread: mqqt_subscribe to all topics with destination as1
//
//
// ***************************************************************************************
static void * mqtt_sub_res(void * arg)
{
    char temp[500];
    char * topic="+/+/as1/+/#";
    sprintf(temp, "mosquitto_sub -u as1 --psk-identity as1 --psk 123456789012345678901234567890ab -v -t \'%s\' -p 8884 -h 192.168.178.89", topic);
    printf("command=%s\n",temp);
    while(1)
    {
        FILE * cmd=popen(temp,"r");
        char result[1000]={0};
        while(fgets(result,sizeof(result),cmd)!=0)
        {
            printf("Receive: %s\n",result);
        }
        pclose(cmd);
    }
    printf("exit\n");
}

// ***************************************************************************************
// create mosquitto api message from file. msgidx and sipid will be exchanged by 
// given parameters.
// ***************************************************************************************
static ljs* msg_create_fromfile(int msgidx, char * sipid,char * ammsgid,char * msgfile)
{
    FILE *file=NULL;
    ljs* js=NULL;
    char *string=NULL;
    int idx=0;char *info=NULL;

    char msg_idx[40];
    idx=idx%10000;
    sprintf(msg_idx,"%d",msgidx);

    printf("==== %s file %s\n",__FUNCTION__,msgfile);

    file = fopen(msgfile, "rb");
    if(file)
    {
        fseek(file, 0, SEEK_END);
        long fsize = ftell(file);
        fseek(file, 0, SEEK_SET);  
        string = malloc(fsize + 1);
        fread(string, 1, fsize, file);
        fclose(file);
        string[fsize] = 0;
        if(fsize!=0)
        {
            if(string[fsize-1]=='\n')
            {
                string[fsize-1]=0;
            }
            js=ljs_add_parse(string);
            if(!ljs_add_parse_ok(&idx,&info))
            {
                ljs_add_string(js,"msgId:STR",msg_idx);
                ljs_add_string(js,"payload:OBJ/sip_id:STR",sipid);
                ljs_add_string(js,"payload:OBJ/amsgId:STR",ammsgid);
            }
            else{
                printf("%s parsing error ",__FUNCTION__);
            }
        }
        free(string);
    }
    return js;
}

// ***************************************************************************************
// create mosquitto api messaging setMsg default message 
// ***************************************************************************************
static ljs*  msg_hs_template_set_msg(void)
{
    ljs * template = NULL;

	template = ljs_init();
	ljs_add_string(template,"msgId:STR","xxxxx");
    ljs_add_string(template,"payload:OBJ/amsgId:STR","xxxxxxxxx");
	ljs_add_string(template,"payload:OBJ/sip_id:STR","xxxxx");
	ljs_add_string(template,"payload:OBJ/msg:OBJ/server_msg_status:STR","new");
    ljs_add_string(template,"payload:OBJ/msg:OBJ/prio:STR","6");
    ljs_add_string(template,"payload:OBJ/msg:OBJ/title:OBJ/text:STR","Title");
	ljs_add_string(template,"payload:OBJ/msg:OBJ/status_icon:STR","3c");
	ljs_add_string(template,"payload:OBJ/msg:OBJ/status_text:STR","accept");
	ljs_add_string(template,"payload:OBJ/msg:OBJ/deletable:STR","true");
	ljs_add_string(template,"payload:OBJ/msg:OBJ/ttl:STR","1039");
    ljs_add_string(template,"payload:OBJ/msg:OBJ/alert_info:STR","msg_melody_high");
    ljs_add_string(template,"payload:OBJ/msg:OBJ/body_starter:STR","appetizer");
    ljs_add_string(template,"payload:OBJ/msg:OBJ/deletable:STR","no");
	ljs_add_string(template,"payload:OBJ/msg:OBJ/msg_icon:OBJ/value:STR","3e");
	ljs_add_array(template, "payload:OBJ/msg:OBJ/body:ARR",NULL);
	ljs_add_array(template, "payload:OBJ/msg:OBJ/reply_options:ARR",NULL);

	
	ljs *body=NULL; 
	ljs_read_array(template,"payload:OBJ/msg:OBJ/body:ARR",&body);
	ljs_add_string(body,"0:OBJ/msg_icon:OBJ/value:STR","3c");
	ljs_add_string(body,"1:OBJ/paragraph:OBJ/text:STR","Machine defect");
	ljs_add_string(body,"1:OBJ/paragraph:OBJ/blink:STR","no");
	ljs_add_string(body,"1:OBJ/paragraph:OBJ/underline:STR","no");
	ljs_add_string(body,"1:OBJ/paragraph:OBJ/bold:STR","yes");
	ljs_add_string(body,"1:OBJ/paragraph:OBJ/align:STR","left");

	ljs *reply=NULL; 
	ljs_read_array(template,"payload:OBJ/msg:OBJ/reply_options:ARR",&reply);
	ljs_add_string(reply,"0:OBJ/option_id:STR","1234534354");
	ljs_add_string(reply,"0:OBJ/reply:OBJ/text:STR","Accept");
	ljs_add_string(reply,"1:OBJ/option_id:STR","5623432423");
	ljs_add_string(reply,"1:OBJ/reply:OBJ/text:STR","Reject");
    ljs_add_string(reply,"2:OBJ/option_id:STR","5623432457");
	ljs_add_string(reply,"2:OBJ/reply:OBJ/text:STR","Dont know");
    return template;
}

// ***************************************************************************************
// create mosquitto api messaging setMsg default message 
// ***************************************************************************************
static ljs*  msg_hs_template_del_msg(void)
{
    ljs * template = NULL;

	template = ljs_init();
	ljs_add_string(template,"msgId:STR","xxxxx");
    ljs_add_string(template,"payload:OBJ/amsgId:STR","xxxxxxxxx");
	ljs_add_string(template,"payload:OBJ/sip_id:STR","xxxxx");
    return template;
}

static int idx=0;
// ***************************************************************************************
// modify given parameters of default setMsg 
// ***************************************************************************************
static void msg_hs_mod(ljs* js,int idx ,char *sipid,char *msgid,char *text,char *prio,char *ttl)
{
    char msg_idx[40];
    idx=idx%10000;
    sprintf(msg_idx,"%d",idx);
    ljs_add_string(js,"msgId:STR",msg_idx);
    ljs_add_string(js,"payload:OBJ/sip_id:STR",sipid);
    ljs_add_string(js,"payload:OBJ/amsgId:STR",msgid);
    if(prio){ljs_add_string(js,"payload:OBJ/msg:OBJ/prio:STR",prio);}
    if(ttl){ljs_add_string(js,"payload:OBJ/msg:OBJ/ttl:STR",ttl);}
    if(text)
    {
        ljs_add_string(js,"payload:OBJ/msg:OBJ/title:OBJ/text:STR",text);
        ljs_add_string(js,"payload:OBJ/msg:OBJ/body:ARR/1:OBJ/paragraph:OBJ/text:STR",text);
        sprintf(msg_idx,"option_id_%d",3*idx);
        ljs_add_string(js, "payload:OBJ/msg:OBJ/reply_options:ARR/0:OBJ/option_id:STR",msg_idx);
        sprintf(msg_idx,"option_id_%d",3*idx+1);
        ljs_add_string(js, "payload:OBJ/msg:OBJ/reply_options:ARR/1:OBJ/option_id:STR",msg_idx);
        sprintf(msg_idx,"option_id_%d",3*idx+2);
        ljs_add_string(js, "payload:OBJ/msg:OBJ/reply_options:ARR/2:OBJ/option_id:STR",msg_idx);
    }
}

// ***************************************************************************************
// send mosquitto api message
// ***************************************************************************************
// mosquitto_pub -u as1 --psk-identity as1 --psk 123456789012345678901234567890ab -t "as1/service1/xxl/api/req/status" -m '{"msgId": "gen_1","params":{}}' -p 8884 -h 192.168.178.89
static void msg_send(ljs* ljs_out, char *topic)
{
    char temp[20000];

    char *out=ljs_print_malloc(ljs_out);
    if(out)
    {
        sprintf(temp, "mosquitto_pub -u as1 --psk-identity as1 --psk 123456789012345678901234567890ab -t \'%s\' -m \'%s\' -p 8884 -h 192.168.178.89", topic, out);
        printf("command=%s\n",temp);
        int status = system(temp);
        printf("status=%d\n",status);
        printf("##########################################################################\n");
        free(out);
    }
    ljs_free(ljs_out);
}

// ***************************************************************************************
//
//
//
// ***************************************************************************************
// mosquitto_pub -t 'as1/general/xxl/api/req/status' -m '{"msgId": "gen_1","params":{}}'
static void status_send(void)
{
    ljs * js = NULL;
    char *out=NULL;
    char temp[20000];

	js = ljs_init();
	ljs_add_string(js,"msgId:STR","4712");
    ljs_add_object(js, "params:OBJ",NULL);
    out=ljs_print_malloc(js);
    if(out)
    {
        sprintf(temp, "mosquitto_pub -u as1 --psk-identity as1 --psk 123456789012345678901234567890ab  -t \'%s\' -m \'%s\' -p 8884 -h 192.168.178.89", "as1/general/xxl/api/req/status", out);
        printf("command = %s\n",temp);
        int status = system(temp);
        printf("status=%d\n",status);
        printf("##########################################################################\n");
        free(out);
    }
    ljs_free(js);
}

// ***************************************************************************************
//
//
//
// ***************************************************************************************
static void pos_dect_send(char *token, int idx)
{
    char * sipid="";
    char msg_idx[40];
    idx=idx%10000;
    sprintf(msg_idx,"%d",idx);
    ljs* js=NULL;
    char *out=NULL;
    char temp[1024];
    char topic[200];

    
    if (token && (sipid=strtok(token,"|")))
    {
        js = ljs_init();
        ljs_add_string(js,"msgId:STR",msg_idx);
        ljs_add_string(js,"params:OBJ/sip_id:STR",sipid);
        ljs_add_string(js,"params:OBJ/mode:STR","dps");
        out=ljs_print_malloc(js);
        sprintf(topic,"as1/service2/sip_id/%s/req/position",sipid);
        sprintf(temp, "mosquitto_pub -u as1 --psk-identity as1 --psk 123456789012345678901234567890ab -t \'%s\' -m \'%s\' -p 8884 -h 192.168.178.89", topic, out);
        printf("command = %s\n",temp);
        int status = system(temp);
        printf("status=%d\n",status);
        printf("##########################################################################\n");
        free(out);
        ljs_free(js);
    }
}

// ***************************************************************************************
//
//
//
// ***************************************************************************************
static void pos_ble_send(char *token, int idx)
{
    char * sipid=NULL;
    char msg_idx[40];
    idx=idx%10000;
    sprintf(msg_idx,"%d",idx);
    ljs* js=NULL;
    char *out=NULL;
    char temp[1024];
    char topic[200];

    if (token && (sipid=strtok(token,"|")))
    {
        js = ljs_init();
        ljs_add_string(js,"msgId:STR",msg_idx);
        ljs_add_string(js,"params:OBJ/sip_id:STR",sipid);
        ljs_add_string(js,"params:OBJ/mode:STR","ble");
        ljs_add_array(js,"params:OBJ/ble:OBJ/company_ids:ARR",NULL);
        ljs_add_string(js,"params:OBJ/ble:OBJ/search_timeout:STR","20");
        ljs_add_string(js,"params:OBJ/ble:OBJ/max_beacons:STR","4");
        ljs_add_string(js,"params:OBJ/ble:OBJ/request_info:ARR/0:STR","public_address");
        ljs_add_string(js,"params:OBJ/ble:OBJ/request_info:ARR/1:STR","random_address");
        ljs_add_string(js,"params:OBJ/ble:OBJ/request_info:ARR/2:STR","advert_data");
        ljs_add_string(js,"params:OBJ/ble:OBJ/request_info:ARR/3:STR","signal_strength");
        out=ljs_print_malloc(js);
        sprintf(topic,"as1/service2/sip_id/%s/req/position",sipid);
        sprintf(temp, "mosquitto_pub -u as1 --psk-identity as1 --psk 123456789012345678901234567890ab -t \'%s\' -m \'%s\' -p 8884 -h 192.168.178.89", topic, out);
        printf("command = %s\n",temp);
        int status = system(temp);
        printf("status=%d\n",status);
        printf("##########################################################################\n");
        free(out);
        ljs_free(js);
    }  
}
