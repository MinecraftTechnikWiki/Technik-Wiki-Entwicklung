
schedule function chunkloader:v1zustand 10s

execute as @e[type=minecraft:item_frame,tag=EtiChuLoa.1Chunk] at @s store success score @s PZChuLoa.1Wert if block ~ ~ ~ minecraft:redstone_lamp[lit=true]

execute at @e[type=minecraft:item_frame,tag=EtiChuLoa.1Chunk,tag=EtiChuLoa.1Entladen] run forceload remove ~ ~
tag @e[type=minecraft:item_frame,tag=EtiChuLoa.1Chunk,tag=EtiChuLoa.1Entladen] remove EtiChuLoa.1Entladen

tag @e[type=minecraft:item_frame,tag=EtiChuLoa.1Chunk,scores={PZChuLoa.1Wert=0}] add EtiChuLoa.1Entladen

execute at @e[type=minecraft:item_frame,tag=EtiChuLoa.1Chunk,scores={PZChuLoa.1Wert=1}] run forceload add ~ ~
