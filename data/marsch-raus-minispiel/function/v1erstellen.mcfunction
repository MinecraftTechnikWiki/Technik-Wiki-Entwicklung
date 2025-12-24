
scoreboard players set VarMADNMS.1Farbe PZMADNMS.1Team 0

function marsch-raus-minispiel:v1spielfeld

execute at @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Haus] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,NoBasePlate:true,DisabledSlots:4144959,Team:"TMMADNMS.1Rot",Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Figur","EtiMADNMS.1Neu"],equipment:{feet:{id:"leather_boots",count:1},legs:{id:"leather_leggings",count:1},chest:{id:"leather_chestplate",count:1},head:{id:"leather_helmet",count:1} } }

execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,tag=EtiMADNMS.1Neu] at @s run scoreboard players operation @s PZMADNMS.1Wert = @n[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Haus] PZMADNMS.1Wert

execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,tag=EtiMADNMS.1Neu] at @s run scoreboard players operation @s PZMADNMS.1Team = @n[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Haus] PZMADNMS.1Team

execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,tag=EtiMADNMS.1Neu,scores={PZMADNMS.1Team=1}] store result entity @s equipment.feet.components.minecraft:dyed_color int 1 store result entity @s equipment.legs.components.minecraft:dyed_color int 1 store result entity @s equipment.chest.components.minecraft:dyed_color int 1 store result entity @s equipment.head.components.minecraft:dyed_color int 1 run scoreboard players get KonstMADNMS.1ORANGE PZMADNMS.1Team
execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,tag=EtiMADNMS.1Neu,scores={PZMADNMS.1Team=2}] store result entity @s equipment.feet.components.minecraft:dyed_color int 1 store result entity @s equipment.legs.components.minecraft:dyed_color int 1 store result entity @s equipment.chest.components.minecraft:dyed_color int 1 store result entity @s equipment.head.components.minecraft:dyed_color int 1 run scoreboard players get KonstMADNMS.1BLAU PZMADNMS.1Team
execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,tag=EtiMADNMS.1Neu,scores={PZMADNMS.1Team=3}] store result entity @s equipment.feet.components.minecraft:dyed_color int 1 store result entity @s equipment.legs.components.minecraft:dyed_color int 1 store result entity @s equipment.chest.components.minecraft:dyed_color int 1 store result entity @s equipment.head.components.minecraft:dyed_color int 1 run scoreboard players get KonstMADNMS.1VIOLETT PZMADNMS.1Team
execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,tag=EtiMADNMS.1Neu,scores={PZMADNMS.1Team=4}] store result entity @s equipment.feet.components.minecraft:dyed_color int 1 store result entity @s equipment.legs.components.minecraft:dyed_color int 1 store result entity @s equipment.chest.components.minecraft:dyed_color int 1 store result entity @s equipment.head.components.minecraft:dyed_color int 1 run scoreboard players get KonstMADNMS.1GRUEN PZMADNMS.1Team

team join TMMADNMS.1Blau @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,tag=EtiMADNMS.1Neu,scores={PZMADNMS.1Team=2}]
team join TMMADNMS.1Gruen @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,tag=EtiMADNMS.1Neu,scores={PZMADNMS.1Team=3}]
team join TMMADNMS.1Gelb @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,tag=EtiMADNMS.1Neu,scores={PZMADNMS.1Team=4}]

execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,tag=EtiMADNMS.1Neu] positioned as @s rotated as @n[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Haus] run teleport @s ~ ~ ~ ~ ~

tag @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur,tag=EtiMADNMS.1Neu] remove EtiMADNMS.1Neu

fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:white_concrete replace

tag @s remove EtiMADNMS.1Erstellen
tag @s add EtiMADNMS.1Team

scoreboard players set @s PZMADNMS.1Team 0
scoreboard players set @s PZMADNMS.1Drop 1

teleport @s ~ ~1 ~


#execute as @e[type=minecraft:armor_stand,tag=EtiMADNMS.1Figur] if score @s PZMADNMS.1Team = @p PZMADNMS.1Team run data modify entity @s DisabledSlots set value 4144943
