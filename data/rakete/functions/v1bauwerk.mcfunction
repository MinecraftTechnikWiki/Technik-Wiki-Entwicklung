
teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 0
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0

setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"rakete:v1start_rampe",posY:0} replace

# Je nach Himmelsrichtung wird der Konstruktionsblock mit entsprechenden Daten ausgestattet.
execute at @s[y_rotation=-45..45] run data merge block ~ ~ ~ {rotation:"NONE",posX:-4,posZ:-4}
execute at @s[y_rotation=45..135] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",posX:4,posZ:-4}
execute at @s[y_rotation=135..-135] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180",posX:4,posZ:4}
execute at @s[y_rotation=-135..-45] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90",posX:-4,posZ:4}

# Ein Redstone-Block wird platziert um den Konstruktionsblock zu aktivieren.
setblock ~ ~1 ~ minecraft:redstone_block replace

# Der Rüstungsständer wird entfernt.
kill @s
