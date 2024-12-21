
execute as @e[distance=..100,type=minecraft:arrow] at @s store result score @s PZBoSplMS.1Verlassen run fill ~-0.5 ~-0.5 ~-0.5 ~0.5 ~0.5 ~0.5 minecraft:air replace minecraft:clay
scoreboard players set @e[distance=..100,type=minecraft:arrow,nbt={inGround:true}] PZBoSplMS.1Verlassen 1

execute at @e[distance=..100,type=minecraft:arrow,scores={PZBoSplMS.1Verlassen=1}] run particle minecraft:block{block_state:{Name:"minecraft:clay"} } ~ ~ ~ 0 0 0 0 5 force @a[distance=..15,tag=EtiBoSplMS.1Spielen]
execute at @e[distance=..100,type=minecraft:arrow,scores={PZBoSplMS.1Verlassen=1}] run playsound minecraft:block.mud.break master @a[distance=..15,tag=EtiBoSplMS.1Spielen] ~ ~ ~ 1 2

kill @e[distance=..100,type=arrow,scores={PZBoSplMS.1Verlassen=1..}]
