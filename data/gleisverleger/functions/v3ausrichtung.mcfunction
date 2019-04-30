# Der Gleisverleger schaut immer zum nächstgelegenen Spieler
teleport @s ~ ~ ~ facing entity @p feet

# Damit der Gleisverleger aber nur genau in eine Himmelsrichtung schauen kann, wird die Blickrichtung des Spielers abgefragt und die des Gleisverlegers entsprechend angepasst
execute if entity @s[y_rotation=135..-135] rotated 180 0 run teleport @s ~ ~ ~ 180 ~
execute if entity @s[y_rotation=-135..-45] rotated -90 0 run teleport @s ~ ~ ~ -90 ~
execute if entity @s[y_rotation=-45..45] rotated 0 0 run teleport @s ~ ~ ~ 0 ~
execute if entity @s[y_rotation=45..135] rotated 90 0 run teleport @s ~ ~ ~ 90 ~

# Die Rüstungsständer mit den Materialien werden entsprechend dem Gleismuster am Gleisverleger angeordnet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.3SchieneRechts,sort=nearest,limit=1] ^1 ^0.5 ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.3SchieneLinks,sort=nearest,limit=1] ^-1 ^0.5 ^1 facing entity @p feet

teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.3Rechts1,sort=nearest,limit=1] ^3 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.3Links1,sort=nearest,limit=1] ^-3 ^ ^1 facing entity @p feet

teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.3SchwelleRechts1,sort=nearest,limit=1] ^2 ^0.5 ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.3SchwelleMitte1,sort=nearest,limit=1] ^ ^0.5 ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.3SchwelleLinks1,sort=nearest,limit=1] ^-2 ^0.5 ^1 facing entity @p feet

teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.3Schotter1,sort=nearest,limit=1] ^2 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.3Schotter2,sort=nearest,limit=1] ^1 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.3Schotter3,sort=nearest,limit=1] ^-1 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisV.3Schotter4,sort=nearest,limit=1] ^-2 ^ ^1 facing entity @p feet
