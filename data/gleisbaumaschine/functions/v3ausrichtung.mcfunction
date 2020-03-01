# Der Gleisbaumaschine schaut immer zum nächstgelegenen Spieler
teleport @s ~ ~ ~ facing entity @p feet

# Damit der Gleisbaumaschine aber nur genau in eine Himmelsrichtung schauen kann, wird die Blickrichtung des Spielers abgefragt und die des Gleisbaumaschines entsprechend angepasst
execute if entity @s[y_rotation=135..-135] run teleport @s ~ ~ ~ 180 0
execute if entity @s[y_rotation=-135..-45] run teleport @s ~ ~ ~ -90 0
execute if entity @s[y_rotation=-45..45] run teleport @s ~ ~ ~ 0 0
execute if entity @s[y_rotation=45..135] run teleport @s ~ ~ ~ 90 0

# Die Rüstungsständer mit den Materialien werden entsprechend dem Gleismuster am Gleisbaumaschine angeordnet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.3SchieneRechts,sort=nearest,limit=1] ^1 ^0.5 ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.3SchieneLinks,sort=nearest,limit=1] ^-1 ^0.5 ^1 facing entity @p feet

teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.3Rechts1,sort=nearest,limit=1] ^3 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.3Links1,sort=nearest,limit=1] ^-3 ^ ^1 facing entity @p feet

teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.3SchwelleRechts1,sort=nearest,limit=1] ^2 ^0.5 ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.3SchwelleMitte1,sort=nearest,limit=1] ^ ^0.5 ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.3SchwelleLinks1,sort=nearest,limit=1] ^-2 ^0.5 ^1 facing entity @p feet

teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.3Schotter1,sort=nearest,limit=1] ^2 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.3Schotter2,sort=nearest,limit=1] ^1 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.3Schotter3,sort=nearest,limit=1] ^-1 ^ ^1 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiGleisB.3Schotter4,sort=nearest,limit=1] ^-2 ^ ^1 facing entity @p feet
