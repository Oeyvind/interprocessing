;    Copyright 2015 Oeyvind Brandtsegg 
;
;    This file is part of the Signal Interaction Toolkit
;
;    The Signal Interaction Toolkit is free software: you can redistribute it and/or modify
;    it under the terms of the GNU General Public License version 3 
;    as published by the Free Software Foundation.
;
;    The Signal Interaction Toolkit is distributed in the hope that it will be useful,
;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;    GNU General Public License for more details.
;
;    You should have received a copy of the GNU General Public License
;    along with The Signal Interaction Toolkit.  
;    If not, see <http://www.gnu.org/licenses/>.

;***************************************************
; Transient detection udo

	opcode TransientDetect, kk,kikkkk
	kin, iresponse, ktthresh, klowThresh, kdecThresh, kdoubleLimit xin 
/*
	iresponse	= 10 		; response time in milliseconds
	ktthresh	= 6		; transient trig threshold 
	klowThresh	= -60		; lower threshold for transient detection
	kdoubleLimit	= 0.02		; minimum duration between events, (double trig limit)
	kdecThresh	= 6		; retrig threshold, how much must the level decay from its local max before allowing new transient trig
*/	
	kinDel		delayk	kin, iresponse/1000		; delay with response time for comparision of levels
	ktrig		= ((kin > kinDel + ktthresh) ? 1 : 0) 	; if current rms plus threshold is larger than previous rms, set trig signal to current rms
	klowGate	= (kin < klowThresh? 0 : 1)		; gate to remove transient of low level signals
	ktrig		= ktrig * klowGate			; activate gate on trig signal
	ktransLev	init 0
	ktransLev	samphold kin, 1-ktrig			; read amplitude at transient
	
	kreGate		init 1					; retrigger gate, to limit transient double trig before signal has decayed (decThresh) from its local max
	ktrig		= ktrig*kreGate				; activate gate
	kmaxAmp		init -99999
	kmaxAmp		max kmaxAmp, kin			; find local max amp
	kdiff		= kmaxAmp-kin				; how much the signal has decayed since its local max value
	kreGate		limit kreGate-ktrig, 0, 1		; mute when trig detected
	kreGate		= (kdiff > kdecThresh ? 1 : kreGate)	; re-enable gate when signal has decayed sufficiently
	kmaxAmp		= (kreGate == 1 ? -99999 : kmaxAmp)	; reset max amp gauge

	; avoid closely spaced transient triggers (first trig priority)
	kdouble		init 1
	ktrig		= ktrig*kdouble
	if ktrig > 0 then
	reinit double
	endif
double:
        idoubleLimit  = i(kdoubleLimit)	
        idoubleLimit    limit idoubleLimit, 1/kr, 5
        kdouble		linseg	0, idoubleLimit, 0, 0, 1, 1, 1
	rireturn

	xout ktrig, kdiff
	endop

;***************************************************
; epoch filtering udo
	opcode EpochCps, k,a
	a1              xin 
	                setksmps 8
	a20		butterbp a1, 20, 5
	a20		dcblock2 a20*40
	aepochSig	butlp a20, 200
	kepochSig	downsamp aepochSig
	kepochRms	rms aepochSig

; count epoch zero crossings
	ktime		times	
	kZC		trigger kepochSig, 0, 0		; zero cross
	kprevZCtim	init 0
	kinterval1	init 0
	kinterval2	init 0
	kinterval3	init 0
	kinterval4	init 0
	if kZC > 0 then
	kZCtim	 	= ktime				; get time between zero crossings
	kinterval4	= kinterval3
	kinterval3	= kinterval2
	kinterval2	= kinterval1
	kinterval1	= kZCtim-kprevZCtim
	kprevZCtim	= kZCtim
	endif
	kmax		max kinterval1, kinterval2, kinterval3, kinterval4
	kmin		min kinterval1, kinterval2, kinterval3, kinterval4
	kZCmedi		= (kinterval1+kinterval2+kinterval3+kinterval4-kmax-kmin)/2
	kepochZCcps	divz 1, kZCmedi, 1
	kepochZCcps     mediank kepochZCcps, 40, 40
	                xout kepochZCcps
	endop
