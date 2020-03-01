# Der Rüstungsständer (Gleisbaumaschine) schaut immer in Richtung des nächsten Spielers
teleport @s ~ ~ ~ facing entity @p[gamemode=!spectator] feet
#execute facing entity @p[gamemode=!spectator] feet run function gleisbaumaschine:v2partikel

# Falls die Einstellung fürs Raster getroffen wurde, wird der Gleisbaumaschine nur noch genau in die vier Himmelsrichtungen schauen
execute if entity @s[tag=!EtiGleisB.2KeinRaster,y_rotation=135..-135] run teleport @s ~ ~ ~ 180 0
execute if entity @s[tag=!EtiGleisB.2KeinRaster,y_rotation=-135..-45] run teleport @s ~ ~ ~ -90 0
execute if entity @s[tag=!EtiGleisB.2KeinRaster,y_rotation=-45..45] run teleport @s ~ ~ ~ 0 0
execute if entity @s[tag=!EtiGleisB.2KeinRaster,y_rotation=45..135] run teleport @s ~ ~ ~ 90 0

# Die Rüstungsständer mit den verschiedenen Blöcken im Kopfslot werden an die entsprechende Stelle teleportiert
teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.2Gleis1,sort=nearest,limit=1] ^ ^0.5 ^1 facing entity @p[gamemode=!spectator] feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.2Gleisbett1,sort=nearest,limit=1] ^ ^ ^1 facing entity @p[gamemode=!spectator] feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.2Rechts1,sort=nearest,limit=1] ^1 ^ ^1 facing entity @p[gamemode=!spectator] feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.2Links1,sort=nearest,limit=1] ^-1 ^ ^1 facing entity @p[gamemode=!spectator] feet

# Wenn der Gleisbaumaschine zwei Spuren bauen kann, werden auch die Rüstungsständer für die zweite Spur entsprechend teleportiert
execute if entity @s[tag=EtiGleisB.2ZweiSpuren] run teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.2Gleis2,sort=nearest,limit=1] ^-2 ^0.5 ^1 facing entity @p[gamemode=!spectator] feet
execute if entity @s[tag=EtiGleisB.2ZweiSpuren] run teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.2Gleisbett2,sort=nearest,limit=1] ^-2 ^ ^1 facing entity @p[gamemode=!spectator] feet
execute if entity @s[tag=EtiGleisB.2ZweiSpuren] run teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.2Rechts2,sort=nearest,limit=1] ^-3 ^ ^1 facing entity @p[gamemode=!spectator] feet

# Wenn der Spieler eine Schiene zum Gleisbaumaschine wirft, wird dieser so erweitert, dass er zwei Schienen verlegen kann
execute if entity @p[distance=1.5..10] run tag @e[distance=..2,type=minecraft:item,tag=!EtiGleisB.2ZweiSpuren,nbt={Item:{id:"minecraft:rail",Count:1b} } ] add EtiGleisB.2ZweiSpuren
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiGleisB.2ZweiSpuren] run tag @s add EtiGleisB.2Erstellen
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiGleisB.2ZweiSpuren] run tag @s add EtiGleisB.2ZweiSpuren
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiGleisB.2ZweiSpuren] run tellraw @a[distance=..10] ["Gleisbaumaschine.2: ",{"text":"Der Gleisbaumaschine platziert nun zwei Gleisspuren","bold":true}]
kill @e[distance=..2,type=minecraft:item,tag=EtiGleisB.2ZweiSpuren]

# Wenn der Spieler einen Rüstungsständer zum Gleisbaumaschine wirft, dann wird die Raster-Stellung entfernt, sodass der Gleisbaumaschine nicht mehr nur in die vier Himmelsrichtungen schaut
execute if entity @p[distance=1.5..10] run tag @e[distance=..2,type=minecraft:item,tag=!EtiGleisB.2KeinRaster,nbt={Item:{id:"minecraft:armor_stand",Count:1b} } ] add EtiGleisB.2KeinRaster
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiGleisB.2KeinRaster] run tag @s add EtiGleisB.2KeinRaster
execute if entity @e[distance=..2,type=minecraft:item,tag=EtiGleisB.2KeinRaster] run tellraw @a[distance=..10] ["Gleisbaumaschine.2: ",{"text":"Der Gleisbaumaschine ist nicht mehr am Raster gebunden und kann nun auch diagonale Gleisspuren verlegen","bold":true}]
kill @e[distance=..2,type=minecraft:item,tag=EtiGleisB.2KeinRaster]
