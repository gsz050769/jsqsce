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

LOG: Start stress test
WAIT: 1
+++++++++++++++++++++++++++
LOG:determine api status
+++++++++++++++++++++++++++
STATUS:
WAIT: 2
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4004|4004_1|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4011|4011_1|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4013|4013_1|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4015|4015_1|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4020|4020_1|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 10
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4004|4004_2|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4011|4011_2|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4013|4013_2|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4015|4015_2|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4020|4020_2|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_2|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 10
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4004|4004_3|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4011|4011_3|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4013|4013_3|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4015|4015_3|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4020|4020_3|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 1
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4004  mel silent
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_3|./tst/msg/tst_4.json|
+++++++++++++++++++++++++++
WAIT: 10
+++++++++++++++++++++++++++
LOG:restart stress test
+++++++++++++++++++++++++++
RESTART:





