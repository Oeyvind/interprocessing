<Cabbage>
form size(460, 500), caption("Analyzer"), pluginID("anlz")
image bounds(0, 0, 470, 470), file("background.jpg"), shape("round")

combobox channel("chan"), bounds(10, 10, 60, 30), items("1", "2", "3", "4"), value(1)

rslider bounds(  5, 40, 65, 65), text("inputNoisefloor"), channel("inputNoisefloor"), range(-96, 0, -40) 
rslider bounds( 80, 40, 65, 65), text("tdHiShelfFq"), channel("td_HiShelfFq"), range(500, 5000, 2000, 0.35) 
rslider bounds(155, 40, 65, 65), text("tdHiShelfGain"), channel("td_HiShelfGain"), range(0, 18, 9) 
rslider bounds(230, 40, 65, 65), text("tdLoShelfGain"), channel("td_LoShelfGain"), range(-40, 0, -12) 

checkbox channel("transientDisplay"),		bounds(310,40,10,10), value(0)
checkbox channel("ctransientDisplay"),		bounds(310,80,10,10), value(0)

rslider bounds(  5, 130, 65, 65), text("envRelease"), channel("in_envelopeRelease"), range(0.1, 2.5, 1.7) 
rslider bounds( 80, 130, 65, 65), text("tdThresh"), channel("transientThresh"), range(0, 9, 5) 
rslider bounds(155, 130, 65, 65), text("tdDecThresh"), channel("transientDecThresh"), range(0, 12, 6) 
rslider bounds(230, 130, 65, 65), text("tdDblLimit"), channel("doubleLimit"), range(0.1, 1.0, 0.7) 
rslider bounds(305, 130, 65, 65), text("statusThresh"), channel("statusThresh"), range(0, 18, 9) 
rslider bounds(380, 130, 65, 65), text("statusRel"), channel("statusRel"), range(0.1, 1.5, 0.8) 

csoundoutput bounds(5,230, 455, 250), text("Output")

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

        gifqToMelMax    = 16384
        gifqToMelTab    ftgen   0, 0, gifqToMelMax, 2, 0        ; table to be filled with mel frequency map
        gimelMax        = 1125*log(1+(gifqToMelMax/700))
        print gimelMax
        gi32melBands    ftgen   0, 0, 4096, -7, 0, gimelMax, 31, 4096-gimelMax, 31      ; divide mel scale evenly into 32 bands
        gi32melFqs      ftgen   0, 0, 32, -7, 0, 32, gimelMax                           ; mel frequencies for the 32 bands
        gi32melBandFqs  ftgen   0, 0, 32, 2, 0                                          ; to be filled with the frequencies for those 32 mel frequencies
                
#include "analyze_udos.inc"

;****************************************************************
; Analysis
;****************************************************************
	instr 1
#include "analyze_chn_init.inc"
	endin

        instr 2
	a1	        soundin "C:/SampleArchive/GrainSource/GrSrc_StruglKor2mono_Cut_48.wav"
	;a1	        soundin "C:/SampleArchive/GrainSource/t_plukkgit_48.wav"
	;a1,a0	        soundin "C:/SampleArchive/DRUM/MyLoops/CatofCats2.wav"
	;a1,a0	        soundin "C:/SampleArchive/DRUM/MyLoops/DreamlandBreak2.wav"
        anoise          rnd31 1, 1
        ;klin            line 660, p3, 220
        asine           oscili 1, 440, giSine
        asine2          oscili 1, 880, giSine
        asine           = (asine+asine2)*0.5
        kcross          line 1, p3, 0
        ktrem           oscili 0.5, 0.5, giSine, 0.75
        ktrem           = ktrem+0.5
        ;a1              = ((anoise*kcross)+(asine*(1-kcross)))*0.3* ktrem
#include "analyze_audio.inc"
        


; *** test write analysis output
        arms            upsamp krms
        arms_preEq      upsamp krms_preEq
        acps_n          upsamp kcps_n
        apitch_n        upsamp kpitch_n
        acentroid_n     upsamp kcentroid_n
        aflatness       upsamp kflatness
        aspread_n       upsamp kspread_n
        askewness_n     upsamp kskewness_n
        akurtosis_n     upsamp kurtosis_n
        acrest_n        upsamp kcrest_n
        aflux_n         upsamp kflux_n
        aautocorr_n     upsamp kautocorr_n
        amp_trans       upsamp kamp_trans
        acentr_trans    upsamp kcentr_trans
        akurt_trans     upsamp kkurt_trans
        apitchup_trans  upsamp kpitchup_trans
        apitchdwn_trans upsamp kpitchdwn_trans
        ;asemitone       upsamp ((ksemitone)-36)/40
        asemitone       upsamp ((ksemitone)-48)/20
        ;asemitone       upsamp (int(-ksemitone)+70)/20
        ;printk2 (ksemitone-48)/24
        ;printk2 kcps, 10
        apdiff          upsamp kpdiff/5
        ;acentr_env     upsamp kcentroct/15
        acentroct       upsamp limit:k((kcentroct-9)*0.2, 0, 1)
        akurt_env       upsamp kkurt_env/18
        apitchup_env    upsamp ((kpitchup_env)-48)/20
        apitchdwn_env   upsamp ((kpitchdwn_env)-70)/20
;	kmax                    init 0
;        kmax                    max kmax, ksumAmp
;printk2 kmax
        atest           oscili krms, kcps*2, giSine

	fout "analysis_test.wav", 14, a1, \
                                acps_n, \
                                apitch_n
        outs atest, atest                                
        
        endin

        
</CsInstruments>
<CsScore>
#define SCORELEN #20#
i1	0.1	1
i2	.1	$SCORELEN
e
</CsScore>
</CsoundSynthesizer>

