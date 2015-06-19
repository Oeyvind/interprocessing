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
form size(575, 625), caption("SCreverb_interprocessing"), pluginID("iscr")
image bounds(0, 0, 575, 625), file("background.jpg"), shape("round")
label text("port"), bounds(10, 10, 80, 12), identchannel("port_id")

groupbox bounds(5, 30, 564, 81), plant("plant_InLevel"), lgroupbox bounds(5, 30, 564, 81), plant("plant_InLevel"), linethickness("0"){ 
combobox channel("source1_InLevel"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_InLevel"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_InLevel"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_InLevel"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_InLevel"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_InLevel"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_InLevel"), range(-5.0, 5.0, 0)

combobox channel("source2_InLevel"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_InLevel"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_InLevel"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_InLevel"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_InLevel"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_InLevel"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_InLevel"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_InLevel"), range(0, 1.0, 0.2, 0.3, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_InLevel"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("InLevel"), channel("InLevel"), range(0, 1.0, 0.2, 0.3, 0.01)
}

groupbox bounds(5, 115, 564, 81), plant("plant_Feed"), linethickness("0"){ 
combobox channel("source1_Feed"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_Feed"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_Feed"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_Feed"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_Feed"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_Feed"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_Feed"), range(-5.0, 5.0, 0)

combobox channel("source2_Feed"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_Feed"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_Feed"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_Feed"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_Feed"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_Feed"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_Feed"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_Feed"), range(0.0, 1.0, 0.85, 1.2, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_Feed"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("Feed"), channel("Feed"), range(0.0, 1.0, 0.85, 1.2, 0.01)
}

groupbox bounds(5, 200, 564, 81), plant("plant_FiltFq"), linethickness("0"){ 
combobox channel("source1_FiltFq"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_FiltFq"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_FiltFq"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_FiltFq"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_FiltFq"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_FiltFq"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_FiltFq"), range(-5.0, 5.0, 0)

combobox channel("source2_FiltFq"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_FiltFq"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_FiltFq"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_FiltFq"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_FiltFq"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_FiltFq"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_FiltFq"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_FiltFq"), range(100, 14000, 7000, 0.6, 1) 
combobox bounds(433, 1, 55, 12), channel("offsetx_FiltFq"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("FiltFq"), channel("FiltFq"), range(100, 14000, 7000, 0.6, 1)
}

groupbox bounds(5, 285, 564, 81), plant("plant_PitchMod"), linethickness("0"){ 
combobox channel("source1_PitchMod"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_PitchMod"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_PitchMod"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_PitchMod"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_PitchMod"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_PitchMod"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_PitchMod"), range(-5.0, 5.0, 0)

combobox channel("source2_PitchMod"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_PitchMod"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_PitchMod"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_PitchMod"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_PitchMod"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_PitchMod"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_PitchMod"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_PitchMod"), range(0.0, 4.0, 0.9, 1, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_PitchMod"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("PitchMod"), channel("PitchMod"), range(0.0, 4.0, 0.9, 1, 0.01)
}

groupbox bounds(5, 370, 564, 81), plant("plant_PreDly"), linethickness("0"){ 
combobox channel("source1_PreDly"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_PreDly"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_PreDly"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_PreDly"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_PreDly"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_PreDly"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_PreDly"), range(-5.0, 5.0, 0)

combobox channel("source2_PreDly"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_PreDly"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_PreDly"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_PreDly"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_PreDly"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_PreDly"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_PreDly"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_PreDly"), range(0.0, 500, 120, 1, 1) 
combobox bounds(433, 1, 55, 12), channel("offsetx_PreDly"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("PreDly"), channel("PreDly"), range(0.0, 500, 120, 1, 1)
}

groupbox bounds(5, 455, 564, 81), plant("plant_LfRoll"), linethickness("0"){ 
combobox channel("source1_LfRoll"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_LfRoll"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_LfRoll"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_LfRoll"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_LfRoll"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_LfRoll"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_LfRoll"), range(-5.0, 5.0, 0)

combobox channel("source2_LfRoll"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_LfRoll"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_LfRoll"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_LfRoll"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_LfRoll"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_LfRoll"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_LfRoll"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_LfRoll"), range(20, 500, 90, 1, 1) 
combobox bounds(433, 1, 55, 12), channel("offsetx_LfRoll"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("LfRoll"), channel("LfRoll"), range(20, 500, 90, 1, 1)
}

groupbox bounds(5, 540, 564, 81), plant("plant_Mix"), linethickness("0"){ 
combobox channel("source1_Mix"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_Mix"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_Mix"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_Mix"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_Mix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_Mix"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_Mix"), range(-5.0, 5.0, 0)

combobox channel("source2_Mix"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_Mix"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_Mix"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_Mix"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_Mix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_Mix"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_Mix"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_Mix"), range(0.0, 1.0, 1.0, 1, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_Mix"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("Mix"), channel("Mix"), range(0.0, 1.0, 1.0, 1, 0.01)
}

;next x position available below plants is 625
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

#include "screverb_parameter_ranges.inc"            ; instr 1
#include "subscriber_connect.inc"                   ; instr 2,3
#include "subscriber_receiver.inc"                  ; instr 4,5,6,7,8

;****************************************************************
; Waveguide/FDN reverb instr
;****************************************************************

; 8 delay line FDN reverb, with feedback matrix based upon 
; physical modeling scattering junction of 8 lossless waveguides
; of equal characteristic impedance. Based on Julius O. Smith III, 
; "A New Approach to Digital Reverberation using Closed Waveguide
; Networks," Proceedings of the International Computer Music 
; Conference 1985, p. 47-53 (also available as a seperate
; publication from CCRMA), as well as some more recent papers by
; Smith and others.
;
; Coded by Sean Costello, October 1999.
; Small modifications by Oeyvind Brandtsegg, 2001.

	instr 99        

	a1,a0		ins	
        kinlev          chnget "InLevel"
        a1              = a1*interp(kinlev)
        kpre	        chnget "PreDly"	                ; predelay is in millisecs
        a1	        vdelay	a1, kpre, 1000		; Pre Delay

        inlevl	        = 0.7				; input level
        ioutlevl        = 0.7				; output level
        klfroll		chnget "LfRoll"			; LF rolloff freq in Hz

        kgain 		chnget "Feed"			; gain of reverb. Adjust empirically
        again           interp kgain

        kpitchmod	chnget "PitchMod"		; amount of random pitch modulation

        ktone 		chnget "FiltFq"			; Cutoff frequency of lowpass filters
        kmix            chnget "Mix"
        
afilt1 init 0
afilt2 init 0
afilt3 init 0
afilt4 init 0
afilt5 init 0
afilt6 init 0
afilt7 init 0
afilt8 init 0

; Delay times chosen to be prime numbers.
; Designed for sr=44100. If you wish to
; use a different delay time, find some new
; prime numbers that will give roughly the
; same delay times for the new sampling rate. 
; Or adjust to taste.
idel1 = (2473.000/sr)
idel2 = (2767.000/sr)
idel3 = (3217.000/sr)
idel4 = (3557.000/sr)
idel5 = (3907.000/sr)
idel6 = (4127.000/sr)
idel7 = (2143.000/sr)
idel8 = (1933.000/sr)

; k1-k8 are used to add random pitch modulation to the
; delay lines. Helps eliminate metallic overtones
; in the reverb sound.
k1      randi   .001, 3.1, .06
k2      randi   .0011, 3.5, .9
k3      randi   .0017, 1.11, .7
k4      randi   .0006, 3.973, .3
k5      randi   .001, 2.341, .63
k6      randi   .0011, 1.897, .7
k7      randi   .0017, 0.891, .9
k8      randi   .0006, 3.221, .44

arn1    interp k1
arn2    interp k2
arn3    interp k3
arn4    interp k4
arn5    interp k5
arn6    interp k6
arn7    interp k7
arn8    interp k8

; apj is used to calculate "resultant junction pressure" for 
; the scattering junction of 8 lossless waveguides
; of equal characteristic impedance. If you wish to
; add more delay lines, simply add them to the following 
; equation, and replace the .25 by 2/N, where N is the 
; number of delay lines.
apj = .25 * (afilt1 + afilt2 + afilt3 + afilt4 + afilt5 + afilt6 + afilt7 + afilt8)

a1	= a1 * inlevl

adum1   delayr  1
adel1   deltap3 idel1 + arn1 * kpitchmod
        delayw  a1 + apj - afilt1

adum2   delayr  1
adel2   deltap3 idel2 + arn2 * kpitchmod
        delayw  a1 + apj - afilt2

adum3   delayr  1
adel3   deltap3 idel3 + arn3 * kpitchmod
        delayw  a1 + apj - afilt3

adum4   delayr  1
adel4   deltap3 idel4 + arn4 * kpitchmod
        delayw  a1 + apj - afilt4

adum5   delayr  1
adel5   deltap3 idel5 + arn5 * kpitchmod
        delayw  a1 + apj - afilt5

adum6   delayr  1
adel6   deltap3 idel6 + arn6 * kpitchmod
        delayw  a1 + apj - afilt6

adum7   delayr  1
adel7   deltap3 idel7 + arn7 * kpitchmod
        delayw  a1 + apj - afilt7

adum8   delayr  1
adel8   deltap3 idel8 + arn8 * kpitchmod
        delayw  a1 + apj - afilt8

; 1st order lowpass filters in feedback
; loops of delay lines.
afilt1  tone    adel1 * again, ktone
afilt2  tone    adel2 * again, ktone
afilt3  tone    adel3 * again, ktone
afilt4  tone    adel4 * again, ktone
afilt5  tone    adel5 * again, ktone
afilt6  tone    adel6 * again, ktone
afilt7  tone    adel7 * again, ktone
afilt8  tone    adel8 * again, ktone

; The outputs of the delay lines are summed
; and sent to the stereo outputs. This could
; easily be modified for a 4 or 8-channel 
; sound system.
aL = (afilt1 + afilt3 + afilt5 + afilt7) * ioutlevl
aL buthp	aL, klfroll
aR = (afilt2 + afilt4 + afilt6 + afilt8) * ioutlevl
aR buthp	aR, klfroll

	aL		dcblock2 (aL*kmix*0.7)+(a1*(1-kmix))
	aR		dcblock2 (aR*kmix*0.7)+(a1*(1-kmix))

;Send to output
	outs	aL, aR
endin
;****************************************************************

</CsInstruments>
<CsScore>
f0 0.1 ; workaround so that the host VST scanning will not fail upon trying to open the same network port in several plugins
s
#define SCORELEN #86400#
i1      0.1     1               ; init arrays
i2	0.1	$SCORELEN
#include "screverb_score_events.inc"
i99     0       $SCORELEN       ; effect
e
</CsScore>
</CsoundSynthesizer>

