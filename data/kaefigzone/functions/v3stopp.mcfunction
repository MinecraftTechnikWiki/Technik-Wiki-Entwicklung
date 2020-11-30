
scoreboard objectives remove PZKaefigZ.3Zeit

tag @a[tag=EtiKaefigZ.3InZone] remove EtiKaefigZ.3InZone
tag @a[tag=EtiKaefigZ.3Gefangen] remove EtiKaefigZ.3Gefangen
tag @a[tag=EtiKaefigZ.3Unsichtbar] remove EtiKaefigZ.3Unsichtbar

effect clear @a[distance=..50] minecraft:invisibility

clear @a minecraft:armor_stand{EigKaefigZ.3Alle:true}
clear @a minecraft:potion{EigKaefigZ.3Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigKaefigZ.3Alle:true} } }] add EtiKaefigZ.3Alle
kill @e[tag=EtiKaefigZ.3Alle]
