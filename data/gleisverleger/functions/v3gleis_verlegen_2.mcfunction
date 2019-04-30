# Für den Masten werden Steine und Mauern platziert
fill ^3 ^ ^-1 ^3 ^ ^-3 minecraft:stone_bricks replace
fill ^3 ^1 ^-2 ^3 ^4 ^-2 minecraft:cobblestone_wall replace
fill ^3 ^5 ^-2 ^3 ^6 ^-2 minecraft:spruce_fence replace
fill ^3 ^7 ^-2 ^3 ^10 ^-2 minecraft:cobblestone_wall replace

# Je nach Blickrichtung werden die Abnehmer in Form von Zauntoren entsprechend ausgerichtet
execute if entity @s[y_rotation=135..-135] run fill ^2 ^10 ^-2 ^ ^10 ^-2 minecraft:spruce_fence_gate[facing=north] replace
execute if entity @s[y_rotation=-135..-45] run fill ^2 ^10 ^-2 ^ ^10 ^-2 minecraft:spruce_fence_gate[facing=east] replace
execute if entity @s[y_rotation=-45..45] run fill ^2 ^10 ^-2 ^ ^10 ^-2 minecraft:spruce_fence_gate[facing=south] replace
execute if entity @s[y_rotation=45..135] run fill ^2 ^10 ^-2 ^ ^10 ^-2 minecraft:spruce_fence_gate[facing=west] replace
