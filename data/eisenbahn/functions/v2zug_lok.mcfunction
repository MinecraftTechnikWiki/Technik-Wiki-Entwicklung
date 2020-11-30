
execute if entity @s[y_rotation=135..-135] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:-2,posY:0,posZ:0,rotation:"COUNTERCLOCKWISE_90",name:"eisenbahn:v2regio_lok"} replace
execute if entity @s[y_rotation=-135..-45] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:-2,rotation:"NONE",name:"eisenbahn:v2regio_lok"} replace
execute if entity @s[y_rotation=-45..45] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:2,posY:0,posZ:0,rotation:"CLOCKWISE_90",name:"eisenbahn:v2regio_lok"} replace
execute if entity @s[y_rotation=45..135] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run setblock ~ ~1 ~ minecraft:structure_block{mode:"LOAD",posX:0,posY:0,posZ:2,rotation:"CLOCKWISE_180",name:"eisenbahn:v2regio_lok"} replace

# ICE eisenbahn:v2ice_lok
# U-Bahn eisenbahn:v2u-bahn
