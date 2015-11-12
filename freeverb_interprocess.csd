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
form size(575, 370), caption("freeverb"), pluginID("ifvb")
;image bounds(0, 0, 575, 370), file("background.jpg"), shape("round")
label text("port"), bounds(10, 10, 80, 12), identchannel("port_id")

groupbox bounds(5, 30, 564, 81), plant("plant_inlevel"), linethickness("0"){ 
combobox channel("source1_inlevel"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_inlevel"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_inlevel"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_inlevel"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_inlevel"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_inlevel"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_inlevel"), range(-5.0, 5.0, 0)

combobox channel("source2_inlevel"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
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

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_inlevel"), range(0, 1.0, 1.0, 0.3, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_inlevel"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("inlevel"), channel("inlevel"), range(0, 1.0, 1.0, 0.3, 0.01)
}

groupbox bounds(5, 115, 564, 81), plant("plant_reverbtime"), linethickness("0"){ 
combobox channel("source1_reverbtime"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_reverbtime"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_reverbtime"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_reverbtime"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_reverbtime"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_reverbtime"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_reverbtime"), range(-5.0, 5.0, 0)

combobox channel("source2_reverbtime"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_reverbtime"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_reverbtime"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_reverbtime"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_reverbtime"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_reverbtime"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_reverbtime"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_reverbtime"), range(0.0, 8.0, 1.5, 0.4, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_reverbtime"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("reverbtime"), channel("reverbtime"), range(0.0, 8.0, 1.5, 0.4, 0.01)
}

groupbox bounds(5, 200, 564, 81), plant("plant_reverbdamp"), linethickness("0"){ 
combobox channel("source1_reverbdamp"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_reverbdamp"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_reverbdamp"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_reverbdamp"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_reverbdamp"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_reverbdamp"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_reverbdamp"), range(-5.0, 5.0, 0)

combobox channel("source2_reverbdamp"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_reverbdamp"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_reverbdamp"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_reverbdamp"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_reverbdamp"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_reverbdamp"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_reverbdamp"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_reverbdamp"), range(0.0, 1.0, 0.25, 0.6, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_reverbdamp"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("reverbdamp"), channel("reverbdamp"), range(0.0, 1.0, 0.25, 0.6, 0.01)
}

groupbox bounds(5, 285, 564, 81), plant("plant_reverbmix"), linethickness("0"){ 
combobox channel("source1_reverbmix"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_reverbmix"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_reverbmix"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_reverbmix"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_reverbmix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_reverbmix"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_reverbmix"), range(-5.0, 5.0, 0)

combobox channel("source2_reverbmix"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_reverbmix"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_reverbmix"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_reverbmix"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_reverbmix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_reverbmix"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_reverbmix"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_reverbmix"), range(0.0, 1.0, 0.7, 1, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_reverbmix"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("reverbmix"), channel("reverbmix"), range(0.0, 1.0, 0.7, 1, 0.01)
}

;next x position available below plants is 370
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
	giRevbSize	ftgen	0, 0, 8192, 27, \
						0, 	0,	\
						600,	0.0,	\
						700, 	0.1,	\
						800,	0.3,	\
						1000,	0.5,	\
						1200,	0.6,	\
						1500,	0.7,	\
						1800,	0.75,	\
						2000,	0.8,	\
						2300,	0.825,	\
						2400,	0.85,	\
						2900,	0.875,	\
						3600,	0.9,	\
						3800,	0.925,	\
						4600,	0.95,	\
						6000,	0.975,	\
						7000,	0.99,	\
						8000,	0.999,	\
						8192,	0.999

        gkhandle init -1
        gkport init -1

        ; list of source channels, used for checking which signals we are currently listening to
        giSourceActive  ftgen 0, 0, 32, 2, 0    ; store the channel numbers (analysis instances) currently listened to

#include "freeverb_parameter_ranges.inc"            ; instr 1

#include "subscriber_connect.inc"                   ; instr 2,3
#include "subscriber_receiver.inc"                  ; instr 4,5,6,7,8

;***************************************************
; freeverb instrument
;***************************************************
	instr	99

	a1,a2		inch 1,2  			; read audio
	a1              = a1+a2
	a2              = a1+a2
; freeverb
	kRevTime	chnget "reverbtime"
	kRoomSize	table kRevTime*1000, giRevbSize
	kHFDamp		chnget "reverbdamp"
	kinLevel		chnget "inlevel"
	kmix            chnget "reverbmix"
	amix            = interp(kmix)
	aoutLevel	= interp(ampdbfs(-kRevTime*0.3))	; slightly lower output for longer reverb (as the reverb algorithm will naturally be louder with more feedback)

	aoutL, aoutR    freeverb a1*kinLevel*amix, a2*kinLevel*amix, kRoomSize, kHFDamp	
	aoutL	        dcblock aoutL*aoutLevel
	aoutR	        dcblock aoutR*aoutLevel
        aoutL           = (a1*(1-amix))+(aoutL*1.8)
        aoutR           = (a2*(1-amix))+(aoutR*1.8)

; audio out
	outs		aoutL, aoutR
	endin

</CsInstruments>
<CsScore>
f0 0.1 ; workaround so that the host VST scanning will not fail upon trying to open the same network port in several plugins
s
#define SCORELEN #86400#
i1      0.1     1               ; init arrays
i2	0.1	$SCORELEN
#include "freeverb_score_events.inc"
i99     0       $SCORELEN       ; effect
e
</CsScore>
</CsoundSynthesizer>

