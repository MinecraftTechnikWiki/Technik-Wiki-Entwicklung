
execute store result score VarLagerM.1Schleife PZLagerM.1Ausl run data get storage lagermaschine:v1daten "EigLagerM.1Lager"
execute if score VarLagerM.1Schleife PZLagerM.1Ausl matches 1.. run function lagermaschine:v1feld

execute if entity @s[tag=!EtiLagerM.1Gefunden] run data modify storage lagermaschine:v1daten "EigLagerM.1Lager" prepend from entity @s Items[{Slot:10b}]
execute if entity @s[tag=!EtiLagerM.1Gefunden] run data remove storage lagermaschine:v1daten "EigLagerM.1Lager"[0].Slot

tag @s[tag=EtiLagerM.1Gefunden] remove EtiLagerM.1Gefunden

execute store result score VarLagerM.1Lager PZLagerM.1Ausl run data get storage lagermaschine:v1daten "EigLagerM.1Lager"[0].Count
tellraw @p[distance=..2,scores={PZLagerM.1Ausl=1}] ["Lagermaschine.1:\n",{"text":"ID == ","bold":true},{"storage":"lagermaschine:v1daten","nbt":"\"EigLagerM.1Lager\"[0].id","color":"dark_purple","bold":true},"\n",{"text":"gesamt == ","bold":true},{"score":{"name":"VarLagerM.1Lager","objective":"PZLagerM.1Ausl"},"color":"dark_purple","bold":true}]

item replace entity @s container.10 with minecraft:air
