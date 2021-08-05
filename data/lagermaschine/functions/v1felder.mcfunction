
execute store result score VarLagerM.1Schleife PZLagerM.1Stapel run data get storage lagermaschine:v1daten "EigLagerM.1Lager"
execute if score VarLagerM.1Schleife PZLagerM.1Stapel matches 1.. run function lagermaschine:v1feld

execute if entity @s[tag=!EtiLagerM.1Gefunden] run data modify storage lagermaschine:v1daten "EigLagerM.1Lager" prepend from entity @s Items[{Slot:10b}]
execute if entity @s[tag=!EtiLagerM.1Gefunden] run data remove storage lagermaschine:v1daten "EigLagerM.1Lager"[0].Slot

tag @s[tag=EtiLagerM.1Gefunden] remove EtiLagerM.1Gefunden

execute store result score VarLagerM.1Lager PZLagerM.1Stapel run data get storage lagermaschine:v1daten "EigLagerM.1Lager"[0].Count
tellraw @p[distance=..2,scores={PZLagerM.1Ausl=1}] ["Lagermaschine.1: ",{"text":"\nID == ","bold":true},{"storage":"lagermaschine:v1daten","nbt":"\"EigLagerM.1Lager\"[0].id","color":"dark_purple","bold":true},{"text":"\ngesamt == ","bold":true},{"score":{"name":"VarLagerM.1Lager","objective":"PZLagerM.1Stapel"},"color":"dark_purple","bold":true}]

replaceitem entity @s container.10 minecraft:air
