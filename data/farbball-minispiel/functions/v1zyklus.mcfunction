
execute as @e[type=minecraft:armor_stand,tag=EtiFarbB.1Farbe] at @s if entity @p[distance=..3] run function farbball-minispiel:v1farbe

execute if entity @p[team=PBTeamRot,tag=PaintballWartebereich] if entity @p[team=PBTeamBlau,tag=PaintballWartebereich] run scoreboard players add #PaintballWartezeit PBWartezeit 1
execute if score #PaintballWartezeit PBWartezeit matches 0 run tellraw @a[tag=PaintballWartebereich] ["",{"text":"[Paintball] ","color":"gold"},{"text":"Das Spiel beginnt in 30 Sekunden.","color":"dark_green"}]
execute if score #PaintballWartezeit PBWartezeit matches 100 run tellraw @a[tag=PaintballWartebereich] ["",{"text":"[Paintball] ","color":"gold"},{"text":"Das Spiel beginnt in 25 Sekunden.","color":"dark_green"}]
execute if score #PaintballWartezeit PBWartezeit matches 200 run tellraw @a[tag=PaintballWartebereich] ["",{"text":"[Paintball] ","color":"gold"},{"text":"Das Spiel beginnt in 20 Sekunden.","color":"dark_green"}]
execute if score #PaintballWartezeit PBWartezeit matches 300 run tellraw @a[tag=PaintballWartebereich] ["",{"text":"[Paintball] ","color":"gold"},{"text":"Das Spiel beginnt in 15 Sekunden.","color":"dark_green"}]
execute if score #PaintballWartezeit PBWartezeit matches 400 run tellraw @a[tag=PaintballWartebereich] ["",{"text":"[Paintball] ","color":"gold"},{"text":"Das Spiel beginnt in 10 Sekunden.","color":"dark_green"}]
execute if score #PaintballWartezeit PBWartezeit matches 500 run tellraw @a[tag=PaintballWartebereich] ["",{"text":"[Paintball] ","color":"gold"},{"text":"Das Spiel beginnt in 5 Sekunden.","color":"dark_green"}]
execute if score #PaintballWartezeit PBWartezeit matches 540 run tellraw @a[tag=PaintballWartebereich] ["",{"text":"[Paintball] ","color":"gold"},{"text":"Das Spiel beginnt in 3 Sekunden.","color":"dark_green"}]
execute if score #PaintballWartezeit PBWartezeit matches 560 run tellraw @a[tag=PaintballWartebereich] ["",{"text":"[Paintball] ","color":"gold"},{"text":"Das Spiel beginnt in 2 Sekunden.","color":"dark_green"}]
execute if score #PaintballWartezeit PBWartezeit matches 580 run tellraw @a[tag=PaintballWartebereich] ["",{"text":"[Paintball] ","color":"gold"},{"text":"Das Spiel beginnt in 1 Sekunde.","color":"dark_green"}]
execute if score #PaintballWartezeit PBWartezeit matches 600 run function farbball-minispiel:v1spielstart

execute if entity @p[team=PBTeamBlau,tag=!PaintballGetroffen,scores={PBLeben=1..}] run function farbball-minispiel:v1sieg_blau
execute if entity @p[team=PBTeamRot,tag=!PaintballGetroffen,scores={PBLeben=1..}] run function farbball-minispiel:v1sieg_rot

execute at @e[type=minecraft:armor_stand,tag=PaintballTeamStartpunkt] positioned ~-4 0 ~-4 run kill @e[dx=8,dy=256,dz=8,type=minecraft:snowball]

execute at @a[team=PBTeamRot,tag=!PaintballWartebereich] run tag @e[distance=..2,type=minecraft:snowball,tag=!PBTeamBlau] add PBTeamRot
execute at @a[team=PBTeamBlau,tag=!PaintballWartebereich] run tag @e[distance=..2,type=minecraft:snowball,tag=!PBTeamRot] add PBTeamBlau

execute at @e[tag=PBTeamRot] run tag @a[distance=..2,team=PBTeamBlau,tag=!PaintballWartebereich,sort=nearest,limit=1] add PaintballGetroffen
execute at @e[tag=PBTeamBlau] run tag @a[distance=..2,team=PBTeamRot,tag=!PaintballWartebereich,sort=nearest,limit=1] add PaintballGetroffen
execute as @a[tag=PaintballGetroffen] at @s run function farbball-minispiel:v1getroffen

execute at @e[type=minecraft:snowball,tag=PBTeamRot] run kill @e[distance=1..2,type=minecraft:armor_stand,tag=PBTeamRot]
execute at @e[type=minecraft:snowball,tag=PBTeamBlau] run kill @e[distance=1..2,type=minecraft:armor_stand,tag=PBTeamBlau]

execute at @e[type=minecraft:snowball,tag=PBTeamRot] run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,Marker:true,Tags:["PBTeamRot","PaintballBall"]}
execute at @e[type=minecraft:snowball,tag=PBTeamBlau] run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,Marker:true,Tags:["PBTeamBlau","PaintballBall"]}
kill @e[type=minecraft:armor_stand,tag=PaintballBall,nbt={OnGround:true}]

scoreboard players add @e[type=minecraft:armor_stand,tag=PaintballBall] PBAlter 1
kill @e[type=minecraft:armor_stand,tag=PaintballBall,scores={PBAlter=8..}]
