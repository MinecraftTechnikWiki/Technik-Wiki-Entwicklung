
$execute if score VarTowDefMS.1Aufruf PZTowDefMS.1Wert matches 1 run return run data modify storage tower-defense-minispiel:v1daten "EigTowDefMS.1Argumente".ID set from storage tower-defense-minispiel:v1daten "EigTowDefMS.1Gegner"[$(Index)]

execute unless score VarTowDefMS.1Aufruf PZTowDefMS.1Wert matches 2 run return 0

#$summon minecraft:$(ID) ~ ~ ~ {Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Gegner"]}

$summon minecraft:$(ID) ~ ~ ~ {Tame:true,IsImmuneToZombification:true,ArmorItems:[{},{},{},{id:"leather_helmet",count:1}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Entfernen","EtiTowDefMS.1Gegner"],Attributes:[{Base:0.0d,Name:"minecraft:generic.movement_speed"}],DeathLootTable:"minecraft:empty"}

#summon minecraft:zombie ~ ~ ~ {Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Gegner"]}

data modify entity @e[distance=..1,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1] Rotation set from entity @s Rotation

scoreboard players set @e[distance=..1,tag=EtiTowDefMS.1Gegner,y_rotation=-45.0..45.0,sort=nearest,limit=1] PZTowDefMS.1Richtung 0
scoreboard players set @e[distance=..1,tag=EtiTowDefMS.1Gegner,y_rotation=45.0..135.0,sort=nearest,limit=1] PZTowDefMS.1Richtung 1
scoreboard players set @e[distance=..1,tag=EtiTowDefMS.1Gegner,y_rotation=135.0..-135.0,sort=nearest,limit=1] PZTowDefMS.1Richtung 2
scoreboard players set @e[distance=..1,tag=EtiTowDefMS.1Gegner,y_rotation=-135.0..-45.0,sort=nearest,limit=1] PZTowDefMS.1Richtung 3

execute if score VarTowDefMS.1Welle PZTowDefMS.1Wert matches 6.. run attribute @e[distance=..1,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1] minecraft:generic.max_health modifier add 0-0-0-0-2 "Stufe2" 0.5 add_multiplied_base
execute if score VarTowDefMS.1Welle PZTowDefMS.1Wert matches 11.. run attribute @e[distance=..1,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1] minecraft:generic.max_health modifier add 0-0-0-0-3 "Stufe3" 1 add_multiplied_base
execute if score VarTowDefMS.1Welle PZTowDefMS.1Wert matches 16.. run attribute @e[distance=..1,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1] minecraft:generic.max_health modifier add 0-0-0-0-4 "Stufe4" 1 add_multiplied_base

#data merge entity @e[distance=..1,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1] {NoAI:true,ArmorItems:[{},{},{},{id:"leather_helmet",count:1}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],DeathLootTable:"minecraft:empty"}

#attribute @s minecraft:generic.max_health base set 50
#teleport @e[distance=..0.3,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1] ~ ~ ~ ~ ~

summon minecraft:text_display ~ ~1 ~ {text:'["",{"text":"LP: ","color":"gold"},{"text":"||||||||||||","color":"red"}]',billboard:"center",Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Leiste"]}

ride @e[distance=..1,type=minecraft:text_display,tag=EtiTowDefMS.1Leiste,sort=nearest,limit=1] mount @e[distance=..1,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1]

scoreboard players operation @e[distance=..1,tag=EtiTowDefMS.1Gegner,sort=nearest,limit=1] PZTowDefMS.1Wert = @s PZTowDefMS.1Wert
