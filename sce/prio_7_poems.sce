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
// LOG:        = free text for console log outputput <text>
//
LOG: Send coffee poem to HS 4004/4013/4015/4020/4021/4026/4028, wait, send new msg, delete all messages and restart ...
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
WAIT: 4
+++++++++++++++++++++++++++
LOG:new prio 7 coffee message 1 for 4004/4013/4020/4021
+++++++++++++++++++++++++++
S_MSG_FILE:4004|4004_1|./sce/msg/tst_prio_7_coffee.json|
WAIT: 1
S_MSG_FILE:4013|4013_1|./sce/msg/tst_prio_7_coffee.json|
WAIT: 1
S_MSG_FILE:4015|4015_1|./sce/msg/tst_prio_7_coffee.json|
WAIT: 1
S_MSG_FILE:4020|4020_1|./sce/msg/tst_prio_7_coffee.json|
WAIT: 1
S_MSG_FILE:4021|4021_1|./sce/msg/tst_prio_7_coffee.json|
WAIT: 1
S_MSG_FILE:4026|4026_1|./sce/msg/tst_prio_7_coffee.json|
WAIT: 1
S_MSG_FILE:4028|4028_1|./sce/msg/tst_prio_7_coffee.json|
WAIT: 10
+++++++++++++++++++++++++++
LOG:new prio 6 new year message 1 for 4004/4013/4020/4021
+++++++++++++++++++++++++++
S_MSG_FILE:4004|4004_2|./sce/msg/tst_prio_6_new_year.json|
WAIT: 1
S_MSG_FILE:4013|4013_2|./sce/msg/tst_prio_6_new_year.json|
WAIT: 1
S_MSG_FILE:4015|4015_2|./sce/msg/tst_prio_6_new_year.json|
WAIT: 1
S_MSG_FILE:4020|4020_2|./sce/msg/tst_prio_6_new_year.json|
WAIT: 1
S_MSG_FILE:4021|4021_2|./sce/msg/tst_prio_6_new_year.json|
WAIT: 1
S_MSG_FILE:4026|4026_2|./sce/msg/tst_prio_6_new_year.json|
WAIT: 1
S_MSG_FILE:4028|4028_2|./sce/msg/tst_prio_6_new_year.json|
+++++++++++++++++++++++++++
WAIT: 10
+++++++++++++++++++++++++++
RESTART:




