groupbox bounds(5, 30, 564, 81), plant("plant_Depth"), linethickness("0"){ 
combobox channel("source1_Depth"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_Depth"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_Depth"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_Depth"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_Depth"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_Depth"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_Depth"), range(-5.0, 5.0, 0)

combobox channel("source2_Depth"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_Depth"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_Depth"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_Depth"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_Depth"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_Depth"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_Depth"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_Depth"), range(0.0, 1.0, 0.5, 0.25, 0.001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_Depth"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("Depth"), channel("Depth"), range(0.0, 1.0, 0.5, 0.25, 0.001)
}

groupbox bounds(5, 115, 564, 81), plant("plant_RateLow"), linethickness("0"){ 
combobox channel("source1_RateLow"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_RateLow"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_RateLow"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_RateLow"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_RateLow"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_RateLow"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_RateLow"), range(-5.0, 5.0, 0)

combobox channel("source2_RateLow"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_RateLow"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_RateLow"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_RateLow"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_RateLow"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_RateLow"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_RateLow"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_RateLow"), range(0.0, 10.0, 0.5, 0.25, 0.001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_RateLow"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("RateLow"), channel("RateLow"), range(0.0, 10.0, 0.5, 0.25, 0.001)
}

groupbox bounds(5, 200, 564, 81), plant("plant_RateHigh"), linethickness("0"){ 
combobox channel("source1_RateHigh"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_RateHigh"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_RateHigh"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_RateHigh"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_RateHigh"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_RateHigh"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_RateHigh"), range(-5.0, 5.0, 0)

combobox channel("source2_RateHigh"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan2_RateHigh"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 36, 35, 15), channel("rise2_RateHigh"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 36, 35, 15), channel("fall2_RateHigh"), range(0.01, 10.0, 0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_RateHigh"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_RateHigh"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_RateHigh"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_RateHigh"), range(0.0, 500.0, 0.5, 0.25, 0.001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_RateHigh"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("RateHigh"), channel("RateHigh"), range(0.0, 500.0, 0.5, 0.25, 0.001)
}

;next x position available below plants is 285