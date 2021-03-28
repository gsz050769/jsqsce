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

LOG: Test stress HS 4021 with one prio 9 message per second
WAIT: 1
STATUS:
WAIT: 1
D_MSG:4021|4021_10|
WAIT: 1
S_MSG:4021|4021_10|9|1600|<=Prio_9_1=>|
WAIT: 1
S_MSG:4021|4021_11|9|1600|<=Prio_9_2=>|
WAIT: 1
S_MSG:4021|4021_12|9|1600|<=Prio_9_3=>|
WAIT: 1
S_MSG:4021|4021_13|9|1600|<=Prio_9_4=>|
WAIT: 1
S_MSG:4021|4021_14|9|1600|<=Prio_9_5=>|
WAIT: 1
S_MSG:4021|4021_15|9|1600|<=Prio_9_6=>|
WAIT: 1
S_MSG:4021|4021_16|9|1600|<=Prio_9_7=>|
WAIT: 1
S_MSG:4021|4021_17|9|1600|<=Prio_9_8=>|
WAIT: 1
S_MSG:4021|4021_18|9|1600|<=Prio_9_9=>|
WAIT: 1
S_MSG:4021|4021_19|9|1600|<=Prio_9_10=>|
WAIT: 1
S_MSG:4021|4021_1a|9|1600|<=Prio_9_11=>|
WAIT: 1
S_MSG:4021|4021_1b|9|1600|<=Prio_9_12=>|
WAIT: 1
S_MSG:4021|4021_1c|9|1600|<=Prio_9_13=>|
WAIT: 1
S_MSG:4021|4021_1d|9|1600|<=Prio_9_14=>|
WAIT: 1
S_MSG:4021|4021_1e|9|1600|<=Prio_9_15=>|
WAIT: 1
S_MSG:4021|4021_1f|9|1600|<=Prio_9_16=>|
WAIT: 1
S_MSG:4021|4021_1g|9|1600|<=Prio_9_17=>|
WAIT: 1
S_MSG:4021|4021_1h|9|1600|<=Prio_9_18=>|
WAIT: 1
RESTART:


