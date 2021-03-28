// ****************************************************************************************
// **
// ** (c) Georg Schmitz, 2021
// **
// ****************************************************************************************

// ****************************************************************************************
//   msg_script
//   
//   Test program for Einstein 2 DECT-IP MQTT based API for Alarming, Messaging, Location application servers
//   https://teamwork.gigaset.com/gigawiki/display/UN/DECT-IP+MQTT+based+API+for+Alarming%2C+Messaging%2C+Location+application+servers
// 
//   Programm is able to send api messages controlled by an imput script which expects following format:
// 
// 
//   STATUS:     = get status message
//                  sends general function status message to 
//   S_MSG:      = <sip_id>|<a_msg_id>|<prio>|<ttl>|text|
//                  send setMsg with standard content with adpated <sip_id>, <asmsgid>, <prio>, <ttl> and <text>
//   S_MSG_FILE: = <sip_id>|<a_msg_id>|<file>|content from <file>|
//                  send setMsg with content from <file> and content with adapted <sip_id>, <asmsgid>, <prio>, <ttl> and <text>
//   D_MSG:      = <sip_id>|<a_msg_id>|
//                  sedn delMsg for <sip-id> and <a_msg_id>
//   POS_BLE:    = <sip_id>|
//                  send dble position req for <sip_id>
//   POS_DECT:   = dect position req <sip_id>|
//                  send dect position req for <sip_id>
//   WAIT:       = <seconds>|
//                  sleep for <seconds>
//   RESTART:    = start script again   
//                  restart script
//   LOG:        = <log  text> 
//                 log text to be printed to console output
//   END:        = end scenrio here
//                  end scenario
//
//  Input:  input scenario can be passed as first paramter, if not available msg_script uses msg.sce in current directory 
//          as standard input
// 
//  Following account needs to be configured in Einstein2:
//  Application server identity: as1
//  Application server shared secret:  123456789012345678901234567890ab
// 
// Example scenario file /tmp/msg.sce
//          
//          WAIT: 1
//          STATUS:
//          WAIT: 1
//          POS_DECT:4000|
//          WAIT: 10
//          S_MSG:4021|4011_1|2|600|<=Prio 2 message=>|
//          WAIT: 10
//          END:
//
//
// 
// Prerequisits: mosquitto installed on that host, developed with
//               mosquitto version 1.4.8 (build date 2019-08-14 10:21:04+0200)
//
// API answers:
// Response and notification messages are dumped to terminal output. It is currentlyy not forseen to implement 
// possibillity to wait for certain answers.
//
//
//