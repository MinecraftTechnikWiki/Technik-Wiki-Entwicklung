
scoreboard objectives remove PZLagerM.1Stapel
scoreboard objectives remove PZLagerM.1Ausl

data remove storage lagermaschine:v1daten "EigLagerM.1Lager"
data remove storage lagermaschine:v1daten "EigLagerM.1Vergleich"

clear @a minecraft:stick{EigLagerM.1Alle:true}
clear @a #lagermaschine:v1menu{EigLagerM.1Alle:true}

tag @a[tag=EtiLagerM.1Einlagern] remove EtiLagerM.1Einlagern
tag @a[tag=EtiLagerM.1Auswahl] remove EtiLagerM.1Auswahl

execute as @e[type=minecraft:chest_minecart,tag=EtiLagerM.1GUI] run data remove entity @s Items

tag @e[type=minecraft:item,nbt={Item:{tag:{EigLagerM.1Alle:true} } }] add EtiLagerM.1Alle
kill @e[tag=EtiLagerM.1Alle]
