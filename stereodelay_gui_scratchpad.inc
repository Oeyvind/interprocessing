groupbox bounds(5, 30, 564, 81), plant("plant_delaytime"), linethickness("0"){ 
combobox channel("source1_delaytime"), bounds(10, 12, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
combobox channel("chan1_delaytime"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
numberbox bounds(158, 14, 35, 15), channel("rise1_delaytime"), range(0.01, 10.0, 0.01)
numberbox bounds(196, 14, 35, 15), channel("fall1_delaytime"), range(0.01, 10.0, 0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_delaytime"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_delaytime"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_delaytime"), range(-5.0, 5.0, 0)

combobox channel("source2_delaytime"), bounds(10, 34, 90, 20), items("rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "amp_t_dens", "centr_trans", "centr_t_dens", "kurt_trans", "pitchup_trans", "pitchdown_trans", "cps_raw"), value(1), channeltype("string")
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

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_filt_fq"), range(100, 10000, 1000, 0.35, 1) 
combobox bounds(433, 1, 55, 12), channel("offsetx_filt_fq"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("filt_fq"), channel("filt_fq"), range(100, 10000, 1000, 0.35, 1)
}

groupbox bounds(5, 200, 564, 81), plant("plant_feedback"), linethickness("0"){ 
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

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_feedback"), range(0.0, 0.9999, 0.3, 1.9, 0.0001) 
combobox bounds(433, 1, 55, 12), channel("offsetx_feedback"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("feedback"), channel("feedback"), range(0.0, 0.9999, 0.3, 1.9, 0.0001)
}

;next x position available below plants is 285