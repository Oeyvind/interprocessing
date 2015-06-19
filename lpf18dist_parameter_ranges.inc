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

        instr 1
; list of min and max for the mappable parameters
   chnset 1, "Drive_min" 
   chnset 12, "Drive_max" 
   chnset 20, "Freq_min" 
   chnset 10000, "Freq_max" 
   chnset 0.001, "Resonance_min" 
   chnset 0.95, "Resonance_max" 
   chnset 0.001, "Dist_min" 
   chnset 10, "Dist_max" 
   chnset 0.0, "Mix_min" 
   chnset 1.0, "Mix_max" 
                        
        endin
