        ichan           chnget "chan"
 	ibaseport	= 7001
        SoscName        sprintf {{/%s%i}}, "analysis", ichan
	kwhen           init 0
	kwhen           = (kwhen+1)%2   ; send on every k-rate period
#define PUBLISH(N) #
	iport$N.	= ibaseport + $N.
        OSCsend         kwhen, "127.0.0.1", iport$N., SoscName, "ffffffffffffffff", krms, krms_preEq, kcps_n, kpitch_n, kcentroid_n, kspread_n, kskewness_n, kurtosis_n, kflatness, kcrest_n, kflux_n, kamp_trans, kcentr_trans, kkurt_trans, kpitchup_trans, kpitchdwn_trans

#
$PUBLISH(0)
$PUBLISH(1)
$PUBLISH(2)
$PUBLISH(3)
$PUBLISH(4)
$PUBLISH(5)
$PUBLISH(6)
$PUBLISH(7)
$PUBLISH(8)
$PUBLISH(9)
        
        