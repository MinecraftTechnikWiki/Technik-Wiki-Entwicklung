# Je nach Blickwinkel des Spielers wird der jeweilige Konstruktionsblock platziert
execute as @p if entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-2,posY:0,posZ:-2,name:"gleisbaumaschine:v1gleiskurve"} replace
execute as @p if entity @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:2,posY:0,posZ:-2,name:"gleisbaumaschine:v1gleiskurve"} replace
execute as @p if entity @s[y_rotation=45..135] run setblock ~ ~ ~ minecraft:structure_block{rotation:"CLOCKWISE_180",mode:"LOAD",posX:2,posY:0,posZ:2,name:"gleisbaumaschine:v1gleiskurve"} replace
execute as @p if entity @s[y_rotation=135..-135] run setblock ~ ~ ~ minecraft:structure_block{rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:-2,posY:0,posZ:2,name:"gleisbaumaschine:v1gleiskurve"} replace
