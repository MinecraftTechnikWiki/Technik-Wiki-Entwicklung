
scoreboard players add @e[distance=..100,type=minecraft:marker,tag=EtiSkyWaMS.1Block] PZSkyWaMS.1Verlassen 1

scoreboard players add VarSkyWaMS.1Verzoegern PZSkyWaMS.1Wert 1
execute if score VarSkyWaMS.1Verzoegern PZSkyWaMS.1Wert matches ..0 run return 0

execute as @e[distance=..100,type=minecraft:marker,tag=EtiSkyWaMS.1Block,scores={PZSkyWaMS.1Verlassen=10..}] at @s if block ~ ~ ~ minecraft:barrier if block ~ ~1 ~ minecraft:red_sand store success score @s PZSkyWaMS.1Wert run fill ~-0.2 ~ ~-0.2 ~0.2 ~1 ~0.2 minecraft:structure_void replace
execute at @e[distance=..100,type=minecraft:marker,tag=EtiSkyWaMS.1Block,scores={PZSkyWaMS.1Verlassen=10..,PZSkyWaMS.1Wert=1}] run particle minecraft:block{block_state:{Name:"minecraft:red_sand"} } ~ ~ ~ 0 0 0 0 5 force @a[distance=..15,tag=EtiSkyWaMS.1Spielen]
execute at @e[distance=..100,type=minecraft:marker,tag=EtiSkyWaMS.1Block,scores={PZSkyWaMS.1Verlassen=10..,PZSkyWaMS.1Wert=1}] run playsound minecraft:block.sand.break master @a[distance=..15,tag=EtiSkyWaMS.1Spielen] ~ ~ ~ 1 2
kill @e[distance=..100,type=minecraft:marker,tag=EtiSkyWaMS.1Block,scores={PZSkyWaMS.1Verlassen=10..}]
