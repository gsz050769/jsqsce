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
LOG: reply options test cases start

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
WAIT: 1
D_MSG:4021|4021_2|
WAIT: 1
D_MSG:4021|4021_3|
WAIT: 1
D_MSG:4021|4021_4|
WAIT: 1
D_MSG:4021|4021_5|
WAIT: 1
D_MSG:4021|4021_6|
WAIT: 1
D_MSG:4021|4021_7|
WAIT: 1
D_MSG:4021|4021_8|
WAIT: 1
D_MSG:4021|4021_9|
WAIT: 1
D_MSG:4021|4021_10|
WAIT: 2
+++++++++++++++++++++++++++
LOG: reply options, 3 options
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_37.json|
+++++++++++++++++++++++++++
WAIT: 20
+++++++++++++++++++++++++++
LOG: reply options, 4 options
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_2|./tst/msg/tst_38.json|
+++++++++++++++++++++++++++
WAIT: 20
+++++++++++++++++++++++++++
LOG: reply options, 2 options
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_3|./tst/msg/tst_39.json|
+++++++++++++++++++++++++++
WAIT: 20
+++++++++++++++++++++++++++
LOG: reply options, 1 option
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_4|./tst/msg/tst_40.json|
+++++++++++++++++++++++++++
WAIT: 20
+++++++++++++++++++++++++++
LOG: reply options, no option
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_5|./tst/msg/tst_41.json|
+++++++++++++++++++++++++++
WAIT: 20
+++++++++++++++++++++++++++
LOG: reply options, not available
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_5|./tst/msg/tst_42.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG:end test cases reply options
+++++++++++++++++++++++++++
END:




