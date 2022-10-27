# Die Lore wird ausgerichtet.
teleport @e[type=minecraft:armor_stand,tag=EtiStraBM.1Halter,sort=nearest,limit=1] ^ ^1 ^-3 facing entity @s feet

# Alle Material-Rüstungsständer werden entsprechend der Spur ausgerichtet.
teleport @e[type=minecraft:armor_stand,tag=EtiStraBM.1Mitte,sort=nearest,limit=1] ^ ^ ^-4 facing entity @s feet

teleport @e[type=minecraft:armor_stand,tag=EtiStraBM.1Rechts1,sort=nearest,limit=1] ^1 ^ ^-4 facing entity @s feet
teleport @e[type=minecraft:armor_stand,tag=EtiStraBM.1Links1,sort=nearest,limit=1] ^-1 ^ ^-4 facing entity @s feet

teleport @e[type=minecraft:armor_stand,tag=EtiStraBM.1Rechts2,sort=nearest,limit=1] ^2 ^ ^-4 facing entity @s feet
teleport @e[type=minecraft:armor_stand,tag=EtiStraBM.1Rechts3,sort=nearest,limit=1] ^3 ^1 ^-4 facing entity @s feet
teleport @e[type=minecraft:armor_stand,tag=EtiStraBM.1Rechts4,sort=nearest,limit=1] ^4 ^1 ^-4 facing entity @s feet

teleport @e[type=minecraft:armor_stand,tag=EtiStraBM.1Links2,sort=nearest,limit=1] ^-2 ^ ^-4 facing entity @s feet
teleport @e[type=minecraft:armor_stand,tag=EtiStraBM.1Links3,sort=nearest,limit=1] ^-3 ^1 ^-4 facing entity @s feet
teleport @e[type=minecraft:armor_stand,tag=EtiStraBM.1Links4,sort=nearest,limit=1] ^-4 ^1 ^-4 facing entity @s feet

# Falls die Option für eine Zweierspur eingestellt ist, werden die zwei inersten Rüstungsständer mit dem weißen Beton um einen Block nach außen teleportiert und alle anderen Rüstungsständer um zwei Blöcke bewegt.
execute if entity @e[distance=..2,type=minecraft:marker,tag=EtiStraBM.1Baumaschine,name="wahr",sort=nearest,limit=1] as @e[type=minecraft:armor_stand,tag=EtiStraBM.1SpurBett,tag=!EtiStraBM.1Mitte,sort=nearest,limit=2] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiStraBM.1Mitte,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^-1

execute if entity @e[distance=..2,type=minecraft:marker,tag=EtiStraBM.1Baumaschine,name="wahr",sort=nearest,limit=1] as @e[type=minecraft:armor_stand,tag=EtiStraBM.1Spur,sort=nearest,limit=6] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiStraBM.1Mitte,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^-2
