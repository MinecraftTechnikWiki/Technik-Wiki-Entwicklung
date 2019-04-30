
execute if entity @s[y_rotation=135..-135,tag=EtiSchwB.1ZugEnde] if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=north] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:2,rotation:"COUNTERCLOCKWISE_90",name:"schwebebahn:v1waggon-ende"}
execute if entity @s[y_rotation=-135..-45,tag=EtiSchwB.1ZugEnde] if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=east] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-2,posY:0,posZ:-1,rotation:"NONE",name:"schwebebahn:v1waggon-ende"}
execute if entity @s[y_rotation=-45..45,tag=EtiSchwB.1ZugEnde] if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=south] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:1,posY:0,posZ:-2,rotation:"CLOCKWISE_90",name:"schwebebahn:v1waggon-ende"}
execute if entity @s[y_rotation=45..135,tag=EtiSchwB.1ZugEnde] if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=west] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:2,posY:0,posZ:1,rotation:"CLOCKWISE_180",name:"schwebebahn:v1waggon-ende"}

execute if entity @s[y_rotation=135..-135,tag=EtiSchwB.1ZugMitte] if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=north] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:1,rotation:"COUNTERCLOCKWISE_90",name:"schwebebahn:v1waggon-gelenk"}
execute if entity @s[y_rotation=-135..-45,tag=EtiSchwB.1ZugMitte] if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=east] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,rotation:"NONE",name:"schwebebahn:v1waggon-gelenk"}
execute if entity @s[y_rotation=-45..45,tag=EtiSchwB.1ZugMitte] if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=south] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:1,posY:0,posZ:-1,rotation:"CLOCKWISE_90",name:"schwebebahn:v1waggon-gelenk"}
execute if entity @s[y_rotation=45..135,tag=EtiSchwB.1ZugMitte] if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=west] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:1,posY:0,posZ:1,rotation:"CLOCKWISE_180",name:"schwebebahn:v1waggon-gelenk"}

execute if entity @s[y_rotation=135..-135,tag=EtiSchwB.1ZugAnfang] if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=north] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:1,rotation:"COUNTERCLOCKWISE_90",name:"schwebebahn:v1waggon-anfang"}
execute if entity @s[y_rotation=-135..-45,tag=EtiSchwB.1ZugAnfang] if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=east] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,rotation:"NONE",name:"schwebebahn:v1waggon-anfang"}
execute if entity @s[y_rotation=-45..45,tag=EtiSchwB.1ZugAnfang] if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=south] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:1,posY:0,posZ:-1,rotation:"CLOCKWISE_90",name:"schwebebahn:v1waggon-anfang"}
execute if entity @s[y_rotation=45..135,tag=EtiSchwB.1ZugAnfang] if block ~ ~5 ~ minecraft:magenta_glazed_terracotta[facing=west] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:1,posY:0,posZ:1,rotation:"CLOCKWISE_180",name:"schwebebahn:v1waggon-anfang"}

execute if block ~ ~ ~ minecraft:structure_block run setblock ~ ~1 ~ minecraft:redstone_block replace

execute if block ^1 ^5 ^ minecraft:magenta_glazed_terracotta positioned ^-13 ^ ^ positioned ~-15 ~ ~-15 as @a[dx=15,dy=7,dz=15] positioned ~15 ~ ~15 positioned ^12 ^1 ^5 rotated as @s run teleport @s ~ ~ ~ ~-90 ~
execute if block ^1 ^5 ^ minecraft:magenta_glazed_terracotta run fill ^-4 ^ ^1 ^-18 ^7 ^-3 minecraft:air replace #schwebebahn:v1schwebebahn_bloecke
execute if entity @s[tag=EtiSchwB.1ZugEnde] if block ^1 ^5 ^ minecraft:magenta_glazed_terracotta run fill ^2 ^ ^-4 ^-3 ^7 ^ minecraft:air replace #schwebebahn:v1schwebebahn_bloecke
