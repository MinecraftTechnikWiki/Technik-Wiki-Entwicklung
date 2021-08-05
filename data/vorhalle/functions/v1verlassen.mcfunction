
scoreboard players set @s PZVorH.1Nr 0

clear @s minecraft:red_bed{EigVorH.1Alle:true}
gamemode creative @s
kill @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:red_bed",tag:{EigVorH.1Alle:true} } },sort=nearest,limit=1]
execute at @e[type=minecraft:armor_stand,tag=EtiVorH.1Teleporter] run teleport @s ~5 ~-0.5 ~ 90 0

tellraw @a[team=TMVorH.1Lobby] ["Vorhalle.1:\n",{"text":"[","color":"dark_gray"},{"text":"Minispiel","color":"gray","bold":true},{"text":"] ","color":"dark_gray"},{"selector":"@s","color":"gray","bold":true},{"text":" hat die Lobby verlassen","color":"yellow","bold":true}]

team leave @s
tag @s remove EtiVorH.1Verlassen
