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


+++++++++++++++++++++++++++
LOG: prio test cases start
LOG: a) create messages prio 9 ... 1, same msgid
LOG: b) delete msg
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:determine api status
+++++++++++++++++++++++++++
STATUS:
WAIT: 2
+++++++++++++++++++++++++++
LOG:delete message
+++++++++++++++++++++++++++
D_MSG:4021|4021_1|
WAIT: 2
+++++++++++++++++++++++++++
LOG:new prio 9 text=coffee message for 4021  mel high
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_14.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 8 text=coffee message for 4021  mel high
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_13.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4021  mel high
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_12.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 6 text=coffee message for 4021  mel high
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_11.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 5 text=coffee message for 4021  mel high
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_10.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 4 text=coffee message for 4021  mel high
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_9.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 3 text=coffee message for 4021  mel high
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_8.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 2 text=coffee message for 4021  mel high
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_7.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 1 text=coffee message for 4021  mel high
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_6.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:del message prio 1
+++++++++++++++++++++++++++
D_MSG:4021|4021_1|
WAIT: 15
END:




