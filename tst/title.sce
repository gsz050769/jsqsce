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
LOG: title test cases start

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
LOG:new prio 7 title= "123456789012345678"  18 chars
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_15.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 title= "ÄÜÖäüöÄÜÖäüöÄÜÖäüö"  18 chars
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_16.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 title= "ÄÜÖäüö"  6 chars
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_17.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 title= "ÄÜÖäüöÜäüÖ"  10 chars
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_18.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 title= "ÄÜÖäüöÜäüÖö"  11 chars
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_19.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 title= "12345678901234567890"  20 chars
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_20.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 title= "123456789012345678901"  21 chars
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_21.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 title= "þÿ®Aa¶Æ"  7 chars
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_22.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 title= "ثaصbطcػ"  6 chars
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_23.json|
+++++++++++++++++++++++++++
WAIT: 50
END:






