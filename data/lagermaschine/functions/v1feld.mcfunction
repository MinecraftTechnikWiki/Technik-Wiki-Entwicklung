
data modify storage lagermaschine:v1daten "EigLagerM.1Vergleich" set from entity @s Items[{Slot:10b}].id
execute store success score VarLagerM.1Ungleich PZLagerM.1Stapel run data modify storage lagermaschine:v1daten "EigLagerM.1Vergleich" set from storage lagermaschine:v1daten "EigLagerM.1Lager"[0].id

execute if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 store success score VarLagerM.1GUI PZLagerM.1Stapel if data entity @s Items[{Slot:10b}].tag
execute if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 store success score VarLagerM.1Lager PZLagerM.1Stapel if data storage lagermaschine:v1daten "EigLagerM.1Lager"[0].tag

execute if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 store success score VarLagerM.1Ungleich PZLagerM.1Stapel unless score VarLagerM.1GUI PZLagerM.1Stapel = VarLagerM.1Lager PZLagerM.1Stapel

execute if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 run scoreboard players operation VarLagerM.1GUI PZLagerM.1Stapel += VarLagerM.1Lager PZLagerM.1Stapel

execute if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 if score VarLagerM.1GUI PZLagerM.1Stapel matches 2 run data modify storage lagermaschine:v1daten "EigLagerM.1Vergleich" set from entity @s Items[{Slot:10b}].tag
execute if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 if score VarLagerM.1GUI PZLagerM.1Stapel matches 2 store success score VarLagerM.1Ungleich PZLagerM.1Stapel run data modify storage lagermaschine:v1daten "EigLagerM.1Vergleich" set from storage lagermaschine:v1daten "EigLagerM.1Lager"[0].tag

execute if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 store result score VarLagerM.1GUI PZLagerM.1Stapel run data get entity @s Items[{Slot:10b}].Count
execute if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 store result score VarLagerM.1Lager PZLagerM.1Stapel run data get storage lagermaschine:v1daten "EigLagerM.1Lager"[0].Count

execute if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 store result storage lagermaschine:v1daten "EigLagerM.1Lager"[0].Count int 1 run scoreboard players operation VarLagerM.1GUI PZLagerM.1Stapel += VarLagerM.1Lager PZLagerM.1Stapel

execute if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 run tag @s[tag=!EtiLagerM.1Gefunden] add EtiLagerM.1Gefunden

execute if entity @s[tag=!EtiLagerM.1Gefunden] run data modify storage lagermaschine:v1daten "EigLagerM.1Lager" append from storage lagermaschine:v1daten "EigLagerM.1Lager"[0]
execute if entity @s[tag=!EtiLagerM.1Gefunden] run data remove storage lagermaschine:v1daten "EigLagerM.1Lager"[0]

scoreboard players remove VarLagerM.1Schleife PZLagerM.1Stapel 1
execute if entity @s[tag=!EtiLagerM.1Gefunden] if score VarLagerM.1Schleife PZLagerM.1Stapel matches 1.. run function lagermaschine:v1feld
