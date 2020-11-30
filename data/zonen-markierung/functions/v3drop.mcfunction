
data modify entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiZonMa.3Zone,tag=!EtiZonMa.3Symbol,sort=nearest,limit=1] ArmorItems[3] set from entity @s Item

execute store result score @e[distance=..3,type=minecraft:armor_stand,tag=EtiZonMa.3Zone,tag=!EtiZonMa.3Symbol,sort=nearest,limit=1] PZZonMa.3Nummer run data get entity @s Item.id

tag @e[distance=..3,type=minecraft:armor_stand,tag=EtiZonMa.3Zone,tag=!EtiZonMa.3Symbol,sort=nearest,limit=1] add EtiZonMa.3Symbol

kill @s

execute as @e[type=minecraft:armor_stand,tag=EtiZonMa.3Zone,tag=EtiZonMa.3Symbol] at @s run data modify entity @e[distance=..9,type=minecraft:armor_stand,tag=EtiZonMa.3Zone,tag=!EtiZonMa.3Symbol,sort=nearest,limit=1] ArmorItems[3] set from entity @s ArmorItems[3]

execute as @e[type=minecraft:armor_stand,tag=EtiZonMa.3Zone,tag=EtiZonMa.3Symbol] at @s run scoreboard players operation @e[distance=..9,type=minecraft:armor_stand,tag=EtiZonMa.3Zone,tag=!EtiZonMa.3Symbol,sort=nearest,limit=1] PZZonMa.3Nummer = @s PZZonMa.3Nummer

execute as @e[type=minecraft:armor_stand,tag=EtiZonMa.3Zone,tag=!EtiZonMa.3Symbol] at @s if entity @e[distance=..9,type=minecraft:armor_stand,tag=EtiZonMa.3Zone,tag=EtiZonMa.3Symbol,sort=nearest,limit=1] run tag @s add EtiZonMa.3Symbol
