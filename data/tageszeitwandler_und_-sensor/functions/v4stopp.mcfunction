
scoreboard objectives remove PZTagZWS.4Sonne
scoreboard objectives remove PZTagZWS.4Drop

gamemode creative @a[distance=..25,gamemode=!creative]
clear @a[distance=..25] minecraft:clock{display:{Lore:["Tageszeitwandler und -sensor.4"]} }
kill @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Tageszeitwandler und -sensor.4"]} } } }]

gamerule doDaylightCycle true
