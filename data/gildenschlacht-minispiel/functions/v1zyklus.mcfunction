
execute unless score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches -2..-1 at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Wartehalle,sort=nearest,limit=1] if entity @p[distance=..2] run function gildenschlacht-minispiel:v1portal

clear @a[scores={PZGildSMS.1Tod=1..}]
execute as @a[scores={PZGildSMS.1Tod=1..}] run tellraw @a ["Gildenschlacht-Minispiel.1:\n",{"text":"[","color":"dark_gray"},{"text":"Gildenschlacht","color":"gray","bold":true},{"text":"]","color":"dark_gray"},{"text":" Spieler ","bold":true},{"selector":"@s"},{"text":" ist ausgeschieden.","bold":true} ]
scoreboard players set @a[scores={PZGildSMS.1Tod=1..}] PZGildSMS.1Verl 1
scoreboard players set @a[scores={PZGildSMS.1Tod=1..}] PZGildSMS.1Tod 0

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] as @a unless entity @s[team=!TMGildSMS.1Rot,team=!TMGildSMS.1Blau] positioned ~-25 ~ ~-25 unless entity @s[dx=50,dy=50,dz=50] run scoreboard players set @s PZGildSMS.1Verl 1

execute at @a[scores={PZGildSMS.1Verl=1..}] run kill @e[distance=..3,type=minecraft:item,nbt={Item:{tag:{EigGildSMS.1Alle:true} } }]
team leave @a[scores={PZGildSMS.1Verl=1..}]
execute if entity @p[scores={PZGildSMS.1Verl=1..}] run bossbar set gildenschlacht-minispiel:v1teamrot players @a[team=TMGildSMS.1Rot]
execute if entity @p[scores={PZGildSMS.1Verl=1..}] run bossbar set gildenschlacht-minispiel:v1teamblau players @a[team=TMGildSMS.1Blau]
clear @a[scores={PZGildSMS.1Verl=1..}]
gamemode creative @a[scores={PZGildSMS.1Verl=1..}]
tellraw @a[scores={PZGildSMS.1Verl=1..}] ["Gildenschlacht-Minispiel.1:\n",{"text":"[","color":"dark_gray"},{"text":"Gildenschlacht","color":"gray","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Lobby verlassen","bold":true}]
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Wartehalle,sort=nearest,limit=1] run teleport @a[scores={PZGildSMS.1Verl=1..}] ~ ~ ~-5
scoreboard players set @a[scores={PZGildSMS.1Verl=1..}] PZGildSMS.1Verl 0

execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Wartehalle,sort=nearest,limit=1] run particle minecraft:portal ~ ~1 ~ 0 1 0 0.7 35 force @a[distance=..15]
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] store result score #VarGildSMS.1SpielerAnzahl PZGildSMS.1Spiel positioned ~-25 ~ ~-25 if entity @a[dx=50,dy=50,dz=50]

bossbar set gildenschlacht-minispiel:v1lobbyzeit players

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] positioned ~-25 ~ ~-25 run bossbar set gildenschlacht-minispiel:v1lobbyzeit players @a[dx=50,dy=50,dz=50]

execute unless score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches -2..-1 if score #VarGildSMS.1SpielerAnzahl PZGildSMS.1Spiel matches 2.. run function gildenschlacht-minispiel:v1zaehler

execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches 0 at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] positioned ~-25 ~ ~-25 as @a[dx=50,dy=50,dz=50] unless entity @s[team=!TMGildSMS.1Rot,team=!TMGildSMS.1Blau] at @s run function gildenschlacht-minispiel:v1spielstart

execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches -2..-1 store result score #VarGildSMS.1GildeRot PZGildSMS.1Spiel if entity @a[team=TMGildSMS.1Rot]
execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches -2..-1 store result score #VarGildSMS.1GildeBlau PZGildSMS.1Spiel if entity @a[team=TMGildSMS.1Blau]

execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches -2..-1 if score #VarGildSMS.1GildeRot PZGildSMS.1Spiel matches 0 run tellraw @a[distance=..50] ["Gildenschlacht-Minispiel.1:\n",{"text":"[","color":"dark_gray"},{"text":"Gildenschlacht","color":"gray","bold":true},{"text":"]","color":"dark_gray"},{"text":" Die Gilde ","bold":true},{"selector":"@a[team=TMGildSMS.1Blau]"},{"text":" hat das Spiel gewonnen!","bold":true} ]
execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches -2..-1 if score #VarGildSMS.1GildeRot PZGildSMS.1Spiel matches 0 run tellraw @a[distance=..50] ["Gildenschlacht-Minispiel.1:\n",{"text":"[","color":"dark_gray"},{"text":"Gildenschlacht","color":"gray","bold":true},{"text":"]","color":"dark_gray"},{"text":" Die Gilde ","bold":true},{"selector":"@a[team=TMGildSMS.1Rot]"},{"text":" hat das Spiel gewonnen!","bold":true} ]

execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches -2..-1 run bossbar set gildenschlacht-minispiel:v1teamrot players @a[team=TMGildSMS.1Rot]
execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches -2..-1 run bossbar set gildenschlacht-minispiel:v1teamblau players @a[team=TMGildSMS.1Blau]
execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches -2..-1 store result bossbar gildenschlacht-minispiel:v1teamrot value if entity @a[team=TMGildSMS.1Rot]
execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches -2..-1 store result bossbar gildenschlacht-minispiel:v1teamblau value if entity @a[team=TMGildSMS.1Blau]

execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches ..-1 if score #VarGildSMS.1GildeRot PZGildSMS.1Spiel matches 0 run scoreboard players remove VarGildSMS.1Zaehler PZGildSMS.1Spiel 1
execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches ..-1 if score #VarGildSMS.1GildeBlau PZGildSMS.1Spiel matches 0 run scoreboard players remove VarGildSMS.1Zaehler PZGildSMS.1Spiel 1

execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches ..-31 if score #VarGildSMS.1GildeRot PZGildSMS.1Spiel matches 0 run scoreboard players set @a[team=TMGildSMS.1Rot] PZGildSMS.1Verl 1
execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches ..-31 if score #VarGildSMS.1GildeRot PZGildSMS.1Spiel matches 0 run scoreboard players set @a[team=TMGildSMS.1Blau] PZGildSMS.1Verl 1

execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches ..-31 if score #VarGildSMS.1GildeRot PZGildSMS.1Spiel matches 0 run scoreboard players set VarGildSMS.1Zaehler PZGildSMS.1Spiel 30
execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches ..-31 if score #VarGildSMS.1GildeBlau PZGildSMS.1Spiel matches 0 run scoreboard players set VarGildSMS.1Zaehler PZGildSMS.1Spiel 30
