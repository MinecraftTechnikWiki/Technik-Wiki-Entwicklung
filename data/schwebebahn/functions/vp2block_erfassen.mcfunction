
scoreboard players set @s PZSchwB.p2Nr 0

execute if block ~ ~ ~ minecraft:quartz_block run scoreboard players set @s PZSchwB.p2Nr 1

execute if block ~ ~ ~ minecraft:quartz_stairs[half=bottom,facing=east] run scoreboard players set @s PZSchwB.p2Nr 2
execute if block ~ ~ ~ minecraft:quartz_stairs[half=bottom,facing=west] run scoreboard players set @s PZSchwB.p2Nr 3
execute if block ~ ~ ~ minecraft:quartz_stairs[half=bottom,facing=south] run scoreboard players set @s PZSchwB.p2Nr 4
execute if block ~ ~ ~ minecraft:quartz_stairs[half=bottom,facing=north] run scoreboard players set @s PZSchwB.p2Nr 5
execute if block ~ ~ ~ minecraft:quartz_stairs[half=top,facing=east] run scoreboard players set @s PZSchwB.p2Nr 6
execute if block ~ ~ ~ minecraft:quartz_stairs[half=top,facing=west] run scoreboard players set @s PZSchwB.p2Nr 7
execute if block ~ ~ ~ minecraft:quartz_stairs[half=top,facing=south] run scoreboard players set @s PZSchwB.p2Nr 8
execute if block ~ ~ ~ minecraft:quartz_stairs[half=top,facing=north] run scoreboard players set @s PZSchwB.p2Nr 9

execute if block ~ ~ ~ minecraft:quartz_slab[type=bottom] run scoreboard players set @s PZSchwB.p2Nr 10
execute if block ~ ~ ~ minecraft:quartz_slab[type=top] run scoreboard players set @s PZSchwB.p2Nr 11

execute if block ~ ~ ~ minecraft:coal_block run scoreboard players set @s PZSchwB.p2Nr 12

execute if block ~ ~ ~ minecraft:black_stained_glass run scoreboard players set @s PZSchwB.p2Nr 13

execute if block ~ ~ ~ minecraft:gray_wool run scoreboard players set @s PZSchwB.p2Nr 14
execute if block ~ ~ ~ minecraft:cyan_wool run scoreboard players set @s PZSchwB.p2Nr 15

execute if block ~ ~ ~ minecraft:stone_button[face=wall,facing=east] run scoreboard players set @s PZSchwB.p2Nr 16
execute if block ~ ~ ~ minecraft:stone_button[face=wall,facing=west] run scoreboard players set @s PZSchwB.p2Nr 17
execute if block ~ ~ ~ minecraft:stone_button[face=wall,facing=south] run scoreboard players set @s PZSchwB.p2Nr 18
execute if block ~ ~ ~ minecraft:stone_button[face=wall,facing=north] run scoreboard players set @s PZSchwB.p2Nr 19

execute if block ~ ~ ~ minecraft:stone_button[face=floor] run scoreboard players set @s PZSchwB.p2Nr 20

execute if block ~ ~ ~ minecraft:dark_oak_stairs[half=bottom,facing=east] run scoreboard players set @s PZSchwB.p2Nr 21
execute if block ~ ~ ~ minecraft:dark_oak_stairs[half=bottom,facing=west] run scoreboard players set @s PZSchwB.p2Nr 22
execute if block ~ ~ ~ minecraft:dark_oak_stairs[half=bottom,facing=south] run scoreboard players set @s PZSchwB.p2Nr 23
execute if block ~ ~ ~ minecraft:dark_oak_stairs[half=bottom,facing=north] run scoreboard players set @s PZSchwB.p2Nr 24

execute if block ~ ~ ~ minecraft:light_blue_terracotta run scoreboard players set @s PZSchwB.p2Nr 25

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p2Setzer] run function schwebebahn:vp2block_erstellen
