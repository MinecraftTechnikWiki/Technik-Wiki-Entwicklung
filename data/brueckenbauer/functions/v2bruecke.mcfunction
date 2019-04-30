# Je nach Blickwinkel des Spielers wird der entsprechende Konstruktionsblock platziert
execute as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"brueckenbauer:v2brueckenstrecke"} replace
execute as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:1,posY:0,posZ:-1,name:"brueckenbauer:v2brueckenstrecke"} replace
