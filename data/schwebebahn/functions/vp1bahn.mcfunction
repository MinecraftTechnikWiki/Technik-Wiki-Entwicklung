# Wenn der Spieler die Richtung ändert, wird die Schwebebahn an der alten Position entfernt, sodass die Schwebebahn an der neuen Position erscheinen kann, ohne Rückstände zu hinterlassen.
execute at @e[distance=..8,type=minecraft:marker,tag=EtiSchwB.p1AltePosition,sort=nearest,limit=1] run fill ^-2 ^ ^-20 ^2 ^5 ^20 minecraft:air replace

# Zwei Konstruktionsblöcke für den vorderen und den hinteren Teil der Bahn werden platziert.
setblock ^ ^ ^1 minecraft:structure_block{mode:"LOAD",name:"schwebebahn:vp1bahn",posY:0} replace
setblock ^ ^ ^-1 minecraft:structure_block{mode:"LOAD",name:"schwebebahn:vp1bahn",posY:0} replace

# Je nach Blickrcihtung werden die beiden Blöcke mit Daten versorgt.
execute if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run data merge block ~-1 ~ ~ {rotation:"NONE",posX:-19,posZ:-2}
execute if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run data merge block ~1 ~ ~ {rotation:"CLOCKWISE_180",mirror:"LEFT_RIGHT",posX:19,posZ:-2}

execute if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run data merge block ~ ~ ~-1 {rotation:"CLOCKWISE_90",posX:2,posZ:-19}
execute if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run data merge block ~ ~ ~1 {rotation:"COUNTERCLOCKWISE_90",mirror:"LEFT_RIGHT",posX:2,posZ:19}

# Danach werden die Blöcke mit Redstone-Blöcken aktiviert.
fill ^ ^1 ^-1 ^ ^1 ^1 minecraft:redstone_block replace

# Der Markierer für die alte Position wird an die aktuelle befördert.
teleport @e[distance=..8,type=minecraft:marker,tag=EtiSchwB.p1AltePosition,sort=nearest,limit=1] ~ ~ ~ ~ ~
