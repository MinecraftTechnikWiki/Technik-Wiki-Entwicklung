# In Blickrichtung des Gleisverlegers wird die Antriebsschiene wie auch die Oberleitung platziert
setblock ^1 ^ ^-1 minecraft:stone_bricks replace
setblock ^1 ^1 ^-1 minecraft:spruce_fence replace
setblock ^1 ^2 ^-1 minecraft:spruce_planks replace
setblock ^ ^1 ^-1 minecraft:powered_rail replace

# Je nach Blickrichtung wird die Redstone-Fackel entsprechend platziert
execute if entity @s[y_rotation=135..-135] run setblock ^ ^2 ^-1 minecraft:redstone_wall_torch[facing=west] replace
execute if entity @s[y_rotation=-135..-45] run setblock ^ ^2 ^-1 minecraft:redstone_wall_torch[facing=north] replace
execute if entity @s[y_rotation=-45..45] run setblock ^ ^2 ^-1 minecraft:redstone_wall_torch[facing=east] replace
execute if entity @s[y_rotation=45..135] run setblock ^ ^2 ^-1 minecraft:redstone_wall_torch[facing=south] replace

# Falls es sich um einen Verleger mit zwei Spuren handelt, wird auch eine zweite Antriebsschiene und die Redstone-Fackel platziert
execute if entity @s[tag=EtiGleisV.1ZweiSpuren] run setblock ^2 ^1 ^-1 minecraft:powered_rail replace
execute if entity @s[tag=EtiGleisV.1ZweiSpuren,y_rotation=135..-135] run setblock ^2 ^2 ^-1 minecraft:redstone_wall_torch[facing=east] replace
execute if entity @s[tag=EtiGleisV.1ZweiSpuren,y_rotation=-135..-45] run setblock ^2 ^2 ^-1 minecraft:redstone_wall_torch[facing=south] replace
execute if entity @s[tag=EtiGleisV.1ZweiSpuren,y_rotation=-45..45] run setblock ^2 ^2 ^-1 minecraft:redstone_wall_torch[facing=west] replace
execute if entity @s[tag=EtiGleisV.1ZweiSpuren,y_rotation=45..135] run setblock ^2 ^2 ^-1 minecraft:redstone_wall_torch[facing=north] replace
