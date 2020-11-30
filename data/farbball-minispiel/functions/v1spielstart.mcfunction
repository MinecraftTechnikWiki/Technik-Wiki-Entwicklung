
scoreboard players set #PaintballWartezeit PBWartezeit -1

tellraw @a[tag=PaintballWartebereich] ["",{"text":"[Paintball]","color":"gold"},{"text":" Das Spiel beginnt jetzt.\n Es kämpfen ","color":"dark_green"},{"score":{"name":"#PaintballWartezeit","objective":"PBAnzahlRot"},"color":"dark_red"},{"text":" Spieler","color":"dark_red"},{"text":" gegen ","color":"dark_green"},{"score":{"name":"#PaintballWartezeit","objective":"PBAnzahlBlau"},"color":"dark_blue"},{"text":" Spieler","color":"dark_blue"},{"text":".","color":"dark_green"}]

execute at @e[type=minecraft:armor_stand,tag=PaintballTeamBeitreten,tag=PaintballTeamRot] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:pink_concrete replace minecraft:red_concrete
execute at @e[type=minecraft:armor_stand,tag=PaintballTeamBeitreten,tag=PaintballTeamBlau] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:light_blue_concrete replace minecraft:blue_concrete

effect give @a[tag=PaintballWartebereich] minecraft:resistance 1024 255 true
effect give @a[tag=PaintballWartebereich] minecraft:saturation 1024 255 true
gamemode adventure @a[tag=PaintballWartebereich]
scoreboard players set @a[tag=PaintballWartebereich] PBLeben 11
tag @a[tag=PaintballWartebereich] add PaintballGetroffen
tag @a[tag=PaintballWartebereich] remove PaintballWartebereich
