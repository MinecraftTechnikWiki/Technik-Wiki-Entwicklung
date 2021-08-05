
execute if entity @s[scores={PZDrRezM.3Fort=..0}] as @e[distance=..2,type=minecraft:item,tag=EtiDrRezM.3Brauen,nbt={OnGround:true},sort=nearest,limit=1] run function drop-rezeptmaschine:v3brennstoff

execute store result score VarDrRezM.3Brauen PZDrRezM.3Fort run data get entity @s Item.Count

execute if entity @s[scores={PZDrRezM.3Fort=1..}] as @e[distance=..2,type=minecraft:item,tag=EtiDrRezM.3Drop,scores={PZDrRezM.3Drop=1..},nbt={OnGround:true}] at @s run function drop-rezeptmaschine:v3zutaten

execute if entity @s[scores={PZDrRezM.3Fort=1..}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.01 4 force @a[distance=..15]
execute if entity @s[scores={PZDrRezM.3Fort=1..}] run playsound minecraft:block.brewing_stand.brew master @a[distance=..15] ~ ~ ~ 1 1 0.1

scoreboard players operation @s[scores={PZDrRezM.3Fort=1..}] PZDrRezM.3Fort -= VarDrRezM.3Brauen PZDrRezM.3Fort
