# Wenn der Spieler die Richtung ändert, wird die Schwebebahn an der alten Position entfernt, sodass die Schwebebahn an der neuen Position erscheinen kann, ohne Rückstände zu hinterlassen.
execute at @e[distance=..8,type=minecraft:marker,tag=EtiSchwB.p2AltePosition,sort=nearest,limit=1] run fill ^-2 ^ ^-14 ^2 ^5 ^14 minecraft:air replace

# Der Konstruktionsblock wird platziert.
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"schwebebahn:vp2bahn",posY:0} replace

# Je nach Blickrichtung der Bahn werden bestimmte Daten übertragen.
execute if entity @s[y_rotation=45..135] run data merge block ~ ~ ~ {rotation:"NONE",posX:-14,posZ:-2}
execute if entity @s[y_rotation=135..-135] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",posX:2,posZ:-14}
execute if entity @s[y_rotation=-135..-45] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180",posX:14,posZ:2}
execute if entity @s[y_rotation=-45..45] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90",posX:-2,posZ:14}

# Der Redstone-Block wird zum Aktivieren platziert.
setblock ~ ~1 ~ minecraft:redstone_block replace

# Der Markierer für die alte Position wird an die aktuelle befördert.
teleport @e[distance=..8,type=minecraft:marker,tag=EtiSchwB.p2AltePosition,sort=nearest,limit=1] ~ ~ ~ ~ ~
