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
form size(575, 455), caption("Pluck_interprocessing"), pluginID("isdl")
;image bounds(0, 0, 575, 455), file("background.jpg"), shape("round")
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

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_inlevel"), range(0, 1.0, 1, 0.3, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_inlevel"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("inlevel"), channel("inlevel"), range(0, 1.0, 1, 0.3, 0.01)
}

groupbox bounds(5, 115, 564, 81), plant("plant_freq"), linethickness("0"){ 
combobox channel("source1_freq"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_freq"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_freq"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_freq"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_freq"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_freq"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_freq"), range(-5.0, 5.0, 0)

combobox channel("source2_freq"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_freq"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_freq"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_freq"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_freq"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_freq"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_freq"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_freq"), range(1, 1450, 400, 0.3, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_freq"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("freq"), channel("freq"), range(1, 1450, 400, 0.3, 0.01)
}

groupbox bounds(5, 200, 564, 81), plant("plant_filt_fq"), linethickness("0"){ 
combobox channel("source1_filt_fq"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_filt_fq"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_filt_fq"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_filt_fq"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_filt_fq"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_filt_fq"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_filt_fq"), range(-5.0, 5.0, 0)

combobox channel("source2_filt_fq"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_filt_fq"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_filt_fq"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_filt_fq"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_filt_fq"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_filt_fq"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_filt_fq"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_filt_fq"), range(1000, 16000, 7000, 0.35, 1) 
combobox bounds(433, 1, 55, 12), channel("offsetx_filt_fq"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("filt_fq"), channel("filt_fq"), range(1000, 16000, 7000, 0.35, 1)
}

groupbox bounds(5, 285, 564, 81), plant("plant_feedback"), linethickness("0"){ 
combobox channel("source1_feedback"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_feedback"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_feedback"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_feedback"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_feedback"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_feedback"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_feedback"), range(-5.0, 5.0, 0)

combobox channel("source2_feedback"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
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

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_feedback"), range(0.8, 0.9999, 0.95, 1.9, 0.0001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_feedback"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("feedback"), channel("feedback"), range(0.8, 0.9999, 0.95, 1.9, 0.0001)
}

groupbox bounds(5, 370, 564, 81), plant("plant_mix"), linethickness("0"){ 
combobox channel("source1_mix"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_mix"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_mix"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_mix"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_mix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_mix"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_mix"), range(-5.0, 5.0, 0)

combobox channel("source2_mix"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
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
	ksmps = 32
	nchnls = 2
	0dbfs = 1

	giSine	ftgen	0, 0, 65536, 10, 1			; sine wave
        gkhandle init -1
        gkport init -1

        ; list of source channels, used for checking which signals we are currently listening to
        giSourceActive  ftgen 0, 0, 32, 2, 0    ; store the channel numbers (analysis instances) currently listened to

#include "pluck_parameter_ranges.inc"         ; instr 1
#include "subscriber_connect.inc"                   ; instr 2,3
#include "subscriber_receiver.inc"                  ; instr 4,5,6,7,8



;****************************************************************
; Pluck
;****************************************************************
	instr 99

	a1,a0		ins	
	kinlevel	chnget "inlevel"
	a1		= a1 * interp(kinlevel)

	imaxdel		= 1					; maximum delay time
	kfreq		chnget "freq"
	kfeed		chnget "feedback"			; delay feedback
	kfilt_fq	chnget "filt_fq"			; feedback filter freq
	kmix		chnget "mix"				; wet/dry
        
  	adly 		wguide1 a1, kfreq, kfilt_fq, kfeed

	aout		dcblock2 (adly*interp(kmix))+(a1*(1-interp(kmix)))
			outs aout, aout

	endin

</CsInstruments>
<CsScore>
f0 0.1 ; workaround so that the host VST scanning will not fail upon trying to open the same network port in several plugins
s
#define SCORELEN #86400#
i1      0.1     1               ; init arrays
i2	0.1	$SCORELEN
#include "pluck_score_events.inc"
i99     0       $SCORELEN       ; effect
e
</CsScore>
</CsoundSynthesizer>

