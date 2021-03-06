// Commands, syntax:
// STATUS:     = get status message
// S_MSG:      = setMsg <sip_id>|<a_msg_id>|<prio>|<ttl>|text|
// S_MSG_FILE: = setMsg <sip_id>|<a_msg_id>|<file>|  setMsg from <file>
// D_MSG:      = delMsg <sip_id>|<a_msg_id>
// POS_BLE:    = ble position req <sip_id>|
// POS_DECT:   = dect position req <sip_id>|
// WAIT:       = sleep <seconds>
// RESTART:    = start script again   
// END:        = end scenrio here
// 
// 
STATUS:
WAIT: 4
D_MSG:4021|4021_1|
WAIT: 4
S_MSG:4021|4021_1|7|180|<=Prio_7_1=>|
WAIT: 10
S_MSG:4021|4021_2|7|180|<=Prio_7_1=>|
WAIT: 40
END:



D_MSG:4021|4021_2|
WAIT: 10
END:



POS_DECT:4021|
S_MSG:4021|4021_1|7|180|<=Prio_7_1=>|
	
WAIT: 1
S_MSG:4021|4021_1|7|180|<=Prio_7_1=>|
WAIT: 10
S_MSG:4021|4021_1|7|180|<=Prio_7_1_update=>|
WAIT: 10
S_MSG:4021|4021_2|7|180|<=Prio_7_2=>|
WAIT: 10
D_MSG:4021|4021_1|
WAIT: 1
D_MSG:4021|4021_2|
WAIT: 5
END:

S_MSG:4020|4020_2|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4020|4020_3|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4020|4020_4|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4020|4020_5|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4020|4020_6|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4020|4020_7|9|9000|<=Prio_7_1=>|
WAIT: 1
WAIT: 1
S_MSG:4021|4021_1|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4021|4021_2|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4021|4021_3|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4021|4021_4|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4021|4021_5|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4021|4021_6|9|9000|<=Prio_7_1=>|
#WAIT: 1
#S_MSG:4021|4021_7|9|9000|<=Prio_7_1=>|
#WAIT: 1
WAIT: 1
S_MSG:4004|4004_1|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4004|4004_2|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4004|4004_3|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4004|4004_4|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4004|4004_5|9|9000|<=Prio_7_1=>|
WAIT: 1
#S_MSG:4004|4004_6|9|9000|<=Prio_7_1=>|
#WAIT: 1
#S_MSG:4004|4004_7|9|9000|<=Prio_7_1=>|
#WAIT: 1
WAIT: 1
S_MSG:4013|4013_1|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4013|4013_2|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4013|4013_3|9|9000|<=Prio_7_1=>|
WAIT: 1
S_MSG:4013|4013_4|9|9000|<=Prio_7_1=>|
WAIT: 1
#S_MSG:4013|4013_5|9|9000|<=Prio_7_1=>|
#WAIT: 1
#S_MSG:4013|4013_6|9|9000|<=Prio_7_1=>|
#WAIT: 1
#S_MSG:4013|4013_7|9|9000|<=Prio_7_1=>|
WAIT: 1
WAIT: 100
END:


D_MSG:4020|4020_1|
WAIT: 1
D_MSG:4020|4020_2|
WAIT: 1
D_MSG:4020|4020_3|
WAIT: 1
D_MSG:4020|4020_4|
WAIT: 1
D_MSG:4020|4020_5|
WAIT: 1
D_MSG:4020|4020_6|
WAIT: 1
D_MSG:4020|4020_7|
WAIT: 1
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
D_MSG:4004|4004_1|
WAIT: 1
D_MSG:4004|4004_2|
WAIT: 1
D_MSG:4004|4004_3|
WAIT: 1
D_MSG:4004|4004_4|
WAIT: 1
D_MSG:4004|4004_5|
WAIT: 1
D_MSG:4004|4004_6|
WAIT: 1
D_MSG:4004|4004_7|
WAIT: 1
D_MSG:4013|4013_1|
WAIT: 1
D_MSG:4013|4013_2|
WAIT: 1
D_MSG:4013|4013_3|
WAIT: 1
D_MSG:4013|4013_4|
WAIT: 1
D_MSG:4013|4013_5|
WAIT: 1
D_MSG:4013|4013_6|
WAIT: 1
D_MSG:4013|4013_7|
WAIT: 10
RESTART:



WAIT: 1
STATUS:
WAIT: 1
S_MSG_FILE:4021|4021_1|./sce/msg/tst_msg_my_bonny.json|
WAIT: 100
END:

S_MSG:4021|4021_1|2|600|<=Prio_7_1=>|


S_MSG_FILE:4021|4021_1|./sce/msg/tst_msg_my_bonny.json|
WAIT: 10
D_MSG:4021|4021_1|
WAIT: 10
END:
// next
S_MSG_FILE:4020|4020_1|tst_msg_my_bonny.json|
WAIT: 10
D_MSG:4020|4020_1|
WAIT: 10
// next
S_MSG_FILE:4013|4013_1|tst_msg_my_bonny.json|
WAIT: 10
D_MSG:4013|4013_1|
WAIT: 10
// next
S_MSG_FILE:4004|4004_1|tst_msg_my_bonny.json|
WAIT: 10
D_MSG:4004|4004_1|
WAIT: 10
// next
S_MSG_FILE:4011|4011_1|tst_msg_my_bonny.json|
WAIT: 10
D_MSG:4011|4011_1|
WAIT: 10
// next
S_MSG_FILE:4015|4015_1|tst_msg_my_bonny.json|
WAIT: 10
D_MSG:4015|4015_1|
WAIT: 10
RESTART:


WAIT: 1
STATUS:
WAIT: 1
S_MSG:4021|4021_1|2|600|<=Prio_7_1=>|
WAIT: 1
S_MSG:4021|4020_1|2|600|<=Prio_7_1=>|
WAIT: 1
S_MSG:4021|4004_1|2|600|<=Prio_7_1=>|
WAIT: 1
S_MSG:4021|4011_1|2|600|<=Prio_7_1=>|
WAIT: 1
S_MSG:4021|4015_1|2|600|<=Prio_7_1=>|
WAIT: 1
S_MSG:4021|4013_1|2|600|<=Prio_7_1=>|
WAIT: 1
S_MSG:4021|4021_2|2|600|<=Prio_6_1=>|
WAIT: 1
S_MSG:4021|4020_2|2|600|<=Prio_6_1=>|
WAIT: 1
S_MSG:4021|4004_2|2|600|<=Prio_6_1=>|
WAIT: 1
S_MSG:4021|4011_2|2|600|<=Prio_6_1=>|
WAIT: 1
S_MSG:4021|4015_2|2|600|<=Prio_6_1=>|
WAIT: 1
S_MSG:4021|4013_2|2|600|<=Prio_6_1=>|
WAIT: 1
S_MSG:4021|4021_3|2|600|<=Prio_5_1=>|
WAIT: 1
S_MSG:4021|4020_3|2|600|<=Prio_5_1=>|
WAIT: 1
S_MSG:4021|4004_3|2|600|<=Prio_5_1=>|
WAIT: 1
S_MSG:4021|4011_3|2|600|<=Prio_5_1=>|
WAIT: 1
S_MSG:4021|4015_3|2|600|<=Prio_5_1=>|
WAIT: 1
S_MSG:4021|4013_3|2|600|<=Prio_5_1=>|
WAIT: 1
S_MSG:4021|4021_4|2|600|<=Prio_4_1=>|
WAIT: 1
S_MSG:4021|4020_4|2|600|<=Prio_4_1=>|
WAIT: 1
S_MSG:4021|4004_4|2|600|<=Prio_4_1=>|
WAIT: 1
S_MSG:4021|4011_4|2|600|<=Prio_4_1=>|
WAIT: 1
S_MSG:4021|4015_4|2|600|<=Prio_4_1=>|
WAIT: 1
S_MSG:4021|4013_4|2|600|<=Prio_4_1=>|
WAIT: 1
S_MSG:4021|4021_5|2|600|<=Prio_3_1=>|
WAIT: 1
S_MSG:4021|4020_5|2|600|<=Prio_3_1=>|
WAIT: 1
S_MSG:4021|4004_5|2|600|<=Prio_3_1=>|
WAIT: 1
S_MSG:4021|4011_5|2|600|<=Prio_3_1=>|
WAIT: 1
S_MSG:4021|4015_5|2|600|<=Prio_3_1=>|
WAIT: 1
S_MSG:4021|4013_5|2|600|<=Prio_3_1=>|
WAIT: 1
S_MSG:4021|4021_6|2|600|<=Prio_2_1=>|
WAIT: 1
S_MSG:4021|4099_6|2|600|<=Prio_2_1=>|
WAIT: 1
S_MSG:4021|4004_6|2|600|<=Prio_2_1=>|
WAIT: 1
S_MSG:4021|4011_6|2|600|<=Prio_2_1=>|
WAIT: 1
S_MSG:4021|4015_6|2|600|<=Prio_2_1=>|
WAIT: 1
S_MSG:4021|4013_6|2|600|<=Prio_2_1=>|
WAIT: 1
RESTART:




S_MSG:4021|4021_2|9|600|<=Prio_6_2=>|
WAIT: 1
END:
S_MSG:4021|4021_2|6|600|<=Prio_6_2=>|
WAIT: 1
S_MSG:4021|4021_3|7|600|<=Prio_6_3=>|
WAIT: 1
S_MSG:4021|4021_4|7|600|<=Prio_6_4=>|
WAIT: 1
S_MSG:4021|4021_5|6|600|<=Prio_6_5=>|
WAIT: 1
S_MSG:4021|4021_6|6|600|<=Prio_6_6=>|
WAIT: 1
S_MSG:4021|4021_7|6|600|<=Prio_6_7=>|
WAIT: 100
END:



WAIT: 1
STATUS:
WAIT: 5
S_MSG:4021|4021_1|6|600|<=Prio_6_3=>|
S_MSG:4021|4020_1|6|600|<=Prio_6_3=>|
WAIT: 1
S_MSG:4021|4021_2|6|600|<=Prio_6_3=>|
S_MSG:4021|4020_2|6|600|<=Prio_6_3=>|
WAIT: 1
S_MSG:4021|4021_3|6|600|<=Prio_6_3=>|
S_MSG:4021|4020_3|6|600|<=Prio_6_3=>|
WAIT: 1
S_MSG:4021|4021_4|6|600|<=Prio_6_4=>|
S_MSG:4021|4020_4|6|600|<=Prio_6_4=>|
WAIT: 1
S_MSG:4021|4021_5|6|600|<=Prio_6_5=>|
S_MSG:4021|4020_5|6|600|<=Prio_6_5=>|
WAIT: 1
S_MSG:4021|4021_6|6|600|<=Prio_6_6=>|
S_MSG:4021|4020_6|6|600|<=Prio_6_6=>|
WAIT: 1
S_MSG:4021|4021_7|6|600|<=Prio_6_7=>|
S_MSG:4021|4020_7|6|600|<=Prio_6_7=>|
WAIT: 1
S_MSG:4021|4021_8|6|600|<=Prio_6_8=>|
S_MSG:4021|4020_8|6|600|<=Prio_6_8=>|
WAIT: 1
S_MSG:4021|4021_9|6|600|<=Prio_6_9=>|
S_MSG:4021|4020_9|6|600|<=Prio_6_9=>|
WAIT: 1
S_MSG:4021|4021_10|6|600|<=Prio_6_10=>|
S_MSG:4021|4020_10|6|600|<=Prio_6_10=>|
WAIT: 1
S_MSG:4021|4021_11|6|600|<=Prio_6_11=>|
S_MSG:4021|4020_11|6|600|<=Prio_6_11=>|
WAIT: 1
S_MSG:4021|4021_12|6|600|<=Prio_6_12=>|
S_MSG:4021|4020_12|6|600|<=Prio_6_12=>|
WAIT: 1
S_MSG:4021|4021_13|6|600|<=Prio_6_13=>|
S_MSG:4021|4020_13|6|600|<=Prio_6_13=>|
WAIT: 1
S_MSG:4021|4021_14|6|600|<=Prio_6_14=>|
S_MSG:4021|4020_14|6|600|<=Prio_6_14=>|
WAIT: 1
S_MSG:4021|4021_15|6|600|<=Prio_6_15=>|
S_MSG:4021|4020_15|6|600|<=Prio_6_15=>|
WAIT: 1
S_MSG:4021|4021_16|6|600|<=Prio_6_16=>|
S_MSG:4021|4020_16|6|600|<=Prio_6_16=>|
WAIT: 1
S_MSG:4021|4021_17|6|600|<=Prio_6_17=>|
S_MSG:4021|4020_17|6|600|<=Prio_6_17=>|
WAIT: 11
S_MSG:4021|4021_18|6|600|<=Prio_6_18=>|
S_MSG:4021|4020_18|6|600|<=Prio_6_18=>|
WAIT: 1
S_MSG:4021|4021_19|6|600|<=Prio_6_19=>|
S_MSG:4021|4020_19|6|600|<=Prio_6_19=>|
WAIT: 1
S_MSG:4021|4021_20|6|600|<=Prio_6_20=>|
S_MSG:4021|4020_20|6|600|<=Prio_6_20=>|
WAIT: 1
S_MSG:4021|4021_21|6|600|<=Prio_6_21=>|
S_MSG:4021|4020_21|6|600|<=Prio_6_21=>|
WAIT: 1
S_MSG:4021|4021_22|6|600|<=Prio_6_22=>|
S_MSG:4021|4020_22|6|600|<=Prio_6_22=>|
WAIT: 1
S_MSG:4021|4021_23|6|600|<=Prio_6_23=>|
S_MSG:4021|4020_23|6|600|<=Prio_6_23=>|
WAIT: 1
S_MSG:4021|4021_24|6|600|<=Prio_6_24=>|
S_MSG:4021|4020_24|6|600|<=Prio_6_24=>|
WAIT: 1
S_MSG:4021|4021_26|6|600|<=Prio_6_26=>|
S_MSG:4021|4020_26|6|600|<=Prio_6_26=>|
WAIT: 1
S_MSG:4021|4021_27|6|600|<=Prio_6_27=>|
S_MSG:4021|4020_27|6|600|<=Prio_6_27=>|
WAIT: 10
RESTART:

END:
S_MSG:4021|4021_2|7|180|<=Prio_7_2=>|
WAIT: 10
END:

S_MSG:4020|4020_1|6|180|<=Prio_6_1=>|
WAIT: 10
S_MSG:4004|4004_1|6|180|<=Prio_6_1=>|
WAIT: 10
S_MSG:4011|4011_1|6|180|<=Prio_6_1=>|
WAIT: 10
D_MSG:4021|4021_1|
WAIT: 10
D_MSG:4020|4020_1|
WAIT: 10
D_MSG:4004|4004_1|
WAIT: 10
D_MSG:4011|4011_1|
WAIT: 10
S_MSG:4021|4021_1|5|180|<=Prio_6_1=>|
WAIT: 10
S_MSG:4020|4020_1|5|180|<=Prio_6_1=>|
WAIT: 10
S_MSG:4004|4004_1|5|180|<=Prio_6_1=>|
WAIT: 10
S_MSG:4011|4011_1|5|180|<=Prio_6_1=>|
WAIT: 10
D_MSG:4021|4021_1|
WAIT: 10
D_MSG:4020|4020_1|
WAIT: 10
D_MSG:4004|4004_1|
WAIT: 10
D_MSG:4011|4011_1|
WAIT: 10
RESTART:


S_MSG:4021|4021_2|7|600|<=Prio_7_2=>|
WAIT: 10
D_MSG:4021|4021_1|
END:


WAIT: 1
S_MSG:4021|4021_2|9|600|<=Prio_9_2=>|
WAIT: 1
S_MSG:4021|4021_3|9|600|<=Prio_9_3=>|
END:

S_MSG:4021|4021_1|6|600|<=Prio6 _1=>|
END:
S_MSG:4021|4021_2|9|600|<=Prio9 _2=>|
WAIT:1
S_MSG:4021|4021_3|9|600|<=Prio9 _3=>|
WAIT:1
S_MSG:4021|4021_4|9|600|<=Prio9 _3=>|
END:
S_MSG:4021|4020_2|8|10|<=2=>|
WAIT:10
S_MSG:4021|4021_3|7|600|<=3=>|
WAIT:10
S_MSG:4021|4021_4|6|600|<=4=>|
WAIT:10
S_MSG:4021|4021_5|5|600|<=5=>|
WAIT:10
S_MSG:4021|4021_6|4|600|<=6=>|
WAIT:10
S_MSG:4021|4021_7|3|600|<=7=>|
WAIT:10
S_MSG:4021|4021_8|2|600|<=8=>|
WAIT:10
S_MSG:4021|4021_9|1|600|<=9=>|
WAIT:10
S_MSG:4021|4021_10|9|600|<=10=>|
WAIT:180
RESTART:

