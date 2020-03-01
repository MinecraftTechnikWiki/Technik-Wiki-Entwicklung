execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.4Erstellen] at @s run function tuer-_und_toranlage:v4erstellen

execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.4Torrahmen] store result score @s PZTuTor.4Zeit run scoreboard players add @s[scores={PZTuTor.4Zeit=..20}] PZTuTor.4Zeit 1

execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.4SpielerBeimTor,scores={PZTuTor.4Zeit=1}] at @s unless entity @p[distance=..8] run tag @s remove EtiTuTor.4SpielerBeimTor

execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.4Torrahmen,tag=!EtiTuTor.4SpielerBeimTor] at @s if entity @p[distance=..8] store success score @s PZTuTor.4Zeit run tag @s add EtiTuTor.4SpielerBeimTor

execute as @e[type=minecraft:armor_stand,tag=EtiTuTor.4Torrahmen,scores={PZTuTor.4Zeit=1}] at @s positioned ~ ~1 ~ run function tuer-_und_toranlage:v4tor
