# Der Oberleitungsmast wird platziert
fill ^3 ^ ^-1 ^3 ^ ^-3 minecraft:stone_bricks replace
fill ^3 ^1 ^-2 ^3 ^4 ^-2 minecraft:cobblestone_wall replace
fill ^3 ^5 ^-2 ^3 ^6 ^-2 minecraft:spruce_fence replace
fill ^3 ^7 ^-2 ^3 ^10 ^-2 minecraft:cobblestone_wall replace

# Ganz oben beim Masten werden je nach Blickrichtung die Isolatoren platziert
execute if entity @s[y_rotation=135..-135] run fill ^2 ^10 ^-2 ^ ^10 ^-2 minecraft:spruce_fence_gate[facing=north] replace
execute if entity @s[y_rotation=-135..-45] run fill ^2 ^10 ^-2 ^ ^10 ^-2 minecraft:spruce_fence_gate[facing=east] replace
execute if entity @s[y_rotation=-45..45] run fill ^2 ^10 ^-2 ^ ^10 ^-2 minecraft:spruce_fence_gate[facing=south] replace
execute if entity @s[y_rotation=45..135] run fill ^2 ^10 ^-2 ^ ^10 ^-2 minecraft:spruce_fence_gate[facing=west] replace

# Dort wo der Oberleitungsmast platziert wird, werden die glatten Steine durch Steinziegel ersetzt
execute rotated ~ 0 run fill ^4 ^ ^-2 ^-4 ^11 ^-2 minecraft:stone_bricks replace minecraft:light_gray_stained_glass

# Als letztes wird ein Rüstungsständer platziert, der die Pfeiler erzeugt
execute align y run summon minecraft:armor_stand ^ ^-2 ^-2 {Small:true,Invulnerable:true,NoGravity:true,Tags:["EtiGBuTB.3Alle","EtiGBuTB.3Pfeiler"]}
