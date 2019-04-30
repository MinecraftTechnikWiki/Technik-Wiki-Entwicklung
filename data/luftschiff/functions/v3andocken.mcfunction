
execute if entity @e[distance=..15,type=minecraft:armor_stand,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] if entity @e[type=minecraft:armor_stand,tag=EtiLuftS.3Andockplatz,sort=nearest,limit=1] run tag @s add EtiLuftS.3AndockenAndockplatz
execute if entity @e[distance=..15,type=minecraft:armor_stand,tag=EtiLuftS.3Andockplatz,sort=nearest,limit=1] if entity @e[type=minecraft:armor_stand,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] run tag @s add EtiLuftS.3AndockenLuftschiff

execute at @e[type=minecraft:armor_stand,tag=EtiLuftS.3Andockplatz,sort=nearest,limit=1] run teleport @s[tag=EtiLuftS.3AndockenAndockplatz] ~ ~-1.5 ~1
teleport @s[tag=EtiLuftS.3AndockenLuftschiff] @e[type=minecraft:armor_stand,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1]

execute if entity @s[tag=EtiLuftS.3AndockenAndockplatz] at @e[distance=..15,type=minecraft:armor_stand,tag=EtiLuftS.3Luftschiff,sort=nearest,limit=1] facing entity @e[type=minecraft:armor_stand,tag=EtiLuftS.3Andockplatz,sort=nearest,limit=1] eyes positioned ^ ^ ^2 run function luftschiff:v3andocken_kette
execute if entity @s[tag=EtiLuftS.3AndockenLuftschiff] at @e[type=minecraft:area_effect_cloud,tag=EtiLuftS.3Kette] run fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:oak_fence
execute if entity @s[tag=EtiLuftS.3AndockenLuftschiff] run kill @e[type=minecraft:area_effect_cloud,tag=EtiLuftS.3Kette]

tag @s[tag=EtiLuftS.3AndockenAndockplatz] remove EtiLuftS.3AndockenAndockplatz
tag @s[tag=EtiLuftS.3AndockenLuftschiff] remove EtiLuftS.3AndockenLuftschiff

scoreboard players set @s PZLuftS.3Leine -20

kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:lead",tag:{Luftschiff.3:true}}},sort=nearest,limit=1]
