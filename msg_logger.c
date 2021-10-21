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
#include "msg_status.h"


static void * mqtt_sub_res(void * arg);

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
    pthread_t mqtt_status_thread;

    printf("start\n");

    int ret = pthread_create(&mqtt_status_thread,NULL,&mqtt_sub_res,NULL);  

    while (1)
    {
 
    };
}

// ***************************************************************************************
// Thread: mqqt_subscribe to all topics with destination as1
//
//
// ***************************************************************************************
static void * mqtt_sub_res(void * arg)
{
    char *tmp=0;
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
            //printf("\e[1;1H\e[23]");
            //system("cls");

            printf("Receive: %s\n",result);
            msg_status_receive(result);
            msg_status_log();
        }
        pclose(cmd);
    }
    printf("exit\n");
}
