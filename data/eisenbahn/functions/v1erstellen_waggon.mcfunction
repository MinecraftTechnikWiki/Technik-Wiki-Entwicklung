
scoreboard players add @s PZEisenB.1Waggon 1
execute as @e[type=minecraft:armor_stand,tag=EtiEisenB.1Zug] at @s rotated ~ 0 run teleport @s ^ ^ ^31
summon minecraft:armor_stand ^ ^ ^1 {Invisible:true,Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Waggon"}',Tags:["EtiEisenB.1Alle","EtiEisenB.1Waggon","EtiEisenB.1Zug","EtiEisenB.ZugErstellen"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b} ],Pose:{Head:[0.0f,0.0f,180.0f] } }
