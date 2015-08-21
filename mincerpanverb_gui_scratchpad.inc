groupbox bounds(5, 30, 564, 81), plant("plant_inlevel"), linethickness("0"){ 
combobox channel("source1_inlevel"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_inlevel"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_inlevel"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_inlevel"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_inlevel"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_inlevel"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_inlevel"), range(-5.0, 5.0, 0)

combobox channel("source2_inlevel"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_inlevel"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_inlevel"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_inlevel"), colour(0,0,0,255), fontcolour("white"), text(0.5)
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

groupbox bounds(5, 115, 564, 81), plant("plant_mincertime"), linethickness("0"){ 
combobox channel("source1_mincertime"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_mincertime"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_mincertime"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_mincertime"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_mincertime"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_mincertime"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_mincertime"), range(-5.0, 5.0, 0)

combobox channel("source2_mincertime"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_mincertime"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_mincertime"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_mincertime"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_mincertime"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_mincertime"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_mincertime"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_mincertime"), range(0, 0.99, 0.1, 0.4, 0.001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_mincertime"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("mincertime"), channel("mincertime"), range(0, 0.99, 0.1, 0.4, 0.001)
}

groupbox bounds(5, 200, 564, 81), plant("plant_mincerpitch"), linethickness("0"){ 
combobox channel("source1_mincerpitch"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_mincerpitch"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_mincerpitch"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_mincerpitch"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_mincerpitch"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_mincerpitch"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_mincerpitch"), range(-5.0, 5.0, 0)

combobox channel("source2_mincerpitch"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_mincerpitch"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_mincerpitch"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_mincerpitch"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_mincerpitch"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_mincerpitch"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_mincerpitch"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_mincerpitch"), range(0.0, 2.0, 1.0, 1, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_mincerpitch"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("mincerpitch"), channel("mincerpitch"), range(0.0, 2.0, 1.0, 1, 0.01)
}

groupbox bounds(5, 285, 564, 81), plant("plant_mincerfeed"), linethickness("0"){ 
combobox channel("source1_mincerfeed"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_mincerfeed"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_mincerfeed"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_mincerfeed"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_mincerfeed"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_mincerfeed"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_mincerfeed"), range(-5.0, 5.0, 0)

combobox channel("source2_mincerfeed"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_mincerfeed"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_mincerfeed"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_mincerfeed"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_mincerfeed"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_mincerfeed"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_mincerfeed"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_mincerfeed"), range(0.0, 1.0, 0.0, 1, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_mincerfeed"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("mincerfeed"), channel("mincerfeed"), range(0.0, 1.0, 0.0, 1, 0.01)
}

groupbox bounds(5, 370, 564, 81), plant("plant_mincermix"), linethickness("0"){ 
combobox channel("source1_mincermix"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_mincermix"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_mincermix"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_mincermix"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_mincermix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_mincermix"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_mincermix"), range(-5.0, 5.0, 0)

combobox channel("source2_mincermix"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_mincermix"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_mincermix"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_mincermix"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_mincermix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_mincermix"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_mincermix"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_mincermix"), range(0, 1.0, 1, 0.3, 0.01) 
combobox bounds(433, 1, 55, 12), channel("offsetx_mincermix"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("mincermix"), channel("mincermix"), range(0, 1.0, 1, 0.3, 0.01)
}

groupbox bounds(5, 455, 564, 81), plant("plant_Pan"), linethickness("0"){ 
combobox channel("source1_Pan"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_Pan"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_Pan"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_Pan"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_Pan"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_Pan"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_Pan"), range(-5.0, 5.0, 0)

combobox channel("source2_Pan"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_Pan"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_Pan"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_Pan"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_Pan"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_Pan"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_Pan"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_Pan"), range(0.0, 1.0, 0.5, 1, 0.001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_Pan"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("Pan"), channel("Pan"), range(0.0, 1.0, 0.5, 1, 0.001)
}

groupbox bounds(5, 540, 564, 81), plant("plant_reverbtime"), linethickness("0"){ 
combobox channel("source1_reverbtime"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_reverbtime"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_reverbtime"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_reverbtime"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_reverbtime"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_reverbtime"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_reverbtime"), range(-5.0, 5.0, 0)

combobox channel("source2_reverbtime"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_reverbtime"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_reverbtime"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_reverbtime"), colour(0,0,0,255), fontcolour("white"), text(0.5)
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

groupbox bounds(5, 625, 564, 81), plant("plant_reverbdamp"), linethickness("0"){ 
combobox channel("source1_reverbdamp"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_reverbdamp"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_reverbdamp"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_reverbdamp"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_reverbdamp"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_reverbdamp"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_reverbdamp"), range(-5.0, 5.0, 0)

combobox channel("source2_reverbdamp"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_reverbdamp"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_reverbdamp"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_reverbdamp"), colour(0,0,0,255), fontcolour("white"), text(0.5)
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

groupbox bounds(5, 710, 564, 81), plant("plant_reverbmix"), linethickness("0"){ 
combobox channel("source1_reverbmix"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_reverbmix"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_reverbmix"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_reverbmix"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_reverbmix"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_reverbmix"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_reverbmix"), range(-5.0, 5.0, 0)

combobox channel("source2_reverbmix"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_reverbmix"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_reverbmix"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_reverbmix"), colour(0,0,0,255), fontcolour("white"), text(0.5)
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

;next x position available below plants is 795