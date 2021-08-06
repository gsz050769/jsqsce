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

LOG: Make call tests
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
LOG:new make call, two options call 600 and 4099
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_53.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG:new make call, reply now + 2 call options 600 and 4099
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_2|./tst/msg/tst_54.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG:new make call, reply now + 2 call options 600 with very long to number and 4099
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_3|./tst/msg/tst_55.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG:new make call, three options call 660 and 4099  and 4030
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_4|./tst/msg/tst_56.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG:new make call, one make call to 600
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_5|./tst/msg/tst_57.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG:new make call, one make call to 600  + reply now
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_6|./tst/msg/tst_58.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG:new make call, one make call to 600  with automatic, handsfree and downlink
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_6|./tst/msg/tst_64.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG:new make call, one make call to 600  with automatic, handset and bidirect
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_6|./tst/msg/tst_65.json|
+++++++++++++++++++++++++++
WAIT: 40





END:
