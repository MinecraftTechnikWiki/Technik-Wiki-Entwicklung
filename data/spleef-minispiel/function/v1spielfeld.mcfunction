
execute as @e[distance=..100,type=minecraft:snowball] at @s store success score @s PZSpleeMS.1Abbauen run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 minecraft:air replace minecraft:snow_block

execute at @e[distance=..100,type=minecraft:snowball,scores={PZSpleeMS.1Abbauen=1}] run particle minecraft:block{block_state:{Name:"minecraft:snow_block"} } ~ ~ ~ 0 0 0 0 5 force @a[distance=..15,tag=EtiSpleeMS.1Spielen]
execute at @e[distance=..100,type=minecraft:snowball,scores={PZSpleeMS.1Abbauen=1}] run playsound minecraft:block.snow.break master @a[distance=..15,tag=EtiSpleeMS.1Spielen] ~ ~ ~ 1 2

kill @e[distance=..100,type=minecraft:snowball,scores={PZSpleeMS.1Abbauen=1}]
