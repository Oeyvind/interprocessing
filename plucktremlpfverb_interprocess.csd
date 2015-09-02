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
form size(1150, 710), caption("plucktremlpfverb_interprocessing"), pluginID("iptl")
image bounds(0, 0, 1150, 710), file("background.jpg"), shape("round")
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

groupbox bounds(5, 115, 564, 81), plant("plant_pluckfreq"), linethickness("0"){ 
combobox channel("source1_pluckfreq"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_pluckfreq"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_pluckfreq"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_pluckfreq"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_pluckfreq"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_pluckfreq"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_pluckfreq"), range(-5.0, 5.0, 0)

combobox channel("source2_pluckfreq"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_pluckfreq"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_pluckfreq"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_pluckfreq"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_pluckfreq"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_pluckfreq"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_pluckfreq"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_pluckfreq"), range(1, 1450, 400, 0.3, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_pluckfreq"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("pluckfreq"), channel("pluckfreq"), range(1, 1450, 400, 0.3, 0.01)
}

groupbox bounds(5, 200, 564, 81), plant("plant_pluckfilt"), linethickness("0"){ 
combobox channel("source1_pluckfilt"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_pluckfilt"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_pluckfilt"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_pluckfilt"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_pluckfilt"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_pluckfilt"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_pluckfilt"), range(-5.0, 5.0, 0)

combobox channel("source2_pluckfilt"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_pluckfilt"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_pluckfilt"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_pluckfilt"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_pluckfilt"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_pluckfilt"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_pluckfilt"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_pluckfilt"), range(1000, 16000, 7000, 0.35, 1) 
combobox bounds(433, 1, 55, 12), channel("offsetx_pluckfilt"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("pluckfilt"), channel("pluckfilt"), range(1000, 16000, 7000, 0.35, 1)
}

groupbox bounds(5, 285, 564, 81), plant("plant_pluckfeed"), linethickness("0"){ 
combobox channel("source1_pluckfeed"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_pluckfeed"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_pluckfeed"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_pluckfeed"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_pluckfeed"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_pluckfeed"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_pluckfeed"), range(-5.0, 5.0, 0)

combobox channel("source2_pluckfeed"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_pluckfeed"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_pluckfeed"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_pluckfeed"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_pluckfeed"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_pluckfeed"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_pluckfeed"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_pluckfeed"), range(0.8, 0.9999, 0.95, 1.9, 0.0001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_pluckfeed"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("pluckfeed"), channel("pluckfeed"), range(0.8, 0.9999, 0.95, 1.9, 0.0001)
}

groupbox bounds(5, 370, 564, 81), plant("plant_pluckmix"), linethickness("0"){ 
combobox channel("source1_pluckmix"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_pluckmix"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_pluckmix"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_pluckmix"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_pluckmix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_pluckmix"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_pluckmix"), range(-5.0, 5.0, 0)

combobox channel("source2_pluckmix"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_pluckmix"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_pluckmix"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_pluckmix"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_pluckmix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_pluckmix"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_pluckmix"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_pluckmix"), range(0, 1.0, 1, 0.3, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_pluckmix"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("pluckmix"), channel("pluckmix"), range(0, 1.0, 1, 0.3, 0.01)
}

groupbox bounds(5, 455, 564, 81), plant("plant_tremDepth"), linethickness("0"){ 
combobox channel("source1_tremDepth"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_tremDepth"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_tremDepth"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_tremDepth"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_tremDepth"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_tremDepth"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_tremDepth"), range(-5.0, 5.0, 0)

combobox channel("source2_tremDepth"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_tremDepth"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_tremDepth"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_tremDepth"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_tremDepth"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_tremDepth"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_tremDepth"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_tremDepth"), range(0.0, 1.0, 0.5, 0.25, 0.001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_tremDepth"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("tremDepth"), channel("tremDepth"), range(0.0, 1.0, 0.5, 0.25, 0.001)
}

groupbox bounds(5, 540, 564, 81), plant("plant_tRateLow"), linethickness("0"){ 
combobox channel("source1_tRateLow"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_tRateLow"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_tRateLow"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_tRateLow"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_tRateLow"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_tRateLow"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_tRateLow"), range(-5.0, 5.0, 0)

combobox channel("source2_tRateLow"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_tRateLow"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_tRateLow"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_tRateLow"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_tRateLow"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_tRateLow"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_tRateLow"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_tRateLow"), range(0.0, 10.0, 0.5, 0.25, 0.001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_tRateLow"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("tRateLow"), channel("tRateLow"), range(0.0, 10.0, 0.5, 0.25, 0.001)
}

groupbox bounds(5, 625, 564, 81), plant("plant_tRateHigh"), linethickness("0"){ 
combobox channel("source1_tRateHigh"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_tRateHigh"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_tRateHigh"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_tRateHigh"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_tRateHigh"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_tRateHigh"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_tRateHigh"), range(-5.0, 5.0, 0)

combobox channel("source2_tRateHigh"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_tRateHigh"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_tRateHigh"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_tRateHigh"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_tRateHigh"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_tRateHigh"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_tRateHigh"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_tRateHigh"), range(0.0, 500.0, 0.5, 0.25, 0.001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_tRateHigh"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("tRateHigh"), channel("tRateHigh"), range(0.0, 500.0, 0.5, 0.25, 0.001)
}

groupbox bounds(575, 30, 564, 81), plant("plant_lpfDrive"), linethickness("0"){ 
combobox channel("source1_lpfDrive"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_lpfDrive"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_lpfDrive"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_lpfDrive"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_lpfDrive"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_lpfDrive"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_lpfDrive"), range(-5.0, 5.0, 0)

combobox channel("source2_lpfDrive"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_lpfDrive"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_lpfDrive"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_lpfDrive"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_lpfDrive"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_lpfDrive"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_lpfDrive"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_lpfDrive"), range(1, 12, 2, 1, 0.1) 
combobox bounds(433, 1, 55, 12), channel("offsetx_lpfDrive"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("lpfDrive"), channel("lpfDrive"), range(1, 12, 2, 1, 0.1)
}

groupbox bounds(575, 115, 564, 81), plant("plant_lpfFreq"), linethickness("0"){ 
combobox channel("source1_lpfFreq"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_lpfFreq"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_lpfFreq"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_lpfFreq"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_lpfFreq"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_lpfFreq"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_lpfFreq"), range(-5.0, 5.0, 0)

combobox channel("source2_lpfFreq"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_lpfFreq"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_lpfFreq"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_lpfFreq"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_lpfFreq"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_lpfFreq"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_lpfFreq"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_lpfFreq"), range(20, 10000, 3000, 0.35, 1) 
combobox bounds(433, 1, 55, 12), channel("offsetx_lpfFreq"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("lpfFreq"), channel("lpfFreq"), range(20, 10000, 3000, 0.35, 1)
}

groupbox bounds(575, 200, 564, 81), plant("plant_lpfResonance"), linethickness("0"){ 
combobox channel("source1_lpfResonance"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_lpfResonance"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_lpfResonance"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_lpfResonance"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_lpfResonance"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_lpfResonance"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_lpfResonance"), range(-5.0, 5.0, 0)

combobox channel("source2_lpfResonance"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_lpfResonance"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_lpfResonance"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_lpfResonance"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_lpfResonance"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_lpfResonance"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_lpfResonance"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_lpfResonance"), range(0.001, 0.95, 0.3, 1, 0.001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_lpfResonance"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("lpfResonance"), channel("lpfResonance"), range(0.001, 0.95, 0.3, 1, 0.001)
}

groupbox bounds(575, 285, 564, 81), plant("plant_lpfDist"), linethickness("0"){ 
combobox channel("source1_lpfDist"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_lpfDist"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_lpfDist"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_lpfDist"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_lpfDist"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_lpfDist"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_lpfDist"), range(-5.0, 5.0, 0)

combobox channel("source2_lpfDist"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_lpfDist"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_lpfDist"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_lpfDist"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_lpfDist"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_lpfDist"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_lpfDist"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_lpfDist"), range(0.001, 10, 0.2, 0.5, 0.001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_lpfDist"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("lpfDist"), channel("lpfDist"), range(0.001, 10, 0.2, 0.5, 0.001)
}

groupbox bounds(575, 370, 564, 81), plant("plant_lpfMix"), linethickness("0"){ 
combobox channel("source1_lpfMix"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_lpfMix"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_lpfMix"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_lpfMix"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_lpfMix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_lpfMix"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_lpfMix"), range(-5.0, 5.0, 0)

combobox channel("source2_lpfMix"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_lpfMix"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_lpfMix"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_lpfMix"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_lpfMix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_lpfMix"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_lpfMix"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_lpfMix"), range(0.0, 1.0, 1.0, 1, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_lpfMix"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("lpfMix"), channel("lpfMix"), range(0.0, 1.0, 1.0, 1, 0.01)
}

groupbox bounds(575, 455, 564, 81), plant("plant_reverbtime"), linethickness("0"){ 
combobox channel("source1_reverbtime"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_reverbtime"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_reverbtime"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_reverbtime"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_reverbtime"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_reverbtime"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_reverbtime"), range(-5.0, 5.0, 0)

combobox channel("source2_reverbtime"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
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

groupbox bounds(575, 540, 564, 81), plant("plant_reverbdamp"), linethickness("0"){ 
combobox channel("source1_reverbdamp"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_reverbdamp"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_reverbdamp"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_reverbdamp"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_reverbdamp"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_reverbdamp"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_reverbdamp"), range(-5.0, 5.0, 0)

combobox channel("source2_reverbdamp"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
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

groupbox bounds(575, 625, 564, 81), plant("plant_reverbmix"), linethickness("0"){ 
combobox channel("source1_reverbmix"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_reverbmix"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_reverbmix"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_reverbmix"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_reverbmix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_reverbmix"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_reverbmix"), range(-5.0, 5.0, 0)

combobox channel("source2_reverbmix"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
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

;next x position available below plants is 710
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

#include "plucktremlpfverb_parameter_ranges.inc"    ; instr 1
#include "subscriber_connect.inc"                   ; instr 2,3
#include "subscriber_receiver.inc"                  ; instr 4,5,6,7,8



;****************************************************************
; Pluck, Tremolo, LPF and Reverb
;****************************************************************
	instr 99

	a1,a0		ins	
	kinlevel	chnget "inlevel"
	a1		= a1 * interp(kinlevel)

; pluck
	kpluckfreq	chnget "pluckfreq"
	kpluckfeed	chnget "pluckfeed"			; delay feedback
	kpluckfilt	chnget "pluckfilt"			; feedback filter freq
	kpluckmix	chnget "pluckmix"				; wet/dry
  	adly 		wguide1 a1, kpluckfreq, kpluckfilt, kpluckfeed
	apluck		dcblock2 (adly*interp(kpluckmix))+(a1*(1-interp(kpluckmix)))

;tremolo	
	ktremDepth	chnget "tremDepth"
	ktremRateLow	chnget "tRateLow"
	ktremRateHigh	chnget "tRateHigh"
	aMod            oscil3 0.5, ktremRateLow+ktremRateHigh, giSine
	aMod            = (aMod+0.5)*ktremDepth
	aTrm            = ((apluck*aMod)*interp(ktremDepth))+(apluck*(1-ktremDepth))

;lpf
	klpfDrive	chnget "lpfDrive"
	klpfDrive	tonek klpfDrive, 2
	klpfFreq	chnget "lpfFreq"
	klpfResonance	chnget "lpfResonance"
	klpfResonance	tonek klpfResonance, 2
	klpfDist	chnget "lpfDist"
	klpfDist	tonek klpfDist, 2
	kAutoLevl	= 0.9
	klpfMix		chnget "lpfMix"
	klpfMix		tonek klpfMix, 1

; stage 1, distortion 
	kpregain	= klpfDrive				; dist amount
	ishape		= 0.8					; dist shaping
	kpostgain	= (0.5 / kpregain) * (kpregain*0.5)	; auto set output gain corresponding to input drive
	ishape1 	= ishape*1.6				
	ishape2		= ishape
	adist	 	distort1 aTrm, kpregain, kpostgain, ishape1, ishape2

; stage 2, lpf18 flter
			denorm adist
	afilt		lpf18 adist, klpfFreq, klpfResonance, klpfDist
	kleveladjust	= 1/(sqrt(klpfDrive)+(klpfDist*2))				; attempt automatic level adjustment according to distortion drive
	afilt		= (afilt*(1-kAutoLevl))+(afilt*kleveladjust*kAutoLevl)	; and select balance between audogained and straight dist signal
	alpf		= (afilt*klpfMix)+(aTrm*(1-klpfMix))

; reverb
	kRevTime	chnget "reverbtime"
	kRoomSize	table kRevTime*1000, giRevbSize
	kHFDamp		chnget "reverbdamp"
	kmix            chnget "reverbmix"
	amix            = interp(kmix)
	aoutLevel	= interp(ampdbfs(-kRevTime*0.3))	; slightly lower output for longer reverb (as the reverb algorithm will naturally be louder with more feedback)

	aoutL, aoutR    freeverb alpf*amix, alpf*amix, kRoomSize, kHFDamp	
	aoutL	        dcblock aoutL*aoutLevel
	aoutR	        dcblock aoutR*aoutLevel
        aoutL           = (alpf*(1-amix))+(aoutL*2)
        aoutR           = (alpf*(1-amix))+(aoutR*2)

			outs aoutL, aoutR

	endin

</CsInstruments>
<CsScore>
f0 0.1 ; workaround so that the host VST scanning will not fail upon trying to open the same network port in several plugins
s
#define SCORELEN #86400#
i1      0.1     1               ; init arrays
i2	0.1	$SCORELEN
#include "plucktremlpfverb_score_events.inc"
i99     0       $SCORELEN       ; effect
e
</CsScore>
</CsoundSynthesizer>

