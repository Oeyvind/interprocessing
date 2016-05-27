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

####
DEPRECATION NOTICE!
The further development of tools in this repo has been moved to https://github.com/Oeyvind/featexmod
Significant changes to the model made this necessary. 
This repo is kept for referrence purposes in relation to the DAFx-15 paper "A TOOLKIT FOR EXPERIMENTATION WITH SIGNAL INTERACTION", avaiilable at http://www.ntnu.edu/documents/1001201110/1266017954/DAFx-15_submission_16.pdf/f8f4770f-9fa4-4801-91c3-151856e4b324
####


# The Signal Interaction Toolkit
A toolkit for experimentation with interprocessing (signal interaction)

* How to use:
- Compile the VST plugins from the .csd files using Cabbage (https://github.com/rorywalsh/cabbage/releases)
- Insert the analyzer plugin on one track (track 1) of your VST host, route audio to it
- Insert on of the effects plugins on another track (track 2), route audio to it
- Use the offset dials to set base values for each effect parameter
- Use the modulation source selector and scaling to allow a modulator to affect an effect parameter
- Audio output should be taken from track 2 in the setup outlined above

* Adapting existing effects
Making a script to automatically modify existing effects implemented in Csound would be handy. 
However, if such a script should be able to take any implemented effect and modify it to become 
a signal-interaction-enabled effect we would have to make assumptions about how the parameter control 
was implemented in the effect to be modified. Rather than making such assumptions, we have made a 
script that automatically generates essential include files and also generates the relevant parts of 
the GUI widget code. To modify an existing effect, one will have to make a list of the control parameters 
and their associated range. This can be entered as a list into the python script codeUtility.py, and this 
script will generate the relevant code (when run with python codeUtility.py effectName). 
The GUI code will have to be copied and pasted into the new effect, and the header and score section of 
the file needs to me modified according to the template effects file. The necessary modifications has been 
marked with comments in capital letters in the template.csd file. 
Python writes the GUI code to effectName_gui_scratchpad.inc, from where it can be copied into the csd. 
The GUI caption and plugin id should also be edited to reflect the newly created effect.

* Updating the toolkit
As the toolkit is still in it's early stages of development, it is highly probable the parameter set of the 
analysis needs to be updated. Additional analysis methods should be put in the analyze_audio.inc file, and 
the analyze_send.inc file should be updated accordingly to reflect the new parameter names. 
Likewise, the subscriber_receiver.inc file must be updated so the effects processors will be able to receive 
the new parameter set, and finally the GUI widgets of effects processors needs to be updated. 
The gui code should be updated in the codeUtility.py file, and the code utility must be run on any existing 
effects, as described in the previous paragraph. 
With these considerations, the updated parameter set will be picked up by the system automatically.
