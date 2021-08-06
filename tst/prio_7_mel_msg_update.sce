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

LOG: Send coffee poem to HS 4021
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
LOG:new prio 7 text=coffee message for 4021  mel high
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_1.json|
+++++++++++++++++++++++++++
WAIT: 10
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4021  mel mid
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_2.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG:end test case meldoy call update
+++++++++++++++++++++++++++
END:




