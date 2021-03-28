// Commands, syntax:
// STATUS:     = get status message
// S_MSG:      = setMsg <sip_id>|<a_msg_id>|<prio>|<ttl>|text|
// S_MSG_FILE: = setMsg <sip_id>|<a_msg_id>|<file>|  setMsg from <file>
// D_MSG:      = delMsg <sip_id>|<a_msg_id>
// POS_BLE:    = ble position req <sip_id>
// POS_BLE:    = dect position req <sip_id>
// WAIT:       = sleep <seconds>
// RESTART:    = start script again   
// END:        = end scenrio here
// 
// 
//
// Send "my bonny is over ...." message to HS wait 10 seconds and delete message.
// Same for next HSs.
// HSs: 4004,4013,402,4021
// Loop
// 
//
//
//
//
//
WAIT: 1
STATUS:
WAIT: 1
// next 4021
S_MSG_FILE:4021|4021_0|./sce/msg/tst_msg_my_bonny.json|
WAIT: 1
END:



RESTART:



