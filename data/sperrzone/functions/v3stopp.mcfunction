
tag @e[type=minecraft:item,nbt={Item:{tag:{EigSperrZ.3Alle:true} } }] add EtiSperrZ.3Alle
kill @e[tag=EtiSperrZ.3Alle]
clear @a[distance=..50] minecraft:name_tag{EigSperrZ.3Alle:true}
#setblock ~-4 ~ ~ minecraft:air replace



scoreboard objectives remove PZSperrZ.3Winkel

tag @a[tag=EtiSperrZ.3InZone] remove EtiSperrZ.3InZone
tag @a[tag=EtiSperrZ.3Gefangen] remove EtiSperrZ.3Gefangen
tag @a[tag=EtiSperrZ.3Unsichtbar] remove EtiSperrZ.3Unsichtbar

effect clear @a[distance=..50] minecraft:invisibility

clear @a minecraft:armor_stand{EigSperrZ.3Alle:true}
clear @a minecraft:potion{EigSperrZ.3Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigSperrZ.3Alle:true} } }] add EtiSperrZ.3Alle
kill @e[tag=EtiSperrZ.3Alle]
