
teleport @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Rechts1,sort=nearest,limit=1] ^1 ^ ^4 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Links1,sort=nearest,limit=1] ^-1 ^ ^4 facing entity @p feet

teleport @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Rechts2,sort=nearest,limit=1] ^2 ^ ^4 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Rechts3,sort=nearest,limit=1] ^3 ^1 ^4 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Rechts4,sort=nearest,limit=1] ^4 ^1 ^4 facing entity @p feet

teleport @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Links2,sort=nearest,limit=1] ^-2 ^ ^4 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Links3,sort=nearest,limit=1] ^-3 ^1 ^4 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Links4,sort=nearest,limit=1] ^-4 ^1 ^4 facing entity @p feet


# Falls die Option für eine Zweierspur eingestellt wurde, werden die zwei inersten Rüstungsständer mit dem weißen Beton um einen Block nach außen teleportiert und alle anderen Rüstungsständer um zwei Blöcke bewegt.
execute if entity @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="wahr",sort=nearest,limit=1] as @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Kanalbett,tag=!EtiStrBTBM.1Mitte,sort=nearest,limit=2] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Mitte,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^-1

execute if entity @e[distance=..10,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="wahr",sort=nearest,limit=1] as @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Spur,sort=nearest,limit=6] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Mitte,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^-2
