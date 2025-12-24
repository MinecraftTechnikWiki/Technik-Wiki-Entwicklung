
execute if block ~ ~-1 ~ minecraft:red_sand if block ~ ~-2 ~ minecraft:barrier run summon minecraft:marker ~ ~-2 ~ {Tags:["EtiTNTRMS.1Alle","EtiTNTRMS.1Block"]}
execute if block ~ ~-2 ~ minecraft:red_sand if block ~ ~-3 ~ minecraft:barrier unless entity @e[distance=..0.3,type=minecraft:marker,tag=EtiTNTRMS.1Block] run summon minecraft:marker ~ ~-3 ~ {Tags:["EtiTNTRMS.1Alle","EtiTNTRMS.1Block"]}

execute if block ~ ~-1 ~ minecraft:structure_void if block ~ ~-2 ~ minecraft:structure_void run scoreboard players add @s PZTNTRMS.1Wert 1

execute if entity @s[scores={PZTNTRMS.1Wert=10..}] run summon minecraft:marker ~-0.7 ~-2 ~ {Tags:["EtiTNTRMS.1Alle","EtiTNTRMS.1Block"]}
execute if entity @s[scores={PZTNTRMS.1Wert=10..}] run summon minecraft:marker ~ ~-2 ~-0.7 {Tags:["EtiTNTRMS.1Alle","EtiTNTRMS.1Block"]}
execute if entity @s[scores={PZTNTRMS.1Wert=10..}] run summon minecraft:marker ~0.7 ~-2 ~ {Tags:["EtiTNTRMS.1Alle","EtiTNTRMS.1Block"]}
execute if entity @s[scores={PZTNTRMS.1Wert=10..}] run summon minecraft:marker ~ ~-2 ~0.7 {Tags:["EtiTNTRMS.1Alle","EtiTNTRMS.1Block"]}

scoreboard players set @s[scores={PZTNTRMS.1Wert=10..}] PZTNTRMS.1Wert 0

execute if block ~ ~-1 ~ minecraft:structure_void run scoreboard players add @s PZTNTRMS.1Wert 1

execute if block ~ ~ ~ minecraft:lava run function tnt-run-minispiel:v1verloren
execute if entity @s[gamemode=creative] run function tnt-run-minispiel:v1verloren
