
scoreboard objectives remove PZSigLe.2Wert

tag @a[tag=EtiSigLe.2Auswahl] remove EtiSigLe.2Auswahl

clear @a minecraft:stick{EigSigLe.2Alle:true}
clear @a minecraft:yellow_concrete{EigSigLe.2Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigSigLe.2Alle:true} } }] add EtiSigLe.2Alle
kill @e[tag=EtiSigLe.2Alle]

forceload remove ~ ~
