
execute as @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Farbe] at @s if entity @p[distance=..3] run function farbball-minispiel:v1farbe

execute if entity @p[team=TMFarBMi.1Rot,tag=EtiFarBMi.1Warten] if entity @p[team=TMFarBMi.1Blau,tag=EtiFarBMi.1Warten] run scoreboard players add VarFarBMi.1Wartezeit PZFarBMi.1Wert 1

execute if score VarFarBMi.1Wartezeit PZFarBMi.1Wert matches 0 run tellraw @a[tag=EtiFarBMi.1Warten] ["",{"text":"[Farbball] ","color":"gold"},{"text":"Das Spiel beginnt in 30 Sekunden.","color":"dark_green"}]
execute if score VarFarBMi.1Wartezeit PZFarBMi.1Wert matches 100 run tellraw @a[tag=EtiFarBMi.1Warten] ["",{"text":"[Farbball] ","color":"gold"},{"text":"Das Spiel beginnt in 25 Sekunden.","color":"dark_green"}]
execute if score VarFarBMi.1Wartezeit PZFarBMi.1Wert matches 200 run tellraw @a[tag=EtiFarBMi.1Warten] ["",{"text":"[Farbball] ","color":"gold"},{"text":"Das Spiel beginnt in 20 Sekunden.","color":"dark_green"}]
execute if score VarFarBMi.1Wartezeit PZFarBMi.1Wert matches 300 run tellraw @a[tag=EtiFarBMi.1Warten] ["",{"text":"[Farbball] ","color":"gold"},{"text":"Das Spiel beginnt in 15 Sekunden.","color":"dark_green"}]
execute if score VarFarBMi.1Wartezeit PZFarBMi.1Wert matches 400 run tellraw @a[tag=EtiFarBMi.1Warten] ["",{"text":"[Farbball] ","color":"gold"},{"text":"Das Spiel beginnt in 10 Sekunden.","color":"dark_green"}]
execute if score VarFarBMi.1Wartezeit PZFarBMi.1Wert matches 500 run tellraw @a[tag=EtiFarBMi.1Warten] ["",{"text":"[Farbball] ","color":"gold"},{"text":"Das Spiel beginnt in 5 Sekunden.","color":"dark_green"}]
execute if score VarFarBMi.1Wartezeit PZFarBMi.1Wert matches 540 run tellraw @a[tag=EtiFarBMi.1Warten] ["",{"text":"[Farbball] ","color":"gold"},{"text":"Das Spiel beginnt in 3 Sekunden.","color":"dark_green"}]
execute if score VarFarBMi.1Wartezeit PZFarBMi.1Wert matches 560 run tellraw @a[tag=EtiFarBMi.1Warten] ["",{"text":"[Farbball] ","color":"gold"},{"text":"Das Spiel beginnt in 2 Sekunden.","color":"dark_green"}]
execute if score VarFarBMi.1Wartezeit PZFarBMi.1Wert matches 580 run tellraw @a[tag=EtiFarBMi.1Warten] ["",{"text":"[Farbball] ","color":"gold"},{"text":"Das Spiel beginnt in 1 Sekunde.","color":"dark_green"}]
execute if score VarFarBMi.1Wartezeit PZFarBMi.1Wert matches 600 run function farbball-minispiel:v1spielstart

execute if entity @p[team=TMFarBMi.1Blau,tag=!EtiFarBMi.1Getroffen,scores={PZFarBMi.1Leben=1..}] run function farbball-minispiel:v1sieg_blau
execute if entity @p[team=TMFarBMi.1Rot,tag=!EtiFarBMi.1Getroffen,scores={PZFarBMi.1Leben=1..}] run function farbball-minispiel:v1sieg_rot

execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Startpunkt] positioned ~-4 0 ~-4 run kill @e[dx=8,dy=256,dz=8,type=minecraft:snowball]

execute at @a[team=TMFarBMi.1Rot,tag=!EtiFarBMi.1Warten] run tag @e[distance=..2,type=minecraft:snowball,tag=!TMFarBMi.1Blau] add TMFarBMi.1Rot
execute at @a[team=TMFarBMi.1Blau,tag=!EtiFarBMi.1Warten] run tag @e[distance=..2,type=minecraft:snowball,tag=!TMFarBMi.1Rot] add TMFarBMi.1Blau

execute at @e[tag=TMFarBMi.1Rot] run tag @a[distance=..2,team=TMFarBMi.1Blau,tag=!EtiFarBMi.1Warten,sort=nearest,limit=1] add EtiFarBMi.1Getroffen
execute at @e[tag=TMFarBMi.1Blau] run tag @a[distance=..2,team=TMFarBMi.1Rot,tag=!EtiFarBMi.1Warten,sort=nearest,limit=1] add EtiFarBMi.1Getroffen
execute as @a[tag=EtiFarBMi.1Getroffen] at @s run function farbball-minispiel:v1getroffen

execute at @e[type=minecraft:snowball,tag=TMFarBMi.1Rot] run kill @e[distance=1..2,type=minecraft:armor_stand,tag=TMFarBMi.1Rot]
execute at @e[type=minecraft:snowball,tag=TMFarBMi.1Blau] run kill @e[distance=1..2,type=minecraft:armor_stand,tag=TMFarBMi.1Blau]

execute at @e[type=minecraft:snowball,tag=TMFarBMi.1Rot] run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,Marker:true,Tags:["TMFarBMi.1Rot","EtiFarBMi.1Ball"]}
execute at @e[type=minecraft:snowball,tag=TMFarBMi.1Blau] run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,Marker:true,Tags:["TMFarBMi.1Blau","EtiFarBMi.1Ball"]}
kill @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Ball,nbt={OnGround:true}]

scoreboard players add @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Ball] PZFarBMi.1Wert 1
kill @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Ball,scores={PZFarBMi.1Wert=8..}]
