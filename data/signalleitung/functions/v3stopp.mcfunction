
scoreboard objectives remove PZSigLe.3Wert

tag @a[tag=EtiSigLe.3Auswahl] remove EtiSigLe.3Auswahl

clear @a minecraft:stick{EigSigLe.3Alle:true}
clear @a minecraft:yellow_concrete{EigSigLe.3Alle:true}

tag @e[type=minecraft:item,nbt={Item:{tag:{EigSigLe.3Alle:true} } }] add EtiSigLe.3Alle
kill @e[tag=EtiSigLe.3Alle]

forceload remove ~ ~
