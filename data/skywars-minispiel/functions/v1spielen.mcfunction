
execute if block ~ ~-1 ~ minecraft:red_sand if block ~ ~-2 ~ minecraft:barrier run summon minecraft:marker ~ ~-2 ~ {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Block"]}
execute if block ~ ~-2 ~ minecraft:red_sand if block ~ ~-3 ~ minecraft:barrier unless entity @e[distance=..0.3,type=minecraft:marker,tag=EtiSkyWaMS.1Block] run summon minecraft:marker ~ ~-3 ~ {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Block"]}

execute if block ~ ~-1 ~ minecraft:structure_void if block ~ ~-2 ~ minecraft:structure_void run scoreboard players add @s PZSkyWaMS.1Wert 1

execute if entity @s[scores={PZSkyWaMS.1Wert=10..}] run summon minecraft:marker ~-0.7 ~-2 ~ {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Block"]}
execute if entity @s[scores={PZSkyWaMS.1Wert=10..}] run summon minecraft:marker ~ ~-2 ~-0.7 {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Block"]}
execute if entity @s[scores={PZSkyWaMS.1Wert=10..}] run summon minecraft:marker ~0.7 ~-2 ~ {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Block"]}
execute if entity @s[scores={PZSkyWaMS.1Wert=10..}] run summon minecraft:marker ~ ~-2 ~0.7 {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Block"]}

scoreboard players set @s[scores={PZSkyWaMS.1Wert=10..}] PZSkyWaMS.1Wert 0

execute if block ~ ~-1 ~ minecraft:structure_void run scoreboard players add @s PZSkyWaMS.1Wert 1

execute if block ~ ~ ~ minecraft:lava run function skywars-minispiel:v1verloren
execute if entity @s[gamemode=creative] run function skywars-minispiel:v1verloren
