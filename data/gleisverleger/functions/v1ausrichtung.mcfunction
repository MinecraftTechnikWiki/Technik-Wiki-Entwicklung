# Der Rüstungsständer (Gleisverleger) schaut immer in Richtung des nächsten Spielers
teleport @s ~ ~ ~ facing entity @p feet

# Falls die Einstellung fürs Raster getroffen wurde, wird der Gleisverleger nur noch genau in die vier Himmelsrichtungen schauen
execute if entity @s[tag=!EtiGleisV.1KeinRaster,y_rotation=135..-135] rotated 180 0 run teleport @s ~ ~ ~ 180 ~
execute if entity @s[tag=!EtiGleisV.1KeinRaster,y_rotation=-135..-45] rotated -90 0 run teleport @s ~ ~ ~ -90 ~
execute if entity @s[tag=!EtiGleisV.1KeinRaster,y_rotation=-45..45] rotated 0 0 run teleport @s ~ ~ ~ 0 ~
execute if entity @s[tag=!EtiGleisV.1KeinRaster,y_rotation=45..135] rotated 90 0 run teleport @s ~ ~ ~ 90 ~

# Die Rüstungsständer mit den verschiedenen Blöcken im Kopfslot werden an die entsprechende Stelle teleportiert
teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.1Gleis1,sort=nearest,limit=1] ^ ^0.5 ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.1Gleisbett1,sort=nearest,limit=1] ^ ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.1Rechts1,sort=nearest,limit=1] ^1 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.1Links1,sort=nearest,limit=1] ^-1 ^ ^1 facing entity @p feet

# Wenn der Gleisverleger zwei Spuren bauen kann, werden auch die Rüstungsständer für die zweite Spur entsprechend teleportiert
execute if entity @s[tag=EtiGleisV.1ZweiSpuren] run teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.1Gleis2,sort=nearest,limit=1] ^-2 ^0.5 ^1 facing entity @p feet
execute if entity @s[tag=EtiGleisV.1ZweiSpuren] run teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.1Gleisbett2,sort=nearest,limit=1] ^-2 ^ ^1 facing entity @p feet
execute if entity @s[tag=EtiGleisV.1ZweiSpuren] run teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.1Rechts2,sort=nearest,limit=1] ^-3 ^ ^1 facing entity @p feet

# Wenn der Spieler eine Schiene zum Gleisverleger wirft, wird dieser so erweitert, dass er zwei Schienen verlegen kann
execute if entity @p[distance=1.5..10] run tag @e[distance=..2,type=minecraft:item,tag=!EtiGleisV.1ZweiSpuren,nbt={Item:{id:"minecraft:rail",Count:1b} } ] add EtiGleisV.1ZweiSpuren
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiGleisV.1ZweiSpuren] run tag @s add EtiGleisV.1Erstellen
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiGleisV.1ZweiSpuren] run tag @s add EtiGleisV.1ZweiSpuren
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiGleisV.1ZweiSpuren] run tellraw @a[distance=..10] ["Gleisverleger.1: ",{"text":"Der Gleisverleger platziert nun zwei Gleisspuren","bold":true}]
kill @e[distance=..2,type=minecraft:item,tag=EtiGleisV.1ZweiSpuren]

# Wenn der Spieler einen Rüstungsständer zum Gleisverleger wirft, dann wird die Raster-Stellung entfernt, sodass der Gleisverleger nicht mehr nur in die vier Himmelsrichtungen schaut
execute if entity @p[distance=1.5..10] run tag @e[distance=..2,type=minecraft:item,tag=!EtiGleisV.1KeinRaster,nbt={Item:{id:"minecraft:armor_stand",Count:1b} } ] add EtiGleisV.1KeinRaster
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiGleisV.1KeinRaster] run tag @s add EtiGleisV.1KeinRaster
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiGleisV.1KeinRaster] run tellraw @a[distance=..10] ["Gleisverleger.1: ",{"text":"Der Gleisverleger ist nicht mehr am Raster gebunden und kann nun auch diagonale Gleisspuren verlegen","bold":true}]
kill @e[distance=..2,type=minecraft:item,tag=EtiGleisV.1KeinRaster]
