
scoreboard players set @s PZWartH.1Nr 0

clear @s minecraft:red_bed{EigWartH.1Alle:true}
gamemode creative @s
kill @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:red_bed",tag:{EigWartH.1Alle:true} } },sort=nearest,limit=1]
execute at @e[type=minecraft:armor_stand,tag=EtiWartH.1Teleporter] run teleport @s ~5 ~-0.5 ~ 90 0

tellraw @a[team=TMWartH.1Lobby] ["Wartehalle.1:\n",{"text":"[","color":"dark_gray"},{"text":"Minispiel","color":"gray","bold":true},{"text":"] ","color":"dark_gray"},{"selector":"@s","color":"gray","bold":true},{"text":" hat die Lobby verlassen","color":"yellow","bold":true}]

team leave @s
tag @s remove EtiWartH.1Verlassen
