groupbox bounds(5, 30, 564, 81), plant("plant_Vol"), linethickness("0"){ 
combobox channel("source1_Vol"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans"), value(1), channeltype("string")
combobox channel("chan1_Vol"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_Vol"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_Vol"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_Vol"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_Vol"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_Vol"), range(-5.0, 5.0, 0)

combobox channel("source2_Vol"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans"), value(1), channeltype("string")
combobox channel("chan2_Vol"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_Vol"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_Vol"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_Vol"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_Vol"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_Vol"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_Vol"), range(0.0, 1.0, 0.5, 0.25, 1e-05) 
combobox bounds(433, 1, 55, 12), channel("offsetx_Vol"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("Vol"), channel("Vol"), range(0.0, 1.0, 0.5, 0.25, 1e-05)
}

;next x position available below plants is 115