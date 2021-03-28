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
+++++++++++++++++++++++++++
LOG:determine api status
+++++++++++++++++++++++++++
STATUS:
WAIT: 4
+++++++++++++++++++++++++++
LOG:delete all messages
+++++++++++++++++++++++++++
D_MSG:4004|4004_1|
WAIT: 1
D_MSG:4013|4013_1|
WAIT: 1
D_MSG:4015|4015_1|
WAIT: 1
D_MSG:4020|4020_1|
WAIT: 1
D_MSG:4021|4021_1|
WAIT: 1
D_MSG:4026|4026_1|
WAIT: 1
D_MSG:4028|4028_1|
WAIT: 4
D_MSG:4004|4004_2|
WAIT: 1
D_MSG:4013|4013_2|
WAIT: 1
D_MSG:4015|4015_2|
WAIT: 1
D_MSG:4020|4020_2|
WAIT: 1
D_MSG:4021|4021_2|
WAIT: 1
D_MSG:4026|4026_2|
WAIT: 1
D_MSG:4028|4028_2|
WAIT: 10
+++++++++++++++++++++++++++
LOG:new prio 8  message 1 for 4004/4013/4020/4021
+++++++++++++++++++++++++++
S_MSG_FILE:4004|4004_1|./sce/msg/tst_prio_8_1.json|
WAIT: 1
S_MSG_FILE:4013|4013_1|./sce/msg/tst_prio_8_1.json|
WAIT: 1
S_MSG_FILE:4015|4015_1|./sce/msg/tst_prio_8_1.json|
WAIT: 1
S_MSG_FILE:4020|4020_1|./sce/msg/tst_prio_8_1.json|
WAIT: 1
S_MSG_FILE:4021|4021_1|./sce/msg/tst_prio_8_1.json|
WAIT: 1
S_MSG_FILE:4026|4026_1|./sce/msg/tst_prio_8_1.json|
WAIT: 1
S_MSG_FILE:4028|4028_1|./sce/msg/tst_prio_8_1.json|
+++++++++++++++++++++++++++
WAIT: 10
+++++++++++++++++++++++++++
+++++++++++++++++++++++++++
LOG:new prio 8 message 2 for 4004/4013/4020/4021
+++++++++++++++++++++++++++
S_MSG_FILE:4004|4004_2|./sce/msg/tst_prio_8_2.json|
WAIT: 1
S_MSG_FILE:4013|4013_2|./sce/msg/tst_prio_8_2.json|
WAIT: 1
S_MSG_FILE:4015|4015_2|./sce/msg/tst_prio_8_2.json|
WAIT: 1
S_MSG_FILE:4020|4020_2|./sce/msg/tst_prio_8_2.json|
WAIT: 1
S_MSG_FILE:4021|4021_2|./sce/msg/tst_prio_8_2.json|
WAIT: 1
S_MSG_FILE:4026|4026_2|./sce/msg/tst_prio_8_2.json|
WAIT: 1
S_MSG_FILE:4028|4028_2|./sce/msg/tst_prio_8_2.json|
+++++++++++++++++++++++++++
WAIT: 10
+++++++++++++++++++++++++++
+++++++++++++++++++++++++++
LOG:update prio 8  message 1 for 4004/4013/4020/4021
+++++++++++++++++++++++++++
S_MSG_FILE:4004|4004_1|./sce/msg/tst_prio_8_1_1.json|
WAIT: 1
S_MSG_FILE:4013|4013_1|./sce/msg/tst_prio_8_1_1.json|
WAIT: 1
S_MSG_FILE:4015|4015_1|./sce/msg/tst_prio_8_1_1.json|
WAIT: 1
S_MSG_FILE:4020|4020_1|./sce/msg/tst_prio_8_1_1.json|
WAIT: 1
S_MSG_FILE:4021|4021_1|./sce/msg/tst_prio_8_1_1.json|
WAIT: 1
S_MSG_FILE:4026|4026_1|./sce/msg/tst_prio_8_1_1.json|
WAIT: 1
S_MSG_FILE:4028|4028_1|./sce/msg/tst_prio_8_1_1.json|
+++++++++++++++++++++++++++
WAIT: 10
+++++++++++++++++++++++++++
RESTART:




