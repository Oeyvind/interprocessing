<Cabbage>
form size(365, 500), caption("Analyzer"), pluginID("anlz")
image bounds(0, 0, 365, 500), file("background.jpg"), shape("round")

label text("channel"), bounds(15, 16, 75, 12)
combobox channel("chan"), bounds(80, 12, 60, 25), items("1", "2", "3", "4"), value(1)

rslider bounds(15, 40, 65, 65), text("Noisefloor"), channel("inputNoisefloor"), range(-96, 0, -40) 
label text("pitch track method"), bounds(90, 50, 120, 12)
combobox channel("pitchmethod"), bounds(90, 68, 120, 15), items("ptrack", "plltrack", "pitchamdf", "epoch"), value(1)
button channel("pitchMonitor"),bounds(90, 88, 120, 15), text("pitch monitor"), colour:0("black"), colour:1("green"), latching(1)

rslider bounds(220, 40, 65, 65), text("pFiltSize"), channel("pitchFilterSize"), range(3, 255, 25, 0.3, 1) 
texteditor bounds(290, 43, 45, 15), channel("pitch_high"), colour(0,0,0,255), fontcolour("white"), text(1200)
texteditor bounds(290, 64, 45, 15), channel("pitch_low"), colour(0,0,0,255), fontcolour("white"), text(100)
label bounds(290, 89, 50, 12), text("p range"),  colour(50, 50, 50, 255)

label bounds(15, 120, 202, 12), text("pre emphasis for amp trans)"),  colour(50, 50, 50, 255)
rslider bounds(15, 135, 65, 65), text("LoDamp"), channel("preEqLoShelfGain"), range(-20, 0, -5) 
rslider bounds(80, 135, 65, 65), text("x_Fq"), channel("preEqHiShelfFq"), range(500, 5000, 2000, 0.35) 
rslider bounds(145, 135, 65, 65), text("HiBoost"), channel("preEqHiShelfGain"), range(0, 12, 5) 

label text("transients"), bounds(15, 210, 335, 12), colour(50, 50, 50, 255)
rslider bounds(80, 226, 65, 65), text("Thresh"), channel("amp_transientThresh"), range(0, 9, 2) 
rslider bounds(145, 226, 65, 65), text("DecThresh"), channel("amp_transientDecThresh"), range(0, 12, 5) 
rslider bounds(210, 226, 65, 65), text("DecTime"), channel("amp_transientDecTime"), range(0.1, 2.0, 0.5) 
rslider bounds(275, 226, 65, 65), text("DblLimit"), channel("amp_transientDoubleLimit"), range(0.1, 1.0, 0.2) 
label text("amp"), bounds(15, 230, 70, 12)
checkbox channel("transientDisplay"),bounds(42, 245, 15, 15), value(0)

rslider bounds(80, 295, 65, 65), text("Thresh"), channel("centr_transientThresh"), range(0.0, 1.0, 0.2) 
rslider bounds(145, 295, 65, 65), text("DecThresh"), channel("centr_transientDecThresh"), range(0.0, 1.0, 0.0) 
rslider bounds(210, 295, 65, 65), text("DecTime"), channel("centr_transientDecTime"), range(0.1, 2.0, 2.0) 
rslider bounds(275, 295, 65, 65), text("DblLimit"), channel("centr_doubleLimit"), range(0.1, 1.0, 0.1) 
label text("centroid"), bounds(15, 299, 70, 12)
checkbox channel("ctransientDisplay"),bounds(42, 315, 15, 15), value(0)

rslider bounds(80, 360, 65, 65), text("Thresh"), channel("kurt_transientThresh"), range(0.0, 6, 0.8) 
rslider bounds(145, 360, 65, 65), text("DecThresh"), channel("kurt_transientDecThresh"), range(0.0, 6, 0) 
rslider bounds(210, 360, 65, 65), text("DecTime"), channel("kurt_transientDecTime"), range(0.1, 2.0, 0.5) 
rslider bounds(275, 360, 65, 65), text("DblLimit"), channel("kurt_doubleLimit"), range(0.1, 1.0, 0.2) 
label text("kurtosis"), bounds(15, 364, 70, 12)
checkbox channel("ktransientDisplay"),bounds(42, 380, 15, 15), value(0)

rslider bounds(80, 425, 65, 65), text("Thresh"), channel("pitch_transientThresh"), range(0.0, 12.0, 1.5) 
rslider bounds(145, 425, 65, 65), text("DecThresh"), channel("pitch_transientDecThresh"), range(0.0, 12.0, 0.0) 
rslider bounds(210, 425, 65, 65), text("DecTime"), channel("pitch_transientDecTime"), range(0.1, 2.0, 0.5) 
rslider bounds(275, 425, 65, 65), text("DblLimit"), channel("pitch_doubleLimit"), range(0.1, 1.0, 0.7) 
label text("pitch"), bounds(12, 429, 70, 12)
checkbox channel("puptransientDisplay"),bounds(42, 445, 15, 15), value(0)
checkbox channel("pdwntransientDisplay"),bounds(42, 460, 15, 15), value(0)

;csoundoutput bounds(5, 500, 290, 250), text("Output")
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d
;-iadc -odac
</CsOptions>
<CsInstruments>

        sr = 48000
        ksmps = 128
	nchnls = 2
	0dbfs = 1

	giSine	ftgen	0, 0, 65536, 10, 1			; sine wave
	gifftsize 	= 1024
			chnset gifftsize, "fftsize"
	giFftTabSize	= (gifftsize / 2)+1
	gifna     	ftgen   1 ,0 ,giFftTabSize, 7, 0, giFftTabSize, 0   	; for pvs analysis
	gifnf     	ftgen   2 ,0 ,giFftTabSize, 7, 0, giFftTabSize, 0   	; for pvs analysis
/*
        gifqToMelMax    = 16384
        gifqToMelTab    ftgen   0, 0, gifqToMelMax, 2, 0        ; table to be filled with mel frequency map
        gimelMax        = 1125*log(1+(gifqToMelMax/700))
        print gimelMax
        gi32melBands    ftgen   0, 0, 4096, -7, 0, gimelMax, 31, 4096-gimelMax, 31      ; divide mel scale evenly into 32 bands
        gi32melFqs      ftgen   0, 0, 32, -7, 0, 32, gimelMax                           ; mel frequencies for the 32 bands
        gi32melBandFqs  ftgen   0, 0, 32, 2, 0                                          ; to be filled with the frequencies for those 32 mel frequencies
*/
#include "analyze_udos.inc"

;**************************
	instr 1
#include "analyze_chn_init.inc"
	endin

;**************************
        instr 2
	a1,a2	        ins
;	                outs a1, a2

#include "analyze_audio.inc"
        kchan           chnget "chan"
        kchanged        changed kchan
        if kchanged > 0 then
        reinit send
        endif
send:
#include "analyze_send.inc"
        kmonitor        chnget "pitchMonitor"
        atest           oscili interp(krms)*kmonitor, kcps, giSine
                        outs atest, atest
        endin

;**************************
        
</CsInstruments>
<CsScore>
#define SCORELEN #86400#
i1	0.1	1
i2	.1	$SCORELEN
e
</CsScore>
</CsoundSynthesizer>

