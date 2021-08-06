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
LOG: body test cases start

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
LOG: reply options, 3 body
LOG: body 1 blink no, underline no, bold yes, align left
LOG: body 2 blink yes, underline no, bold yes, align right
LOG: body 3 blink no, underline yes, bold yes, align center
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_47.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG: reply options, 3 body
LOG: body 1 blink no, underline yes, bold yes, align right
LOG: body 2 blink yes, underline yes, bold yes, align left
LOG: body 3 blink no, underline no, bold no, align center
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_2|./tst/msg/tst_48.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG: reply options, 3 body
LOG: body 1 text only
LOG: body 2 no text
LOG: body 3 text + blink no
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_3|./tst/msg/tst_49.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG: reply options, 3 body
LOG: body 1 01234567890 01234567890 .....
LOG: body 2 21234567890 21234567890 .....
LOG: body 3 31234567890 31234567890 .....
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_4|./tst/msg/tst_50.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG: reply options, empty body element
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_5|./tst/msg/tst_51.json|
+++++++++++++++++++++++++++
WAIT: 40
+++++++++++++++++++++++++++
LOG: reply options, 3 body
LOG: body 1 Lipsum Cyrillic
LOG: body 2 21234567890 21234567890 .....
LOG: body 3 31234567890 31234567890 .....
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_6|./tst/msg/tst_52.json|
+++++++++++++++++++++++++++
WAIT: 40

+++++++++++++++++++++++++++
LOG:end test cases body
+++++++++++++++++++++++++++
END:




