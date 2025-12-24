
data modify storage lagermaschine:v1daten "EigLagerM.1Vergleich" set from entity @s Items[{Slot:10b}].id
execute store success score VarLagerM.1Ungleich PZLagerM.1Ausl run data modify storage lagermaschine:v1daten "EigLagerM.1Vergleich" set from storage lagermaschine:v1daten "EigLagerM.1Lager"[0].id

execute if score VarLagerM.1Ungleich PZLagerM.1Ausl matches 0 store success score VarLagerM.1GUI PZLagerM.1Ausl if data entity @s Items[{Slot:10b}].components
execute if score VarLagerM.1Ungleich PZLagerM.1Ausl matches 0 store success score VarLagerM.1Lager PZLagerM.1Ausl if data storage lagermaschine:v1daten "EigLagerM.1Lager"[0].components

execute if score VarLagerM.1Ungleich PZLagerM.1Ausl matches 0 store success score VarLagerM.1Ungleich PZLagerM.1Ausl unless score VarLagerM.1GUI PZLagerM.1Ausl = VarLagerM.1Lager PZLagerM.1Ausl

execute if score VarLagerM.1Ungleich PZLagerM.1Ausl matches 0 run scoreboard players operation VarLagerM.1GUI PZLagerM.1Ausl += VarLagerM.1Lager PZLagerM.1Ausl

execute if score VarLagerM.1Ungleich PZLagerM.1Ausl matches 0 if score VarLagerM.1GUI PZLagerM.1Ausl matches 2 run data modify storage lagermaschine:v1daten "EigLagerM.1Vergleich" set from entity @s Items[{Slot:10b}].components
execute if score VarLagerM.1Ungleich PZLagerM.1Ausl matches 0 if score VarLagerM.1GUI PZLagerM.1Ausl matches 2 store success score VarLagerM.1Ungleich PZLagerM.1Ausl run data modify storage lagermaschine:v1daten "EigLagerM.1Vergleich" set from storage lagermaschine:v1daten "EigLagerM.1Lager"[0].components

execute if score VarLagerM.1Ungleich PZLagerM.1Ausl matches 0 store result score VarLagerM.1GUI PZLagerM.1Ausl run data get entity @s Items[{Slot:10b}].count
execute if score VarLagerM.1Ungleich PZLagerM.1Ausl matches 0 store result score VarLagerM.1Lager PZLagerM.1Ausl run data get storage lagermaschine:v1daten "EigLagerM.1Lager"[0].count

execute if score VarLagerM.1Ungleich PZLagerM.1Ausl matches 0 store result storage lagermaschine:v1daten "EigLagerM.1Lager"[0].count int 1 run scoreboard players operation VarLagerM.1GUI PZLagerM.1Ausl += VarLagerM.1Lager PZLagerM.1Ausl

execute if score VarLagerM.1Ungleich PZLagerM.1Ausl matches 0 run tag @s[tag=!EtiLagerM.1Gefunden] add EtiLagerM.1Gefunden

execute if entity @s[tag=!EtiLagerM.1Gefunden] run data modify storage lagermaschine:v1daten "EigLagerM.1Lager" append from storage lagermaschine:v1daten "EigLagerM.1Lager"[0]
execute if entity @s[tag=!EtiLagerM.1Gefunden] run data remove storage lagermaschine:v1daten "EigLagerM.1Lager"[0]

scoreboard players remove VarLagerM.1Schleife PZLagerM.1Ausl 1
execute if entity @s[tag=!EtiLagerM.1Gefunden] if score VarLagerM.1Schleife PZLagerM.1Ausl matches 1.. run function lagermaschine:v1feld
