
execute if entity @s[y_rotation=135..-135] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=north] run setblock ~ ~1 ~ minecraft:structure_block{posX:-2,posY:0,posZ:0,ignoreEntities:true,showboundingbox:true,rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",name:"eisenbahn:v2regio_waggon"} replace
execute if entity @s[y_rotation=-135..-45] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=east] run setblock ~ ~1 ~ minecraft:structure_block{posX:0,posY:0,posZ:-2,ignoreEntities:true,showboundingbox:true,rotation:"NONE",mode:"LOAD",name:"eisenbahn:v2regio_waggon"} replace
execute if entity @s[y_rotation=-45..45] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=south] run setblock ~ ~1 ~ minecraft:structure_block{posX:2,posY:0,posZ:0,ignoreEntities:true,showboundingbox:true,rotation:"CLOCKWISE_90",mode:"LOAD",name:"eisenbahn:v2regio_waggon"} replace
execute if entity @s[y_rotation=45..135] if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta[facing=west] run setblock ~ ~1 ~ minecraft:structure_block{posX:0,posY:0,posZ:2,ignoreEntities:true,showboundingbox:true,rotation:"CLOCKWISE_180",mode:"LOAD",name:"eisenbahn:v2regio_waggon"} replace

# ICE eisenbahn:v2ice_waggon
