
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:bedrock",count:1} }] at @s positioned ~ ~-0.25 ~ if block ~ ~ ~ minecraft:redstone_lamp align xyz unless entity @e[type=minecraft:item_frame,tag=EtiChuLoa.1Chunk,dx=0,dy=0,dz=0] run function chunkloader:v1erstellen

execute at @e[type=minecraft:item_frame,tag=EtiChuLoa.1Chunk] align xyz run particle minecraft:smoke ~0.5 ~0.5 ~0.5 0.25 0.25 0.25 0.02 4

execute as @e[type=minecraft:item_frame,tag=EtiChuLoa.1Chunk] at @s unless block ~ ~ ~ minecraft:redstone_lamp run function chunkloader:v1entfernen
