# Der Rüstungsständer (Gleisbaumaschine) schaut immer in Richtung des nächsten Spielers
teleport @s ~ ~ ~ facing entity @p feet

# Falls die Einstellung fürs Raster getroffen wurde, wird der Gleisbaumaschine nur noch genau in die vier Himmelsrichtungen schauen
execute if entity @s[y_rotation=135..-135] rotated 180 0 run teleport @s ~ ~ ~ 180 ~
execute if entity @s[y_rotation=-135..-45] rotated -90 0 run teleport @s ~ ~ ~ -90 ~
execute if entity @s[y_rotation=-45..45] rotated 0 0 run teleport @s ~ ~ ~ 0 ~
execute if entity @s[y_rotation=45..135] rotated 90 0 run teleport @s ~ ~ ~ 90 ~

# Die Rüstungsständer mit den verschiedenen Blöcken im Kopfslot werden an die entsprechende Stelle teleportiert
teleport @e[type=minecraft:armor_stand,tag=EtiStraB.1StrasseMitte,sort=nearest,limit=1] ^ ^ ^2 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiStraB.1StrasseRechts,sort=nearest,limit=1] ^1 ^ ^2 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiStraB.1StrasseLinks,sort=nearest,limit=1] ^-1 ^ ^2 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiStraB.1RandRechts,sort=nearest,limit=1] ^2 ^ ^2 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiStraB.1RandLinks,sort=nearest,limit=1] ^-2 ^ ^2 facing entity @p feet
