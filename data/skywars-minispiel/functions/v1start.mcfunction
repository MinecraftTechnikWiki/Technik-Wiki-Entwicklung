
execute if entity @e[type=minecraft:area_effect_cloud,tag=EtiSkyWaMS.1Start] run return run tellraw @a[distance=..25] ["Skywars-Minispiel.1:\n",{"text":"Das Minispiel wurde nicht erstellt! Warte einen Moment um es zu erstellen!","color":"red","bold":true}]
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:400,Tags:["EtiSkyWaMS.1Start"]}

# Zwei Punkte-Ziele werden erstellt.
scoreboard objectives add PZSkyWaMS.1Wert dummy ["Skywars-Minispiel.1: ",{"text":"Wert der Variablen","bold":true}]
scoreboard objectives add PZSkyWaMS.1Verlassen minecraft.custom:minecraft.leave_game ["Skywars-Minispiel.1: ",{"text":"Spiel verlassen","bold":true}]

scoreboard players set KonstSkyWaMS.1FUENF PZSkyWaMS.1Wert 5

scoreboard players set VarSkyWaMS.1Spielen PZSkyWaMS.1Wert 0
scoreboard players set VarSkyWaMS.1Spieler PZSkyWaMS.1Wert 0
scoreboard players set VarSkyWaMS.1Wartende PZSkyWaMS.1Wert 0
scoreboard players set VarSkyWaMS.1Teilnehmer PZSkyWaMS.1Wert 0

team add TMSkyWaMS.1Lobby ["Skywars-Minispiel.1: ",{"text":"Lobby","color":"yellow","bold":true}]
team modify TMSkyWaMS.1Lobby color white
team modify TMSkyWaMS.1Lobby friendlyFire false

bossbar add skywars-minispiel:v1lobby ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set skywars-minispiel:v1lobby color white
bossbar set skywars-minispiel:v1lobby visible true
bossbar set skywars-minispiel:v1lobby max 10

team add TMSkyWaMS.1Spielen ["Skywars-Minispiel.1: ",{"text":"Spiel","color":"blue","bold":true}]
team modify TMSkyWaMS.1Spielen color blue
team modify TMSkyWaMS.1Spielen friendlyFire true

data modify storage skywars-minispiel:v1daten "EigSkyWaMS.1Name" set value '["",{"text":"[","color":"dark_gray"},{"text":"Skywars-Minispiel","color":"gray","bold":true},{"text":"]","color":"dark_gray"}," "]'

summon minecraft:text_display ~ ~3 ~-10 {text:'["",{"text":"Lobby","color":"yellow","bold":true},"\\n",{"text":"0","color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]',billboard:"center",Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Teleporter"]}
execute at @e[type=minecraft:text_display,tag=EtiSkyWaMS.1Teleporter,sort=nearest,limit=1] run place template skywars-minispiel:v1teleporter ~-8 ~-3 ~-9 none

summon minecraft:marker ~ ~150 ~-50 {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Gebiet","EtiSkyWaMS.1Spielfeld"]}
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run place template skywars-minispiel:v1gebiet ~ ~ ~ none
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run place template skywars-minispiel:v1gebiet ~ ~ ~ clockwise_90
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run place template skywars-minispiel:v1gebiet ~ ~ ~ 180
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run place template skywars-minispiel:v1gebiet ~ ~ ~ counterclockwise_90

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~50 ~ ~ {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Gebiet","EtiSkyWaMS.1Insel","EtiSkyWaMS.1Osten"]}
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~-50 ~ ~ {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Gebiet","EtiSkyWaMS.1Insel","EtiSkyWaMS.1Westen"]}
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~50 {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Gebiet","EtiSkyWaMS.1Insel","EtiSkyWaMS.1Sueden"]}
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~-50 {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Gebiet","EtiSkyWaMS.1Insel","EtiSkyWaMS.1Norden"]}

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Insel,tag=EtiSkyWaMS.1Osten,sort=nearest,limit=1] run place template skywars-minispiel:v1insel ~-20 ~-7 ~-23 none
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Insel,tag=EtiSkyWaMS.1Westen,sort=nearest,limit=1] run place template skywars-minispiel:v1insel ~20 ~-7 ~23 180
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Insel,tag=EtiSkyWaMS.1Sueden,sort=nearest,limit=1] run place template skywars-minispiel:v1insel ~23 ~-7 ~-20 clockwise_90
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Insel,tag=EtiSkyWaMS.1Norden,sort=nearest,limit=1] run place template skywars-minispiel:v1insel ~-23 ~-7 ~20 counterclockwise_90

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~50 ~ ~50 {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Gebiet","EtiSkyWaMS.1Insel","EtiSkyWaMS.1Suedosten"]}
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~-50 ~ ~50 {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Gebiet","EtiSkyWaMS.1Insel","EtiSkyWaMS.1Suedwesten"]}
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~-50 ~ ~-50 {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Gebiet","EtiSkyWaMS.1Insel","EtiSkyWaMS.1Nordwesten"]}
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~50 ~ ~-50 {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Gebiet","EtiSkyWaMS.1Insel","EtiSkyWaMS.1Nordosten"]}

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Insel,tag=EtiSkyWaMS.1Suedosten,sort=nearest,limit=1] run place template skywars-minispiel:v1insel_klein ~-23 ~-1 ~-23 none
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Insel,tag=EtiSkyWaMS.1Suedwesten,sort=nearest,limit=1] run place template skywars-minispiel:v1insel_klein ~23 ~-1 ~-23 clockwise_90
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Insel,tag=EtiSkyWaMS.1Nordwesten,sort=nearest,limit=1] run place template skywars-minispiel:v1insel_klein ~23 ~-1 ~23 180
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Insel,tag=EtiSkyWaMS.1Nordosten,sort=nearest,limit=1] run place template skywars-minispiel:v1insel_klein ~-23 ~-1 ~23 counterclockwise_90

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~85 ~ ~ {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Gebiet","EtiSkyWaMS.1Startinsel","EtiSkyWaMS.1Osten"]}
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~-85 ~ ~ {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Gebiet","EtiSkyWaMS.1Startinsel","EtiSkyWaMS.1Westen"]}
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~85 {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Gebiet","EtiSkyWaMS.1Startinsel","EtiSkyWaMS.1Sueden"]}
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~-85 {Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Gebiet","EtiSkyWaMS.1Startinsel","EtiSkyWaMS.1Norden"]}

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Startinsel,tag=EtiSkyWaMS.1Osten,sort=nearest,limit=1] run place template skywars-minispiel:v1startinsel ~-16 ~-4 ~-20 none
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Startinsel,tag=EtiSkyWaMS.1Westen,sort=nearest,limit=1] run place template skywars-minispiel:v1startinsel ~16 ~-4 ~20 180
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Startinsel,tag=EtiSkyWaMS.1Sueden,sort=nearest,limit=1] run place template skywars-minispiel:v1startinsel ~20 ~-4 ~-16 clockwise_90
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Startinsel,tag=EtiSkyWaMS.1Norden,sort=nearest,limit=1] run place template skywars-minispiel:v1startinsel ~-20 ~-4 ~16 counterclockwise_90

execute as @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] store result score @s PZSkyWaMS.1Wert run data get entity @s Pos[1]
execute as @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] store result entity @s data."EigSkyWaMS.1Argumente".Y int 1 run scoreboard players add @s PZSkyWaMS.1Wert 20

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Gebiet,sort=nearest,limit=13] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Traeger"],Passengers:[{id:"minecraft:text_display",Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Beute"]},{id:"minecraft:text_display",Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Beute"]},{id:"minecraft:text_display",Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Beute"]},{id:"minecraft:text_display",Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Beute"]},{id:"minecraft:text_display",Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Beute"]},{id:"minecraft:text_display",Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Beute"]}]}
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Gebiet,sort=nearest,limit=13] run spreadplayers ~ ~ 3 8 false @e[distance=..2,type=minecraft:text_display,tag=EtiSkyWaMS.1Beute,sort=nearest,limit=6]

execute as @e[type=minecraft:text_display,tag=EtiSkyWaMS.1Beute] run data merge entity @s {text:'["",{"text":"00:00","color":"green","bold":true},"\\n",{"text":"Leer","color":"red","bold":true}]',billboard:"center"}

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Gebiet,sort=nearest,limit=13] at @e[type=minecraft:text_display,tag=EtiSkyWaMS.1Beute,sort=nearest,limit=6] run setblock ~ ~ ~ minecraft:chest{LootTable:"skywars-minispiel:v1beute"} replace

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:interaction ~ ~35.5 ~ {width:21,height:3,Tags:["EtiSkyWaMS.1Alle","EtiSkyWaMS.1Wartesaal"]}
execute at @e[type=minecraft:interaction,tag=EtiSkyWaMS.1Wartesaal,sort=nearest,limit=1] run place template skywars-minispiel:v1wartesaal ~-11 ~-1 ~-11 none

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld,sort=nearest,limit=1] positioned ~-150 ~-1 ~-150 as @a[dx=300,dy=60,dz=300] at @s run function skywars-minispiel:v1verlassen

forceload add ~ ~

tellraw @a[distance=..25] ["Skywars-Minispiel.1:\n",{"text":"Das Minispiel wurde erstellt und ist bereit!","bold":true}]
