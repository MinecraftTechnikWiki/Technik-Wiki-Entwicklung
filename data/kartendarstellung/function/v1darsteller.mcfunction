
#$execute if data storage kartendarstellung:v1daten "EigKartDar.1Worte"[3] run data modify storage kartendarstellung:v1daten "EigKartDar.1Wort" set from storage kartendarstellung:v1daten "EigKartDar.1Worte"[$(Index)]

#$execute unless data storage kartendarstellung:v1daten "EigKartDar.1Worte"[3] run data modify storage kartendarstellung:v1daten "EigKartDar.1Worte" append from storage kartendarstellung:v1daten "EigKartDar.1Woerter"[$(Index)]

#summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:purple_concrete"},view_range:0.1f,transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.1f,0.1f,0.1f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},Tags:["EtiKartDar.1Alle","EtiKartDar.1Block"]}

data merge entity @s {block_state:{Name:"minecraft:dirt"},view_range:0.1f,transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.01f,0.01f,0.01f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},Tags:["EtiKartDar.1Alle","EtiKartDar.1Entfernen","EtiKartDar.1Block"]}

#execute store result score @s PZKartDar.1Ausl run scoreboard players remove VarKartDar.1Schleife PZKartDar.1Ausl 1

scoreboard players operation @s PZKartDar.1Ausl = VarKartDar.1Schleife PZKartDar.1Ausl
scoreboard players remove VarKartDar.1Schleife PZKartDar.1Ausl 1
execute if score VarKartDar.1Schleife PZKartDar.1Ausl matches 1.. summon minecraft:block_display run function kartendarstellung:v1darsteller
