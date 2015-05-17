#!/usr/bin/python
# -*- coding: latin-1 -*-

import sys

if sys.argv[1] == 'template':
    effectname = 'template'
    parameters = [('Vol', (0.0, 1.0, 0.5, 0.25, 0.00001))] 
                # pName, (min, max, default, skew, increment)
                # where skew is a dynamic adjustment of exp/lin/log translation if the GUI widget
                # and increment is the smallest change allowed by the GUI widget


if sys.argv[1] == 'stereodelay':
    effectname = 'stereodelay'
    parameters = [('delaytime', (0.0008, 2.0, 0.5, 0.25, 0.00001)), 
                  ('filt_fq', (100, 10000, 1000, 0.35, 1)),
                  ('feedback', (0.0, 0.9999, 0.3, 1.9, 0.0001))
                  ]
              
if sys.argv[1] == 'lpf18dist':
    effectname = 'lpf18dist'
    parameters = [('Drive', (1, 12, 2, 1, 0.1)), 
                  ('Freq', (20, 10000, 3000, 0.35, 1)),
                  ('Resonance', (0.001, 0.95, 0.3, 1, 0.001)),
                  ('Dist', (0.001, 10, 0.2, 0.5, 0.001)),
                  ('Mix', (0.0, 1.0, 1.0, 1, 0.01)),
                  ]

if sys.argv[1] == 'screverb':
    effectname = 'screverb'
    parameters = [('Feed', (0.0, 1.0, 0.85, 1.2, 0.01)), 
                  ('FiltFq', (100, 14000, 7000, 0.6, 1)), 
                  ('PitchMod', (0.0, 4.0, 0.9, 1, 0.01)), 
                  ('PreDly', (0.0, 500, 120, 1, 1)), 
                  ('LfRoll', (20, 500, 90, 1, 1)), 
                  ('Mix', (0.0, 1.0, 1.0, 1, 0.01))
                  ]

#
scorefile = open(effectname+'_score_events.inc', 'w')
fractionalinstr = 0
for p in parameters:
    fractionalinstr += 1
    scorefile.write('i4.{fracinstr:02d}	3.1	$SCORELEN "{pname}"\n'.format(fracinstr=fractionalinstr, pname=p[0]))

#

chn_init_file = open(effectname+'_parameter_ranges.inc', 'w')
instr_template = '''
        instr 1
; list of min and max for the mappable parameters
{}                        
        endin
'''
parameter_ranges = ''
for i in range(len(parameters)):
    parm = parameters[i]
    parameter_ranges += '   chnset {}, "{}_min" \n'.format(parm[1][0], parm[0])
    parameter_ranges += '   chnset {}, "{}_max" \n'.format(parm[1][1], parm[0])
chn_init_file.write(instr_template.format(parameter_ranges))

#
start_x_pos = 30
plant_height = 85
analysis_parms = '"rms", "rms_preEq", "cps", "pitch", "centroid", "spread", "skewness", "kurtosis", "flatness", "crest", "flux", "amp_trans", "centr_trans", "kurt_trans", "pitchup_trans", "pitchdown_trans"'

plant = '''groupbox bounds(5, {start_x}, 564, 81), plant("plant_{pname}"), linethickness("0"){{ 
combobox channel("source1_{pname}"), bounds(10, 12, 90, 20), items({analysis_p}), value(1), channeltype("string")
combobox channel("chan1_{pname}"), bounds(103, 12, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 14, 35, 15), channel("rise1_{pname}"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 14, 35, 15), channel("fall1_{pname}"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 12, 86, 20), channel("scale1_{pname}"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 12, 29, 19), channel("scale1_x_{pname}"), text("x 1","x 10"), 
hslider bounds(349, 12, 86, 20), channel("curve1_{pname}"), range(-5.0, 5.0, 0)

combobox channel("source2_{pname}"), bounds(10, 34, 90, 20), items({analysis_p}), value(1), channeltype("string")
combobox channel("chan2_{pname}"), bounds(103, 34, 50, 20), items("1", "2", "3", "4"), value(1)
texteditor bounds(158, 36, 35, 15), channel("rise2_{pname}"), colour(0,0,0,255), fontcolour("white"), text(0.01)
texteditor bounds(196, 36, 35, 15), channel("fall2_{pname}"), colour(0,0,0,255), fontcolour("white"), text(0.5)
hslider bounds(233, 34, 86, 20), channel("scale2_{pname}"), range(-1.0, 1.0, 0, 1, 0.01)
button bounds(320, 34, 29, 19), channel("scale2_x_{pname}"), text("x 1","x 10"), 
hslider bounds(349, 34, 86, 20), channel("curve2_{pname}"), range(-5.0, 5.0, 0)

label bounds(10, 58, 90, 12), text("source"), colour(20,20,20,255)
label bounds(103, 58, 50, 12), text("chan"), colour(20,20,20,255)
label bounds(156, 58, 76, 12), text("rise/fall"), colour(20,20,20,255)
label bounds(236, 58, 110, 12), text("scale"), colour(20,20,20,255)
label bounds(352, 58, 81, 12), text("curve"), colour(20,20,20,255)

rslider bounds(433, 12, 62, 62), text("offset"), channel("offset_{pname}"), range({p_min}, {p_max}, {p_default}, {p_skew}, {p_incr}) 
combobox bounds(433, 1, 55, 12), channel("offsetx_{pname}"), items("-1", "Nornm", "+1"), , value(2), channeltype("string")

rslider bounds(494, 8, 66, 66), text("{pname}"), channel("{pname}"), range({p_min}, {p_max}, {p_default}, {p_skew}, {p_incr})
}}

'''
guifile = open(effectname+'_gui_scratchpad.inc', 'w')
for i in range(len(parameters)):
    parm = parameters[i]
    guifile.write(plant.format(start_x=start_x_pos+(i*plant_height), pname=parm[0], analysis_p=analysis_parms,p_min=parm[1][0], p_max=parm[1][1], p_default=parm[1][2], p_skew=parm[1][3], p_incr=parm[1][4]))
guifile.write(';next x position available below plants is {}'.format(start_x_pos+((i+1)*plant_height)))