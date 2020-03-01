# Der Brückenbauer schaut immer zum Spieler
teleport @s ~ ~ ~ facing entity @p feet

# Anschließend wird er dann auf eine der vier Himmelsrichtungen ausgerichtet
execute if entity @s[y_rotation=135..-135] run teleport @s ~ ~ ~ 180 0
execute if entity @s[y_rotation=-135..-45] run teleport @s ~ ~ ~ -90 0
execute if entity @s[y_rotation=-45..45] run teleport @s ~ ~ ~ 0 0
execute if entity @s[y_rotation=45..135] run teleport @s ~ ~ ~ 90 0

# Alle Rüstungsständer mit dem entsprechenden Block im Kopfslot werden so ausgerichtet und positioniert, dass sie die mögliche Gleisspur anzeigen
teleport @e[type=minecraft:armor_stand,tag=EtiGBuTB.3SchieneRechts,sort=nearest,limit=1] ^1 ^0.5 ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGBuTB.3SchieneLinks,sort=nearest,limit=1] ^-1 ^0.5 ^1 facing entity @p feet

teleport @e[type=minecraft:armor_stand,tag=EtiGBuTB.3Rechts1,sort=nearest,limit=1] ^3 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGBuTB.3Links1,sort=nearest,limit=1] ^-3 ^ ^1 facing entity @p feet

teleport @e[type=minecraft:armor_stand,tag=EtiGBuTB.3SchwelleRechts1,sort=nearest,limit=1] ^2 ^0.5 ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGBuTB.3SchwelleMitte1,sort=nearest,limit=1] ^ ^0.5 ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGBuTB.3SchwelleLinks1,sort=nearest,limit=1] ^-2 ^0.5 ^1 facing entity @p feet

teleport @e[type=minecraft:armor_stand,tag=EtiGBuTB.3Schotter1,sort=nearest,limit=1] ^2 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGBuTB.3Schotter2,sort=nearest,limit=1] ^1 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGBuTB.3Schotter3,sort=nearest,limit=1] ^-1 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGBuTB.3Schotter4,sort=nearest,limit=1] ^-2 ^ ^1 facing entity @p feet
