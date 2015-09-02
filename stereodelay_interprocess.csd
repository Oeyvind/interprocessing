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
form size(575, 375), caption("StereoDelay_interprocessing"), pluginID("isdl")
image bounds(0, 0, 575, 375), file("background.jpg"), shape("round")
label text("port"), bounds(10, 10, 80, 12), identchannel("port_id")

groupbox bounds(5, 30, 564, 81), plant("plant_delaytime"), linethickness("0"){ 
combobox channel("source1_delaytime"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_delaytime"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_delaytime"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_delaytime"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_delaytime"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_delaytime"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_delaytime"), range(-5.0, 5.0, 0)

combobox channel("source2_delaytime"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_delaytime"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_delaytime"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_delaytime"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_delaytime"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_delaytime"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_delaytime"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_delaytime"), range(0.0008, 2.0, 0.5, 0.25, 1e-05) 
combobox bounds(433, 1, 55, 12), channel("offsetx_delaytime"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("delaytime"), channel("delaytime"), range(0.0008, 2.0, 0.5, 0.25, 1e-05)
}

groupbox bounds(5, 115, 564, 81), plant("plant_filt_fq"), linethickness("0"){ 
combobox channel("source1_filt_fq"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_filt_fq"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_filt_fq"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_filt_fq"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_filt_fq"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_filt_fq"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_filt_fq"), range(-5.0, 5.0, 0)

combobox channel("source2_filt_fq"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
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

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_filt_fq"), range(100, 10000, 1000, 0.35, 1) 
combobox bounds(433, 1, 55, 12), channel("offsetx_filt_fq"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("filt_fq"), channel("filt_fq"), range(100, 10000, 1000, 0.35, 1)
}

groupbox bounds(5, 200, 564, 81), plant("plant_feedback"), linethickness("0"){ 
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

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_feedback"), range(0.0, 0.9999, 0.3, 1.9, 0.0001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_feedback"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("feedback"), channel("feedback"), range(0.0, 0.9999, 0.3, 1.9, 0.0001)
}

;next x position available below plants is 285

combobox channel("delayconfig"), caption("DlyConfig"), bounds(5, 300, 60, 60), items("1", "2", "3", "4"), value(1)
rslider bounds(80, 300, 70, 70), text("mix"), channel("mix"), range(0.0, 1.0, 0.9) 
rslider bounds(160, 300, 70, 70), text("vol"), channel("vol"), range(0.0, 1.0, 1.0) 

;csoundoutput bounds(5,400, 564, 200), text("Output")

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

#include "stereodelay_parameter_ranges.inc"         ; instr 1
#include "subscriber_connect.inc"                   ; instr 2,3
#include "subscriber_receiver.inc"                  ; instr 4,5,6,7,8



;****************************************************************
; Stereo Delay
;****************************************************************
	instr 99

	a1,a0		ins	
	kinlevl		= 1
	a1		= a1 *kinlevl

	kbpm		chnget "HOST_BPM"			; host tempo bpm
	if kbpm < 1 then
	kbpm = 130
	endif
	kbpm = 120
	kbpm_cps	= kbpm/60			; host tempo as cps

	imaxdel		= 14					; maximum delay time
	kDlytim		chnget "delaytime"			; Delay time, relative to host tempo
	kbtpo		= kDlytim * 1/kbpm_cps			; basic tempo unit for delay time, follow hosttempo
	kDlyConf	chnget "delayconfig"			; stereo delay config
	kfblevl		chnget "feedback"			; delay feedback
	kfblevl		tonek kfblevl, 2
	kffrq1		chnget "filt_fq"			; feedback filter freq
	kffrq1		tonek kffrq1, 2
	klfo		oscil kffrq1*0.2, kbpm_cps*0.25, giSine	; filter lfo
	kffrq		= kffrq1 + klfo
	kMix		chnget "mix"				; wet/dry
	kMix		tonek kMix, 2
	kVol		chnget "vol"
	kVol		tonek kVol, 2

kDlyConf init 1
kDlyConf	= round(kDlyConf)
if kDlyConf == 1 kgoto dlyconfig1
if kDlyConf == 2 kgoto dlyconfig2
if kDlyConf == 3 kgoto dlyconfig3
if kDlyConf == 4 kgoto dlyconfig4

dlyconfig1:
	ksubL		= 1
	ksubR		= 1.01
goto contin
dlyconfig2:
	ksubL		= 1
	ksubR		= 1.33333	; 4/3
goto contin
dlyconfig3:
	ksubL		= 1
	ksubR		= 1.5		; 2/3
goto contin
dlyconfig4:
	ksubL		= 2
	ksubR		= 1.25		; 8/5
contin: 

	kdeltL		= kbtpo / ksubL		; calculate subdivision 
	kdeltR		= kbtpo / ksubR		; calculate subdivision 
	kdeltL		limit	kdeltL, 1/kr, imaxdel
	kdeltR		limit	kdeltR, 1/kr, imaxdel

	adeltL		upsamp 	kdeltL				; smoothing
	adeltR		upsamp 	kdeltR				; smoothing
	adeltL		tone	adeltL, 2			; smoothing
	adeltR		tone	adeltR, 2			; smoothing

	adummy		delayr imaxdel				; establish delay line
	aDlyL		deltapi adeltL 				; tap delay Left
	adelwL		= a1 + (aDlyL*kfblevl)			; mix input and feedback
	adelwL		butterlp adelwL, kffrq			; filter delay signal
			delayw	adelwL				; write source to delay line

	adummy		delayr imaxdel				; establish delay line
	aDlyR		deltapi adeltR				; tap delay Right
	adelwR		= a1 + (aDlyR*kfblevl)			; mix input and feedback
	adelwR		butterlp adelwR, kffrq			; filter delay signal
			delayw	adelwR				; write source to delay line

	aL		dcblock2 (aDlyL*kMix)+(a1*(1-kMix))
	aR		dcblock2 (aDlyR*kMix)+(a1*(1-kMix))
			outs aL*kVol, aR*kVol

	endin

</CsInstruments>
<CsScore>
f0 0.1 ; workaround so that the host VST scanning will not fail upon trying to open the same network port in several plugins
s
#define SCORELEN #86400#
i1      0.1     1               ; init arrays
i2	0.1	$SCORELEN
#include "stereodelay_score_events.inc"
i99     0       $SCORELEN       ; effect
e
</CsScore>
</CsoundSynthesizer>

