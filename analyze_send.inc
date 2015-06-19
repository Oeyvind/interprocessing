;    Copyright 2015 Oeyvind Brandtsegg 
;
;    This file is part of the Signal Interaction Toolkit
;
;    The Signal Interaction Toolkit is free software: you can redistribute it and/or modify
;    it under the terms of the GNU General Public License version 3 
;    as published by the Free Software Foundation.
;
;    The Signal Interaction Toolkit is distributed in the hope that it will be useful,
;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;    GNU General Public License for more details.
;
;    You should have received a copy of the GNU General Public License
;    along with The Signal Interaction Toolkit.  
;    If not, see <http://www.gnu.org/licenses/>.

        ichan           chnget "chan"
 	ibaseport	= 7001
        SoscName        sprintf {{/%s%i}}, "analysis", ichan
	kwhen           init 0
	kwhen           = (kwhen+1)%2   ; send on every k-rate period
#define PUBLISH(N) #
	iport$N.	= ibaseport + $N.
        OSCsend         kwhen, "127.0.0.1", iport$N., SoscName, "fffffffffffffffff", krms, krms_preEq, kcps_n, kpitch_n, kcentroid_n, kspread_n, kskewness_n, kurtosis_n, kflatness, kcrest_n, kflux_n, kamp_trans, kcentr_trans, kkurt_trans, kpitchup_trans, kpitchdwn_trans, kcps ; (the kcps value is raw, not normalized!)

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
        
        