
scoreboard objectives remove PZKaefigZ.1Zeit

tag @a[tag=EtiKaefigZ.1InZone] remove EtiKaefigZ.1InZone
tag @a[tag=EtiKaefigZ.1Gefangen] remove EtiKaefigZ.1Gefangen

clear @a minecraft:armor_stand{EigKaefigZ.1Alle:true}
tag @e[type=minecraft:item,nbt={Item:{tag:{EigKaefigZ.1Alle:true} } }] add EtiKaefigZ.1Alle
kill @e[tag=EtiKaefigZ.1Alle]
