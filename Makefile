TEMP = Global_Robot_Statistics_0.1.0

install: control.lua data.lua info.json prototypes locale LICENSE
	-rm -rf /tmp/$(TEMP) /home/presto/.factorio/mods/$(TEMP).zip
	mkdir /tmp/$(TEMP)
	cp -r $^ /tmp/$(TEMP)
	cd /tmp && zip -r /home/presto/.factorio/mods/$(TEMP).zip $(TEMP)
