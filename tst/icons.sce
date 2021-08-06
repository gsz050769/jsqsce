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
LOG: icon test cases start

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
LOG:new prio 7 text=coffee message for 4021 icons: status_icon=7 (answering mach) , msg icon=8 (Home number) ,body_icon=40 home dynamic
LOG: see https://teamwork.gigaset.com/gigawiki/pages/viewpage.action?spaceKey=UN&title=AML+icons
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_1|./tst/msg/tst_24.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4021 icons: status_icon=99 (invalid icon) , msg icon=8 (Home number) ,body_icon=34 (bell)
LOG: see https://teamwork.gigaset.com/gigawiki/pages/viewpage.action?spaceKey=UN&title=AML+icons
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_2|./tst/msg/tst_25.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4021 icons: status_icon=1f (bomb thread) , msg icon=23 (burglar) ,body_icon=75 (chemical spill)
LOG: see https://teamwork.gigaset.com/gigawiki/pages/viewpage.action?spaceKey=UN&title=AML+icons
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_3|./tst/msg/tst_26.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4021 icons: status_icon=empty fall back text="no_ico"n , msg icon=23 (burglar) ,body_icon=62 (fire)
LOG: see https://teamwork.gigaset.com/gigawiki/pages/viewpage.action?spaceKey=UN&title=AML+icons
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_4|./tst/msg/tst_27.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4021 icons: status_icon not available fall back text="no_ico"n , msg icon=23 (burglar) ,body_icon=62 (fire)
LOG: see https://teamwork.gigaset.com/gigawiki/pages/viewpage.action?spaceKey=UN&title=AML+icons
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_5|./tst/msg/tst_28.json|
+++++++++++++++++++++++++++

+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4021 icons: status_icon=7 (answering mach) , msg icon=8 (Home number) ,body_icon=40+color 00 home dynamic
LOG: see https://teamwork.gigaset.com/gigawiki/pages/viewpage.action?spaceKey=UN&title=AML+icons
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_6|./tst/msg/tst_59.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4021 icons: status_icon=7 (answering mach)  , msg icon=8 (Home number) ,body_icon=40+color 02 home dynamic
LOG: see https://teamwork.gigaset.com/gigawiki/pages/viewpage.action?spaceKey=UN&title=AML+icons
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_7|./tst/msg/tst_60.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4021 icons: status_icon=7 (answering mach)  , msg icon=8 (Home number) ,body_icon=40+color 03 home dynamic
LOG: see https://teamwork.gigaset.com/gigawiki/pages/viewpage.action?spaceKey=UN&title=AML+icons
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_8|./tst/msg/tst_61.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4021 icons: status_icon=7 (answering mach) , msg icon=8 (Home number) ,body_icon=40+color 04  home dynamic
LOG: see https://teamwork.gigaset.com/gigawiki/pages/viewpage.action?spaceKey=UN&title=AML+icons
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_9|./tst/msg/tst_62.json|
+++++++++++++++++++++++++++
WAIT: 15
+++++++++++++++++++++++++++
LOG:new prio 7 text=coffee message for 4021 icons: status_icon=7 (answering mach)  , msg icon=8 (Home number) ,body_icon=40+color 10 home dynamic
LOG: see https://teamwork.gigaset.com/gigawiki/pages/viewpage.action?spaceKey=UN&title=AML+icons
+++++++++++++++++++++++++++
S_MSG_FILE:4021|4021_10|./tst/msg/tst_63.json|
+++++++++++++++++++++++++++
WAIT: 15

WAIT: 50
+++++++++++++++++++++++++++
LOG:end test case prios
+++++++++++++++++++++++++++
END:




