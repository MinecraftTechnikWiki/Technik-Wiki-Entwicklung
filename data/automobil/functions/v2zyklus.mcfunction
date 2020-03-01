
execute at @e[type=minecraft:armor_stand,tag=EtiAuto.2Erstellen] run summon minecraft:villager ^2 ^0.5 ^ {NoAI:true,Silent:true,NoGravity:true,Offers:{Recipes:[]},Tags:["EtiAuto.2Alle","EtiAuto.2Auto"],Rotation:[270.0f,0.0f],ActiveEffects:[{Id:14b,Amplifier:0b,Ambient:false,ShowParticles:false,Duration:2147483647}],Passengers:[{id:"minecraft:armor_stand",Small:true,Marker:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Einsteigen","bold":true}',Tags:["EtiAuto.2Alle"]}]}
execute as @e[type=minecraft:armor_stand,tag=EtiAuto.2Erstellen] at @s positioned ^2 ^0.5 ^ store result entity @e[distance=..1,type=minecraft:villager,tag=EtiAuto.2Auto,sort=nearest,limit=1] Rotation[0] float 1 run data get entity @s Rotation[0] 1

#execute at @e[type=minecraft:armor_stand,tag=EtiAuto.2Erstellen] run summon minecraft:minecart ^2 ^0.5 ^ {Tags:["EtiAuto.2Alle"]}

kill @e[type=minecraft:armor_stand,tag=EtiAuto.2Erstellen]

#execute at @e[type=minecraft:villager,tag=EtiAuto.2Auto,y_rotation=135..-135] unless block ~-1 ~1 ~ minecraft:light_blue_concrete run setblock ~-2 ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-2,posY:0,posZ:-5,name:"automobil:v2auto"} replace
#execute at @e[type=minecraft:villager,tag=EtiAuto.2Auto,y_rotation=-135..-45] unless block ~-1 ~1 ~ minecraft:light_blue_concrete run setblock ~-2 ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-2,posY:0,posZ:-5,name:"automobil:v2auto"} replace
execute at @e[type=minecraft:villager,tag=EtiAuto.2Auto,y_rotation=-45..45] unless block ^-1 ^1 ^ minecraft:light_blue_concrete run setblock ^-2 ^ ^ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-2,posY:0,posZ:-5,name:"automobil:v2auto"} replace
#execute at @e[type=minecraft:villager,tag=EtiAuto.2Auto,y_rotation=45..135] unless block ~-1 ~1 ~ minecraft:light_blue_concrete run setblock ~-2 ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-2,posY:0,posZ:-5,name:"automobil:v2auto"} replace

execute at @e[type=minecraft:villager,tag=EtiAuto.2Auto] unless block ^-1 ^1 ^ minecraft:light_blue_concrete run setblock ^-1 ^ ^ minecraft:redstone_block replace

execute at @a if entity @e[distance=..4,type=minecraft:villager,tag=EtiAuto.2Auto] as @e[distance=..5,type=minecraft:item] unless entity @s[nbt=!{Item:{id:"minecraft:cyan_carpet"} },nbt=!{Item:{id:"minecraft:stone_button"} },nbt=!{Item:{id:"minecraft:jungle_sign"} },nbt=!{Item:{id:"minecraft:acacia_button"} }] run kill @s

execute as @a[scores={PZAuto.2Klick=1..}] at @s if entity @e[distance=..3,type=minecraft:villager,tag=EtiAuto.2Auto,sort=nearest,limit=1] run tellraw @s ["Automobil.2: ",{"text":"Drücke Shift um das Auto nach vorne zu bewegen. Um auszusteigen, baue die Glasblöcke ab um heraus zugelangen.","bold":true}]

execute as @a[scores={PZAuto.2Klick=1..}] at @s at @e[distance=..3,type=minecraft:villager,tag=EtiAuto.2Auto,sort=nearest,limit=1] run teleport @s ~-2 ~0.5 ~
scoreboard players set @a[scores={PZAuto.2Klick=1..}] PZAuto.2Klick 0
execute as @a[scores={PZAuto.2Schl=1..}] at @s if entity @e[distance=..3,type=minecraft:villager,tag=EtiAuto.2Auto] if block ~ ~1 ~ minecraft:light_gray_stained_glass as @e[distance=..4,sort=nearest] unless entity @s[type=!minecraft:player,type=!minecraft:villager] at @s align xz run teleport @s ~0.5 ~ ~1.5
scoreboard players set @a[scores={PZAuto.2Schl=1..}] PZAuto.2Schl 0
