
#scoreboard objectives remove PZLagerM.1Stapel
scoreboard objectives remove PZLagerM.1Ausl

data remove storage lagermaschine:v1daten "EigLagerM.1Lager"
data remove storage lagermaschine:v1daten "EigLagerM.1Vergleich"

clear @a *[minecraft:custom_data~{EigLagerM.1Alle:true}]

tag @a[tag=EtiLagerM.1Einlagern] remove EtiLagerM.1Einlagern
tag @a[tag=EtiLagerM.1Auswahl] remove EtiLagerM.1Auswahl

execute as @e[type=minecraft:chest_minecart,tag=EtiLagerM.1Menu] run data remove entity @s Items

execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigLagerM.1Alle:true}] run kill @s
kill @e[tag=EtiLagerM.1Alle]
