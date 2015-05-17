<Cabbage>
form size(575, 545), caption("Template"), pluginID("itmp")
image bounds(0, 0, 575, 545), file("background.jpg"), shape("round")
label text("port"), bounds(10, 10, 80, 12), identchannel("port_id")

; INSERT GUI CODE GENERATED  IN PYTHON HERE

</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d
</CsOptions>
<CsInstruments>

        sr = 48000
	ksmps = 64
	nchnls = 2
	0dbfs = 1

	giSine	ftgen	0, 0, 65536, 10, 1			; sine wave
        gkhandle init -1
        gkport init -1

        ; list of source channels, used for checking which signals we are currently listening to
        giSourceActive  ftgen 0, 0, 32, 2, 0    ; store the channel numbers (analysis instances) currently listened to

; CHANGE THIS LINE TO REFLECT THE NAME OF THE EFFECT, e.g.  #include "effectName_parameter_ranges.inc"
#include "template_parameter_ranges.inc"            ; instr 1

#include "subscriber_connect.inc"                   ; instr 2,3
#include "subscriber_receiver.inc"                  ; instr 4,5,6,7,8

;****************************************************************
; template effect

	instr 99        

	a1,a2		ins	
        kVol	        chnget "Vol"	                ; Volume
	                outs a1*kVol, a2*kVol
endin

</CsInstruments>
<CsScore>
f0 0.1 ; workaround so that the host VST scanning will not fail upon trying to open the same network port in several plugins
s
#define SCORELEN #86400#
i1      0.1     1               ; init arrays
i2	0.1	$SCORELEN
; CHANGE THIS LINE TO REFLECT THE NAME OF THE EFFECT, e.g.  #include "effectName_score_events.inc"
#include "template_score_events.inc"
i99     0       $SCORELEN       ; effect
e
</CsScore>
</CsoundSynthesizer>

