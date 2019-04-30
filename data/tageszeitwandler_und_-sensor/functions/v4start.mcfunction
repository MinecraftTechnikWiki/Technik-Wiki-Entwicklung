
scoreboard objectives add PZTagZWS.4Drop minecraft.dropped:minecraft.clock ["Tageszeitwandler und -sensor.4",{"text":"Uhr gedroppt","bold":true}]
scoreboard objectives add PZTagZWS.4Sonne dummy ["Tageszeitwandler und -sensor.4",{"text":"Sonnenstand","bold":true}]
scoreboard players set #VarTagZWS.4Tick PZTagZWS.4Sonne 1
scoreboard players set #VarTagZWS.4Vergl PZTagZWS.4Sonne 0

gamemode adventure @a[distance=..25,gamemode=!adventure]
give @a[distance=..25] minecraft:clock{display:{Lore:["Tageszeitwandler und -sensor.4","Droppe den Gegenstand mit Q"] } }
gamerule doDaylightCycle false
