
$execute if score VarTowDefMS.1Aufruf PZTowDefMS.1Wert matches 1 run return run data modify storage tower-defense-minispiel:v1daten "EigTowDefMS.1Argumente".ID set from storage tower-defense-minispiel:v1daten "EigTowDefMS.1Gegner"[$(Index)]

execute unless score VarTowDefMS.1Aufruf PZTowDefMS.1Wert matches 2 run return 0

#$summon minecraft:$(ID) ~ ~ ~ {Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Gegner"]}

$summon minecraft:$(ID) ~ ~ ~ {Tame:true,IsImmuneToZombification:true,equipment:{head:{id:"leather_helmet",count:1} },drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f},Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Entfernen","EtiTowDefMS.1Gegner"],attributes:[{id:"minecraft:knockback_resistance",base:1.0d},{id:"minecraft:movement_speed",base:0.0d}],DeathLootTable:"minecraft:empty"}

#summon minecraft:zombie ~ ~ ~ {Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Gegner"]}

data modify entity @n[distance=..1,tag=EtiTowDefMS.1Gegner] Rotation set from entity @s Rotation

scoreboard players set @n[distance=..1,tag=EtiTowDefMS.1Gegner,y_rotation=-45.0..45.0] PZTowDefMS.1Richtung 0
scoreboard players set @n[distance=..1,tag=EtiTowDefMS.1Gegner,y_rotation=45.0..135.0] PZTowDefMS.1Richtung 1
scoreboard players set @n[distance=..1,tag=EtiTowDefMS.1Gegner,y_rotation=135.0..-135.0] PZTowDefMS.1Richtung 2
scoreboard players set @n[distance=..1,tag=EtiTowDefMS.1Gegner,y_rotation=-135.0..-45.0] PZTowDefMS.1Richtung 3

execute if score VarTowDefMS.1Welle PZTowDefMS.1Wert matches 6.. run attribute @n[distance=..1,tag=EtiTowDefMS.1Gegner] minecraft:max_health modifier add tower-defense-minispiel:stufe2 0.5 add_multiplied_base
execute if score VarTowDefMS.1Welle PZTowDefMS.1Wert matches 11.. run attribute @n[distance=..1,tag=EtiTowDefMS.1Gegner] minecraft:max_health modifier add tower-defense-minispiel:stufe3 1 add_multiplied_base
execute if score VarTowDefMS.1Welle PZTowDefMS.1Wert matches 16.. run attribute @n[distance=..1,tag=EtiTowDefMS.1Gegner] minecraft:max_health modifier add tower-defense-minispiel:stufe4 1 add_multiplied_base

#data merge entity @n[distance=..1,tag=EtiTowDefMS.1Gegner] {NoAI:true,equipment:{head:{id:"leather_helmet",count:1} },drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f},DeathLootTable:"minecraft:empty"}

#attribute @s minecraft:generic.max_health base set 50
#teleport @n[distance=..0.3,tag=EtiTowDefMS.1Gegner] ~ ~ ~ ~ ~

summon minecraft:text_display ~ ~1 ~ {text:["",{text:"LP: ",color:"gold"},{text:"||||||||||||",color:"red"}],billboard:"center",Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Leiste"]}

ride @n[distance=..1,type=minecraft:text_display,tag=EtiTowDefMS.1Leiste] mount @n[distance=..1,tag=EtiTowDefMS.1Gegner]

scoreboard players operation @n[distance=..1,tag=EtiTowDefMS.1Gegner] PZTowDefMS.1Wert = @s PZTowDefMS.1Wert
