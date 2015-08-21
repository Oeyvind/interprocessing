<Cabbage>
form size(280, 130), caption("Mincer"), pluginID("minc")
rslider channel("timpoint"), bounds(10, 25, 70, 70), text("timpoint"), range(0, 1, 0, 1, 0.001)
rslider channel("amp"), bounds(70, 25, 70, 70), text("amp"), range(0, 1, 1, 0.35)
rslider channel("pitch"), bounds(130, 25, 70, 70), text("pitch"), range(0, 2, 1, 1, 0.001)
rslider channel("feedback"), bounds(190, 25, 70, 70), text("feedback"), range(0, 1, 0, 1, 0.001)
;csoundoutput bounds(4, 212, 648, 150)
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d
</CsOptions>
<CsInstruments>
        sr = 44100
        ksmps = 64
        nchnls = 2
        0dbfs=1

	gi4		ftgen 	0, 0, 0, 1, "Askil2_4_mono.wav", 0, 0, 0

	; live input buffer table for granular effects processing
	giLiveFeedLen		= 524288
	giLiveFeedLenSec	= giLiveFeedLen/sr
	giLiveFeed		ftgen	0, 0, giLiveFeedLen+1, 2, 0				; create empty buffer for live input

;***************************************************
;record input to buffer
;***************************************************
	instr 1

	a1	inch	1					; signal input
	
	 ;test signal
	;a1	diskin "StruglKor.wav", 1, 0, 0
	;aout	= a1 * 0.1
	;	outs	aout, aout
	

	aFeed	chnget	"afeedback"			        ; feedback from audio output
	kFeed	chnget "feedback"				; feedback gain
        kinlev  chnget "inlevel"
	a1	= (a1*kinlev) + (aFeed*kFeed)		        ; mix feedback with live input

; write audio to table
	iAudioTable	= giLiveFeed
	iLength		= ftlen(iAudioTable)
	gkstartFollow	tablewa	iAudioTable, a1, 0      				; write audio a1 to table 
	gkstartFollow	= (gkstartFollow > (giLiveFeedLen-1) ? 0 : gkstartFollow)	; reset kstart when table is full
			tablegpw iAudioTable                                            ; update table guard point (for interpolation)
			chnset	gkstartFollow, "kstartFollow"				; output the buffer position to chn

	endin

;***************************************************
;mincer stretch
;***************************************************
        instr 2
        ifftsize        = 1024
        ktimptM chnget "timpoint"
        kamp    chnget "amp"
        kpitch  chnget "pitch"
        ktimpt phasor 1/giLiveFeedLenSec
        atimpt  interp (-ktimptM*giLiveFeedLenSec)+(gkstartFollow/sr)-((ifftsize/sr)*kpitch)
        klock   = 1
        a1 mincer atimpt, kamp, kpitch, giLiveFeed, klock, ifftsize
                chnset a1, "afeedback"

		outs a1, a1
endin

</CsInstruments>  
<CsScore>
f1 0 1024 10 1
i1 0 84600
i2 0 84600
</CsScore>
</CsoundSynthesizer>