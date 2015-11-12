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

<Cabbage>
form size(675, 455), caption("Mincer Time2"), pluginID("min2")
;image bounds(0, 0, 575, 455), file("background.jpg"), shape("round")
label text("port"), bounds(10, 10, 80, 12), identchannel("port_id")

groupbox bounds(5, 30, 564, 81), plant("plant_inlevel"), linethickness("0"){ 
combobox channel("source1_inlevel"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_inlevel"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_inlevel"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_inlevel"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_inlevel"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_inlevel"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_inlevel"), range(-5.0, 5.0, 0)

combobox channel("source2_inlevel"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_inlevel"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_inlevel"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_inlevel"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_inlevel"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_inlevel"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_inlevel"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_inlevel"), range(0, 1.0, 1, 0.3, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_inlevel"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("inlevel"), channel("inlevel"), range(0, 1.0, 1, 0.3, 0.01)
}

groupbox bounds(5, 115, 564, 81), plant("plant_timpoint"), linethickness("0"){ 
combobox channel("source1_timpoint"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_timpoint"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_timpoint"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_timpoint"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_timpoint"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_timpoint"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_timpoint"), range(-5.0, 5.0, 0)

combobox channel("source2_timpoint"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_timpoint"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_timpoint"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_timpoint"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_timpoint"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_timpoint"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_timpoint"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_timpoint"), range(0, 0.99, 0.1, 0.4, 0.001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_timpoint"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("timpoint"), channel("timpoint"), range(0, 0.99, 0.1, 0.4, 0.001)
}

rslider bounds(580, 123, 66, 66), text("timpoint1"), channel("timpoint1"), range(0, 0.99, 0.1, 1, 0.001)

groupbox bounds(5, 200, 564, 81), plant("plant_pitch"), linethickness("0"){ 
combobox channel("source1_pitch"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_pitch"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_pitch"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_pitch"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_pitch"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_pitch"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_pitch"), range(-5.0, 5.0, 0)

combobox channel("source2_pitch"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_pitch"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_pitch"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_pitch"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_pitch"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_pitch"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_pitch"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_pitch"), range(0.0, 2.0, 1.0, 1, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_pitch"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("pitch"), channel("pitch"), range(0.0, 2.0, 1.0, 1, 0.01)
}

groupbox bounds(5, 285, 564, 81), plant("plant_feedback"), linethickness("0"){ 
combobox channel("source1_feedback"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_feedback"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_feedback"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_feedback"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_feedback"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_feedback"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_feedback"), range(-5.0, 5.0, 0)

combobox channel("source2_feedback"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_feedback"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_feedback"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_feedback"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_feedback"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_feedback"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_feedback"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_feedback"), range(0.0, 1.0, 0.0, 1, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_feedback"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("feedback"), channel("feedback"), range(0.0, 1.0, 0.0, 1, 0.01)
}

groupbox bounds(5, 370, 564, 81), plant("plant_mix"), linethickness("0"){ 
combobox channel("source1_mix"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_mix"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_mix"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_mix"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_mix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_mix"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_mix"), range(-5.0, 5.0, 0)

combobox channel("source2_mix"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_mix"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_mix"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_mix"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_mix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_mix"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_mix"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_mix"), range(0, 1.0, 1, 0.3, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_mix"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("mix"), channel("mix"), range(0, 1.0, 1, 0.3, 0.01)
}

;next x position available below plants is 455
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d
</CsOptions>
<CsInstruments>

        sr = 48000
	ksmps = 64
	nchnls = 2
	0dbfs = 1

	giSine	ftgen	0, 0, 65536, 10, 1			; sine wave
        gkhandle init -1
        gkport init -1

        ; list of source channels, used for checking which signals we are currently listening to
        giSourceActive  ftgen 0, 0, 32, 2, 0    ; store the channel numbers (analysis instances) currently listened to

	; live input buffer table for granular effects processing
	giLiveFeedLen		= 524288
	giLiveFeedLenSec	= giLiveFeedLen/sr
	giLiveFeed		ftgen	0, 0, giLiveFeedLen+1, 2, 0				; create empty buffer for live input

#include "mincertime_parameter_ranges.inc"            ; instr 1

#include "subscriber_connect.inc"                   ; instr 2,3
#include "subscriber_receiver.inc"                  ; instr 4,5,6,7,8

;***************************************************
;record input to buffer
;***************************************************
	instr 98

	a1	inch	1					; signal input
	
	aFeed	chnget	"afeedback"			        ; feedback from audio output
	kFeed	chnget "feedback"				; feedback gain
        kinlev  chnget "inlevel"
	a1	= (a1*kinlev) + (aFeed*kFeed)		        ; mix feedback with live input

; write audio to table
	iAudioTable	= giLiveFeed
	iLength		= ftlen(iAudioTable)
	gkstartFollow	tablewa	iAudioTable, a1, 0      				; write audio a1 to table 
	gkstartFollow	= (gkstartFollow > (giLiveFeedLen-1) ? 0 : gkstartFollow)	; reset kstart when table is full
			tablegpw iAudioTable                                            ; update table guard point (for interpolation)
			chnset	gkstartFollow, "kstartFollow"				; output the buffer position to chn

	endin

;***************************************************
;mincer stretch
;***************************************************
        instr 99
        ifftsize        = 1024
        ktimptM chnget "timpoint"
        ktimptM_old     init 0
        ktimpt1         init 0
        ktimpt_slope    init 0
        ktimpt_slope    = (ktimptM-ktimptM_old != 0 ? ktimptM-ktimptM_old : ktimpt_slope)
     ;   ktimpt1         limit ktimpt1+(ktimpt_slope/(kr*4)), 0, 1
        ;printk2 ktimpt_slope
        kfallspeed      = 5
        if ktimptM == 0 then 
        ktimpt1         = ktimpt1*0.99
        else
        ktimpt1         limit (ktimpt_slope>0 ? ktimpt1 + (ktimptM/(kr)):ktimpt1 + kfallspeed*(1-ktimptM)*(ktimpt_slope/(kr))), 0, 1
        endif
        ktimptM_old     = ktimptM
;        ktimpt1         limit (ktimpt1 + (ktimptM/(kr*giLiveFeedLenSec)))*ktimptM*1/ktimptM, 0, 1
/*
        ktimpt1         limit (ktimpt1 + (ktimptM/(kr)))*ktimptM*1/ktimptM, 0, 1
        krise	        = 0.0000001
        kfall	        = 0.0000001
        krise           limit krise, 1/kr, 10
        kfall           limit kfall, 1/kr, 10
        kA              = 0.001^(1/(krise*kr))
        kB              = 0.001^(1/(kfall*kr))
        kfilt           init 0
        ktimpnt2        init 0
        ; if value increase: increment, else decrement
        kfilt           = (ktimpt1>ktimpnt2?(ktimpt1+(kA*(ktimpnt2-ktimpt1))):(ktimpt1+(kB*(ktimpnt2-ktimpt1))))
        ktimpnt2        = ktimpt1
        ktimpt1         = kfilt
*/
                                                  chnset ktimpt1, "timpoint1"
                         
        kpitch  chnget "pitch"
        ktimpt phasor 1/giLiveFeedLenSec
        ;kdev    rnd31 0.001, 1
        ;kdev    butterlp kdev, 5
        ;ktimpt1 limit ktimpt1 + kdev, 0, 1
        atimpt  interp (-ktimpt1*giLiveFeedLenSec)+(gkstartFollow/sr)-((ifftsize/sr)*kpitch)
        klock   = 1
        a1 mincer atimpt, 1, kpitch, giLiveFeed, klock, ifftsize
                chnset a1, "afeedback"
        kmix	chnget "mix"	                
        aclean  inch	1		        ; clean input
        a1      = (a1*kmix)+(aclean*(1-kmix))
		outs a1, a1
endin


</CsInstruments>
<CsScore>
f0 0.1 ; workaround so that the host VST scanning will not fail upon trying to open the same network port in several plugins
s
#define SCORELEN #86400#
i1      0.1     1               ; init arrays
i2	0.1	$SCORELEN
;#include "mincertime_score_events.inc"
i98     0       $SCORELEN       ; record to buffer
i99     0       $SCORELEN       ; mincer
e
</CsScore>
</CsoundSynthesizer>

