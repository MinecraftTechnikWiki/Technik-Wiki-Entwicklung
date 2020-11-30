
scoreboard objectives remove PZKaefigZ.4Tote
scoreboard objectives remove PZKaefigZ.4Zeit

tag @a[tag=EtiKaefigZ.4Gefangen] remove EtiKaefigZ.4Gefangen
tag @a[tag=EtiKaefigZ.4ImKaefig] remove EtiKaefigZ.4ImKaefig

clear @a minecraft:diamond_sword{EigKaefigZ.4Alle:true}
clear @a minecraft:tripwire_hook{EigKaefigZ.4Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigKaefigZ.4Alle:true} } }] add EtiKaefigZ.4Alle
kill @e[tag=EtiKaefigZ.4Alle]
