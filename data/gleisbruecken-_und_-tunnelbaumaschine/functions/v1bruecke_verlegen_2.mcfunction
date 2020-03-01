# Die Oberleitung wird erstellt
setblock ^1 ^ ^-1 minecraft:stone_bricks replace
setblock ^1 ^1 ^-1 minecraft:spruce_fence replace
setblock ^1 ^2 ^-1 minecraft:spruce_planks replace
setblock ^ ^1 ^-1 minecraft:powered_rail replace

# Je nach Blickrichtung, wird die Redstone-Fackel entsprechend ausgerichtet platziert
execute if entity @s[y_rotation=135..-135] run setblock ^ ^2 ^-1 minecraft:redstone_wall_torch[facing=west] replace
execute if entity @s[y_rotation=-135..-45] run setblock ^ ^2 ^-1 minecraft:redstone_wall_torch[facing=north] replace
execute if entity @s[y_rotation=-45..45] run setblock ^ ^2 ^-1 minecraft:redstone_wall_torch[facing=east] replace
execute if entity @s[y_rotation=45..135] run setblock ^ ^2 ^-1 minecraft:redstone_wall_torch[facing=south] replace

# Falls der Brückenbauer für zwei Gleisspuren ausgelegt wurde, wird für das zweite Gleis ebenfalls eine Redstone-Fackel samt Antriebsschiene platziert
execute if entity @s[tag=EtiGBuTB.1ZweiSpuren] run setblock ^2 ^1 ^-1 minecraft:powered_rail replace
execute if entity @s[tag=EtiGBuTB.1ZweiSpuren,y_rotation=135..-135] run setblock ^2 ^2 ^-1 minecraft:redstone_wall_torch[facing=east] replace
execute if entity @s[tag=EtiGBuTB.1ZweiSpuren,y_rotation=-135..-45] run setblock ^2 ^2 ^-1 minecraft:redstone_wall_torch[facing=south] replace
execute if entity @s[tag=EtiGBuTB.1ZweiSpuren,y_rotation=-45..45] run setblock ^2 ^2 ^-1 minecraft:redstone_wall_torch[facing=west] replace
execute if entity @s[tag=EtiGBuTB.1ZweiSpuren,y_rotation=45..135] run setblock ^2 ^2 ^-1 minecraft:redstone_wall_torch[facing=north] replace

# Falls der Brückenbauer sich unterm Meer befindet, wurden Glasblöcke platziert. Manche davon werden nun durch Steinziegel ersetzt, um daraus einen Ring zu bilden, der die Glasfassade hält
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGBuTB.1Gleisbett,sort=nearest,limit=2] align xyz positioned ~0.5 ~0.5 ~0.5 rotated ~ 0 run fill ^2 ^ ^ ^-2 ^4 ^ minecraft:stone_bricks replace minecraft:light_gray_stained_glass

# Ein Rüstungsständer, der den Pfeiler konstruieren wird, wird platziert und falls der Brückenbauer zwei Spuren hat, wird der Pfeiler mittig zentriert
execute align y run summon minecraft:armor_stand ^ ^-2 ^-1 {Small:true,Invulnerable:true,NoGravity:true,Tags:["EtiGBuTB.1Alle","EtiGBuTB.1Pfeiler"]}
execute align y if entity @s[tag=EtiGBuTB.1ZweiSpuren] run teleport @e[type=minecraft:armor_stand,tag=EtiGBuTB.1Pfeiler] ^1 ^-2 ^-1
