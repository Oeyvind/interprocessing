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