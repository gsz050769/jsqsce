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
LOG: presentation_time test cases start

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
LOG: presentation time =10
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_29.json|
+++++++++++++++++++++++++++
WAIT: 20
+++++++++++++++++++++++++++
LOG: presentation time =20
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_2|./tst/msg/tst_30.json|
+++++++++++++++++++++++++++
WAIT: 30
+++++++++++++++++++++++++++
LOG: presentation time =30
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_3|./tst/msg/tst_31.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG: presentation time =40
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_4|./tst/msg/tst_32.json|
+++++++++++++++++++++++++++
WAIT: 50
+++++++++++++++++++++++++++
LOG: presentation time =1000000000
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_5|./tst/msg/tst_33.json|
+++++++++++++++++++++++++++
WAIT: 10
+++++++++++++++++++++++++++
LOG: presentation time =-1
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_6|./tst/msg/tst_34.json|
+++++++++++++++++++++++++++
WAIT: 10
+++++++++++++++++++++++++++
LOG: presentation time = empty
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_7|./tst/msg/tst_35.json|
+++++++++++++++++++++++++++
WAIT: 50
+++++++++++++++++++++++++++
LOG: presentation time  not available
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_8|./tst/msg/tst_36.json|
+++++++++++++++++++++++++++
WAIT: 50
+++++++++++++++++++++++++++
LOG:end test case presentation time
+++++++++++++++++++++++++++
END:




