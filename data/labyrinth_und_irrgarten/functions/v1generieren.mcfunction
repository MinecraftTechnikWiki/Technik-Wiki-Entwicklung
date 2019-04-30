
execute if block ~2 ~-1 ~ minecraft:quartz_block run summon minecraft:armor_stand ~2 ~ ~ {Small:true,Invisibel:true,Tags:["EtiLaUIr.1Alle","EtiLaUIr.1Richtung"]}
execute if block ~-2 ~-1 ~ minecraft:quartz_block run summon minecraft:armor_stand ~-2 ~ ~ {Small:true,Invisibel:true,Tags:["EtiLaUIr.1Alle","EtiLaUIr.1Richtung"]}
execute if block ~ ~-1 ~2 minecraft:quartz_block run summon minecraft:armor_stand ~ ~ ~2 {Small:true,Invisibel:true,Tags:["EtiLaUIr.1Alle","EtiLaUIr.1Richtung"]}
execute if block ~ ~-1 ~-2 minecraft:quartz_block run summon minecraft:armor_stand ~ ~ ~-2 {Small:true,Invisibel:true,Tags:["EtiLaUIr.1Alle","EtiLaUIr.1Richtung"]}
teleport @s ~ ~ ~ facing entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLaUIr.1Richtung,sort=random,limit=1]

execute if entity @s[y_rotation=135..-135] if block ~ ~-1 ~ minecraft:quartz_block run setblock ~ ~ ~ minecraft:command_block[facing=north] replace
execute if entity @s[y_rotation=-135..-45] if block ~ ~-1 ~ minecraft:quartz_block run setblock ~ ~ ~ minecraft:command_block[facing=east] replace
execute if entity @s[y_rotation=-45..45] if block ~ ~-1 ~ minecraft:quartz_block run setblock ~ ~ ~ minecraft:command_block[facing=south] replace
execute if entity @s[y_rotation=45..135] if block ~ ~-1 ~ minecraft:quartz_block run setblock ~ ~ ~ minecraft:command_block[facing=west] replace

setblock ~ ~-1 ~ minecraft:sea_lantern
setblock ~ ~1 ~ minecraft:air

execute if entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLaUIr.1Richtung] at @s run teleport @s ^ ^ ^2
execute if entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLaUIr.1Richtung] at @s run fill ^ ^ ^ ^ ^1 ^-1 minecraft:air

execute unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLaUIr.1Richtung] unless block ~ ~ ~ minecraft:command_block run tellraw @a[distance=..100] ["Irrgarten.1: ",{"text":"Irrgarten wurde generiert","bold":true}]
execute unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLaUIr.1Richtung] unless block ~ ~ ~ minecraft:command_block run kill @s
execute unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLaUIr.1Richtung] at @s run function labyrinth_und_irrgarten:v1generieren_abzweig

kill @e[type=minecraft:armor_stand,tag=EtiLaUIr.1Richtung]
