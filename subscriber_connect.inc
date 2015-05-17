; *********************
; try find an available port and connect to it (instr 2 and 3)
        instr 2
        kmetro          metro 1
        if (gkhandle == -1) && (kmetro == 1) then
        gkport          += 1
                        event "i", -3, 0.1, 1, gkport
                        event "i", 3, 0.2, -1, gkport
        endif
        endin

        instr 3
        iport           = p4
        iport           = 7001+iport
        print iport
	gihandle        OSCinit iport
	gkhandle = gihandle
	Sport  sprintf {{text("port %i")}}, iport
	                chnset Sport, "port_id"
        endin


