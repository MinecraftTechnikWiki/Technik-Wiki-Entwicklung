
execute as @e[type=minecraft:armor_stand,tag=EtiZonMa.3Rangfolge] store result score @s PZZonMa.3Betritt run scoreboard players add VarZonMa.3Rangfolge PZZonMa.3Betritt 1
tag @e[type=minecraft:armor_stand,tag=EtiZonMa.3Rangfolge] remove EtiZonMa.3Rangfolge

execute as @e[type=minecraft:armor_stand,tag=EtiZonMa.3Zone] at @s run function zonen-markierung:v3markierung


tag @a[tag=EtiZonMa.3Nachricht,scores={PZZonMa.3Betritt=1..}] remove EtiZonMa.3Nachricht
scoreboard players set @a PZZonMa.3Betritt 2147483647
execute as @e[type=minecraft:armor_stand,tag=EtiZonMa.3Kugel] at @s run scoreboard players operation @a[distance=..5] PZZonMa.3Betritt < @s PZZonMa.3Betritt
execute as @e[type=minecraft:armor_stand,tag=EtiZonMa.3Quader] at @s positioned ~-5 ~ ~-5 run scoreboard players operation @a[dx=10,dy=5,dz=10] PZZonMa.3Betritt < @s PZZonMa.3Betritt

execute as @e[type=minecraft:armor_stand,tag=EtiZonMa.3Zone] at @s at @a[distance=..15,tag=EtiZonMa.3Nachricht] if score @s PZZonMa.3Betritt = @p PZZonMa.3Betritt unless score @p PZZonMa.3Nummer = @s PZZonMa.3Nummer run tag @p remove EtiZonMa.3Nachricht
execute as @e[type=minecraft:armor_stand,tag=EtiZonMa.3Zone] at @s at @a[distance=..15] if score @s PZZonMa.3Betritt = @p PZZonMa.3Betritt run scoreboard players operation @p PZZonMa.3Nummer = @s PZZonMa.3Nummer

execute as @e[type=minecraft:armor_stand,tag=EtiZonMa.3Zone] at @s at @a[distance=..15,tag=!EtiZonMa.3Nachricht,scores={PZZonMa.3Betritt=..2147483646}] if score @s PZZonMa.3Betritt = @p PZZonMa.3Betritt run tellraw @p ["Zonen-Markierung.3:\n",{"text":"Sie betreten [","color":"gray","bold":true},{"entity":"@s","nbt":"ArmorItems[3].id","color":"gold","bold":true},{"entity":"@s","nbt":"CustomName","interpret":true},{"text":"]","color":"gray","bold":true}]

execute as @e[type=minecraft:armor_stand,tag=EtiZonMa.3Zone] at @s at @a[distance=..15,tag=!EtiZonMa.3Nachricht,scores={PZZonMa.3Betritt=..2147483646}] if score @s PZZonMa.3Betritt = @p PZZonMa.3Betritt run title @p actionbar ["",{"text":"Sie betreten [","color":"gray","bold":true},{"entity":"@s","nbt":"ArmorItems[3].id","color":"gold","bold":true},{"entity":"@s","nbt":"CustomName","interpret":true},{"text":"]","color":"gray","bold":true}]


tag @a[tag=!EtiZonMa.3Nachricht,scores={PZZonMa.3Betritt=..2147483646}] add EtiZonMa.3Nachricht

tellraw @a[tag=EtiZonMa.3Nachricht,scores={PZZonMa.3Betritt=2147483647}] ["Zonen-Markierung.3:\n",{"text":"Sie verlassen die Zone","color":"gray","bold":true}]
title @a[tag=EtiZonMa.3Nachricht,scores={PZZonMa.3Betritt=2147483647}] actionbar ["",{"text":"Sie verlassen die Zone","color":"gray","bold":true}]
tag @a[tag=EtiZonMa.3Nachricht,scores={PZZonMa.3Betritt=2147483647}] remove EtiZonMa.3Nachricht

scoreboard players set @a[scores={PZZonMa.3Betritt=1..}] PZZonMa.3Betritt 0

execute at @a[distance=..50] at @e[distance=..3,type=minecraft:armor_stand,tag=EtiZonMa.3Zone,tag=!EtiZonMa.3Symbol] as @e[distance=..3,type=minecraft:item,sort=nearest,limit=1] at @s run function zonen-markierung:v3drop
