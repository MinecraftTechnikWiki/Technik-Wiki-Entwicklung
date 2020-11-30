
scoreboard objectives remove PZKaefigZ.2Zeit

tag @a[tag=EtiKaefigZ.2InZone] remove EtiKaefigZ.2InZone
tag @a[tag=EtiKaefigZ.2Gefangen] remove EtiKaefigZ.2Gefangen

clear @a minecraft:armor_stand{EigKaefigZ.2Alle:true}
tag @e[type=minecraft:item,nbt={Item:{tag:{EigKaefigZ.2Alle:true} } }] add EtiKaefigZ.2Alle
kill @e[tag=EtiKaefigZ.2Alle]
