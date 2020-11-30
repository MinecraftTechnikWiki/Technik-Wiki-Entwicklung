
scoreboard objectives remove PZLagerM.1Stapel
scoreboard objectives remove PZLagerM.1Ausl

data remove storage lagermaschine:v1daten "EigLagerM.1Lager"
data remove storage lagermaschine:v1daten "EigLagerM.1Vergleich"

tag @s[tag=EtiLagerM.1Einlagern] remove EtiLagerM.1Einlagern

clear @a minecraft:stick{EigLagerM.1Alle:true}

kill @e[type=minecraft:item,nbt={Item:{tag:{EigLagerM.1Alle:true} } }]
