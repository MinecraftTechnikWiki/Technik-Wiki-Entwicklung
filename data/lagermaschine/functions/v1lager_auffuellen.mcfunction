
execute if score VarLagerM.1Lagerplaetze PZLagerM.1Stapel matches 1.. run data modify storage lagermaschine:v1daten "EigLagerM.1Vergleich" set from entity @s SelectedItem.id
execute if score VarLagerM.1Lagerplaetze PZLagerM.1Stapel matches 1.. store success score VarLagerM.1Ungleich PZLagerM.1Stapel run data modify storage lagermaschine:v1daten "EigLagerM.1Vergleich" set from storage lagermaschine:v1daten "EigLagerM.1Lager"[0].id

execute if score VarLagerM.1FachPosition PZLagerM.1Stapel matches 0 if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 1 run tag @s add EtiLagerM.1Fach
execute if score VarLagerM.1Lagerplaetze PZLagerM.1Stapel matches 0 run tag @s add EtiLagerM.1Fach

data modify storage lagermaschine:v1daten "EigLagerM.1Lager" prepend from entity @s[tag=EtiLagerM.1Fach] SelectedItem

execute if score VarLagerM.1Lagerplaetze PZLagerM.1Stapel matches 1.. if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 store result score VarLagerM.1Fach PZLagerM.1Stapel run data get storage lagermaschine:v1daten "EigLagerM.1Lager"[0].Count
execute if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 store result score VarLagerM.1Slot PZLagerM.1Stapel run data get entity @s SelectedItem.Count
execute if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 store result storage lagermaschine:v1daten "EigLagerM.1Lager"[0].Count int 1 run scoreboard players operation VarLagerM.1Fach PZLagerM.1Stapel += VarLagerM.1Slot PZLagerM.1Stapel

execute if score VarLagerM.1Ungleich PZLagerM.1Stapel matches 0 run tag @s add EtiLagerM.1Fach

replaceitem entity @s[tag=EtiLagerM.1Fach] weapon.mainhand minecraft:air

data modify storage lagermaschine:v1daten "EigLagerM.1Lager" prepend from storage lagermaschine:v1daten "EigLagerM.1Lager"[-1]
data remove storage lagermaschine:v1daten "EigLagerM.1Lager"[-1]

scoreboard players remove VarLagerM.1FachPosition PZLagerM.1Stapel 1
execute if entity @s[tag=!EtiLagerM.1Fach] if score VarLagerM.1FachPosition PZLagerM.1Stapel matches 0.. run function lagermaschine:v1lager_auffuellen

tag @s[tag=EtiLagerM.1Fach] remove EtiLagerM.1Fach
