
execute if entity @e[type=minecraft:area_effect_cloud,tag=EtiGildSMS.1Start] run return run tellraw @a[distance=..25] ["Gildenschlacht-Minispiel.1:\n",{"text":"Das Minispiel wurde nicht erstellt! Warte einen Moment um es zu erstellen!","color":"red","bold":true}]
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:400,Tags:["EtiGildSMS.1Start"]}

# Drei Punkte-Ziele werden erstellt.
scoreboard objectives add PZGildSMS.1Wert dummy ["Gildenschlacht-Minispiel.1: ",{"text":"Wert der Variablen","bold":true}]
scoreboard objectives add PZGildSMS.1Sterben deathCount ["Gildenschlacht-Minispiel.1: ",{"text":"Tode","bold":true}]
scoreboard objectives add PZGildSMS.1Verlassen minecraft.custom:minecraft.leave_game ["Gildenschlacht-Minispiel.1: ",{"text":"Spiel verlassen","bold":true}]

scoreboard players set KonstGildSMS.1ZWEI PZGildSMS.1Wert 2
scoreboard players set KonstGildSMS.1FUENF PZGildSMS.1Wert 5

scoreboard players set VarGildSMS.1Spielen PZGildSMS.1Wert 0
scoreboard players set VarGildSMS.1Wartende PZGildSMS.1Wert 0
scoreboard players set VarGildSMS.1Teilnehmer PZGildSMS.1Wert 0

team add TMGildSMS.1Lobby ["Gildenschlacht-Minispiel.1: ",{"text":"Lobby","color":"yellow","bold":true}]
team modify TMGildSMS.1Lobby color white
team modify TMGildSMS.1Lobby friendlyFire false

bossbar add gildenschlacht-minispiel:v1lobby ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set gildenschlacht-minispiel:v1lobby color white
bossbar set gildenschlacht-minispiel:v1lobby visible true
bossbar set gildenschlacht-minispiel:v1lobby max 10

team add TMGildSMS.1Team1 ["Gildenschlacht-Minispiel.1: ",{"text":"Rote Gilde","bold":true}]
team modify TMGildSMS.1Team1 color red
team modify TMGildSMS.1Team1 friendlyFire false
team modify TMGildSMS.1Team1 nametagVisibility hideForOtherTeams

bossbar add gildenschlacht-minispiel:v1team1 ["",{"text":"Leben deiner roten Gilde ","bold":true},{"text":"0","color":"green","bold":true},{"text":"/","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set gildenschlacht-minispiel:v1team1 color red
bossbar set gildenschlacht-minispiel:v1team1 visible true
bossbar set gildenschlacht-minispiel:v1team1 style notched_10

bossbar add gildenschlacht-minispiel:v1team1anzahl ["",{"text":"Anzahl Gegner (rote Gilde) ","bold":true},{"text":"0","color":"green","bold":true},{"text":"/","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set gildenschlacht-minispiel:v1team1anzahl color red
bossbar set gildenschlacht-minispiel:v1team1anzahl visible true

team add TMGildSMS.1Team2 ["Gildenschlacht-Minispiel.1: ",{"text":"Blaue Gilde","bold":true}]
team modify TMGildSMS.1Team2 color blue
team modify TMGildSMS.1Team2 friendlyFire false
team modify TMGildSMS.1Team2 nametagVisibility hideForOtherTeams

bossbar add gildenschlacht-minispiel:v1team2 ["",{"text":"Leben deiner blauen Gilde ","bold":true},{"text":"0","color":"green","bold":true},{"text":"/","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set gildenschlacht-minispiel:v1team2 color blue
bossbar set gildenschlacht-minispiel:v1team2 visible true
bossbar set gildenschlacht-minispiel:v1team2 style notched_10

bossbar add gildenschlacht-minispiel:v1team2anzahl ["",{"text":"Anzahl Gegner (blaue Gilde) ","bold":true},{"text":"0","color":"green","bold":true},{"text":"/","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set gildenschlacht-minispiel:v1team2anzahl color blue
bossbar set gildenschlacht-minispiel:v1team2anzahl visible true

data modify storage gildenschlacht-minispiel:v1daten "EigGildSMS.1Name" set value '["",{"text":"[","color":"dark_gray"},{"text":"Gildenschlacht-Minispiel","color":"gray","bold":true},{"text":"]","color":"dark_gray"}," "]'

summon minecraft:text_display ~ ~3 ~-10 {text:'["",{"text":"Lobby","color":"yellow","bold":true},"\\n",{"text":"0","color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]',billboard:"center",Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Teleporter"]}
execute at @e[type=minecraft:text_display,tag=EtiGildSMS.1Teleporter,sort=nearest,limit=1] run place template gildenschlacht-minispiel:v1teleporter ~-8 ~-3 ~-9 none

summon minecraft:marker ~ ~ ~-40 {Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Spielfeld"]}
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run place template gildenschlacht-minispiel:v1gebiet1 ~ ~ ~ none
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run place template gildenschlacht-minispiel:v1gebiet2 ~-1 ~ ~-1 clockwise_90
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run place template gildenschlacht-minispiel:v1gebiet1 ~-1 ~ ~-2 180
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run place template gildenschlacht-minispiel:v1gebiet2 ~ ~ ~-1 counterclockwise_90

execute as @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] store result score @s PZGildSMS.1Wert run data get entity @s Pos[1]
execute as @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] store result entity @s data."EigGildSMS.1Argumente".Y int 1 run scoreboard players add @s PZGildSMS.1Wert 15

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Traeger"],Passengers:[{id:"minecraft:marker",Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beute"]},{id:"minecraft:marker",Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beute"]},{id:"minecraft:marker",Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beute"]},{id:"minecraft:marker",Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beute"]},{id:"minecraft:marker",Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beute"]},{id:"minecraft:marker",Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Beute"]}]}
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run spreadplayers ~ ~ 5 15 false @e[distance=..2,type=minecraft:marker,tag=EtiGildSMS.1Beute,sort=nearest,limit=6]

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Beute,sort=nearest,limit=6] run setblock ~ ~ ~ minecraft:chest{LootTable:"gildenschlacht-minispiel:v1beute"} replace

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~10 ~17 {Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Team1"]}
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~10 ~-18 {Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Team2"]}

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:interaction ~ ~30.5 ~ {width:21,height:3,Tags:["EtiGildSMS.1Alle","EtiGildSMS.1Wartesaal"]}
execute at @e[type=minecraft:interaction,tag=EtiGildSMS.1Wartesaal,sort=nearest,limit=1] run place template gildenschlacht-minispiel:v1wartesaal ~-11 ~-1 ~-11 none

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] positioned ~-25 ~-1 ~-25 as @a[dx=50,dy=40,dz=50] at @s run function gildenschlacht-minispiel:v1verlassen

forceload add ~ ~

tellraw @a[distance=..25] ["Gildenschlacht-Minispiel.1:\n",{"text":"Das Minispiel wurde erstellt und ist bereit!","bold":true}]
