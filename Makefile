TEMP = Global_Robot_Counts_0.1.0

install: control.lua info.json
	-rm -rf /tmp/$(TEMP) /home/presto/.factorio/mods/$(TEMP).zip
	mkdir /tmp/$(TEMP)
	cp $^ /tmp/$(TEMP)
	cd /tmp && zip -r /home/presto/.factorio/mods/$(TEMP).zip $(TEMP)
