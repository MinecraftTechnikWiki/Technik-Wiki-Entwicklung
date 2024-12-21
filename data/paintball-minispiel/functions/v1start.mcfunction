
execute if entity @e[type=minecraft:area_effect_cloud,tag=EtiPaintBMS.1Start] run return run tellraw @a[distance=..25] ["Paintball-Minispiel.1:\n",{"text":"Das Minispiel wurde nicht erstellt! Warte einen Moment um es zu erstellen!","color":"red","bold":true}]
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:400,Tags:["EtiPaintBMS.1Start"]}

# Zwei Punkte-Ziele werden erstellt.
scoreboard objectives add PZPaintBMS.1Wert dummy ["Paintball-Minispiel.1: ",{"text":"Wert der Variablen","bold":true}]
scoreboard objectives add PZPaintBMS.1Versuch dummy ["Paintball-Minispiel.1: ",{"text":"Versuche","bold":true}]
scoreboard objectives add PZPaintBMS.1Verlassen minecraft.custom:minecraft.leave_game ["Paintball-Minispiel.1: ",{"text":"Spiel verlassen","bold":true}]

scoreboard players set KonstPaintBMS.1FUENF PZPaintBMS.1Wert 5

scoreboard players set VarPaintBMS.1Spielen PZPaintBMS.1Wert 0
scoreboard players set VarPaintBMS.1Wartende PZPaintBMS.1Wert 0
scoreboard players set VarPaintBMS.1Teilnehmer PZPaintBMS.1Wert 0

team add TMPaintBMS.1Lobby ["Paintball-Minispiel.1: ",{"text":"Lobby","color":"yellow","bold":true}]
team modify TMPaintBMS.1Lobby color white
team modify TMPaintBMS.1Lobby friendlyFire false

bossbar add paintball-minispiel:v1lobby ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set paintball-minispiel:v1lobby color white
bossbar set paintball-minispiel:v1lobby visible true
bossbar set paintball-minispiel:v1lobby max 10

team add TMPaintBMS.1Team1 ["Paintball-Minispiel.1: ",{"text":"Rote Gilde","bold":true}]
team modify TMPaintBMS.1Team1 color red
team modify TMPaintBMS.1Team1 friendlyFire false
team modify TMPaintBMS.1Team1 nametagVisibility hideForOtherTeams

bossbar add paintball-minispiel:v1team1 ["",{"text":"Leben deiner roten Gilde ","bold":true},{"text":"0","color":"green","bold":true},{"text":"/","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set paintball-minispiel:v1team1 color red
bossbar set paintball-minispiel:v1team1 visible true
bossbar set paintball-minispiel:v1team1 style notched_10

bossbar add paintball-minispiel:v1team1anzahl ["",{"text":"Anzahl Gegner (rote Gilde) ","bold":true},{"text":"0","color":"green","bold":true},{"text":"/","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set paintball-minispiel:v1team1anzahl color red
bossbar set paintball-minispiel:v1team1anzahl visible true

team add TMPaintBMS.1Team2 ["Paintball-Minispiel.1: ",{"text":"Blaue Gilde","bold":true}]
team modify TMPaintBMS.1Team2 color blue
team modify TMPaintBMS.1Team2 friendlyFire false
team modify TMPaintBMS.1Team2 nametagVisibility hideForOtherTeams

bossbar add paintball-minispiel:v1team2 ["",{"text":"Leben deiner blauen Gilde ","bold":true},{"text":"0","color":"green","bold":true},{"text":"/","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set paintball-minispiel:v1team2 color blue
bossbar set paintball-minispiel:v1team2 visible true
bossbar set paintball-minispiel:v1team2 style notched_10

bossbar add paintball-minispiel:v1team2anzahl ["",{"text":"Anzahl Gegner (blaue Gilde) ","bold":true},{"text":"0","color":"green","bold":true},{"text":"/","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set paintball-minispiel:v1team2anzahl color blue
bossbar set paintball-minispiel:v1team2anzahl visible true

data modify storage paintball-minispiel:v1daten "EigPaintBMS.1Name" set value '["",{"text":"[","color":"dark_gray"},{"text":"Paintball-Minispiel","color":"gray","bold":true},{"text":"]","color":"dark_gray"}," "]'

summon minecraft:text_display ~ ~3 ~-10 {text:'["",{"text":"Lobby","color":"yellow","bold":true},"\\n",{"text":"0","color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]',billboard:"center",Tags:["EtiPaintBMS.1Alle","EtiPaintBMS.1Teleporter"]}
execute at @e[type=minecraft:text_display,tag=EtiPaintBMS.1Teleporter,sort=nearest,limit=1] run place template paintball-minispiel:v1teleporter ~-8 ~-3 ~-9 none

summon minecraft:marker ~ ~ ~-50 {Tags:["EtiPaintBMS.1Alle","EtiPaintBMS.1Spielfeld"]}
execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] run place template paintball-minispiel:v1gebiet1 ~ ~ ~ none
execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] run place template paintball-minispiel:v1gebiet2 ~-1 ~ ~1 clockwise_90
execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] run place template paintball-minispiel:v1gebiet1 ~ ~ ~ 180
execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] run place template paintball-minispiel:v1gebiet2 ~1 ~ ~-1 counterclockwise_90

execute as @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] store result score @s PZPaintBMS.1Wert run data get entity @s Pos[1]
execute as @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] store result entity @s data."EigPaintBMS.1Argumente".Y int 1 run scoreboard players add @s PZPaintBMS.1Wert 10

execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:interaction ~20 ~ ~15 {width:8,height:16,Tags:["EtiPaintBMS.1Alle","EtiPaintBMS.1Startpunkt"]}
scoreboard players set @e[type=minecraft:interaction,tag=EtiPaintBMS.1Startpunkt,sort=nearest,limit=1] PZPaintBMS.1Wert 1

execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:interaction ~-20 ~ ~-15 {width:8,height:16,Tags:["EtiPaintBMS.1Alle","EtiPaintBMS.1Startpunkt"]}
scoreboard players add @e[type=minecraft:interaction,tag=EtiPaintBMS.1Startpunkt,sort=furthest,limit=2] PZPaintBMS.1Wert 1

execute at @e[type=minecraft:interaction,tag=EtiPaintBMS.1Startpunkt,sort=nearest,limit=2] run summon minecraft:marker ~-4 ~ ~4 {Tags:["EtiPaintBMS.1Alle","EtiPaintBMS.1Ecke"]}
execute at @e[type=minecraft:interaction,tag=EtiPaintBMS.1Startpunkt,sort=nearest,limit=2] run summon minecraft:marker ~-4 ~ ~-4 {Tags:["EtiPaintBMS.1Alle","EtiPaintBMS.1Ecke"]}

execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Ecke,sort=nearest,limit=4] run summon minecraft:marker ~8 ~ ~ {Tags:["EtiPaintBMS.1Alle","EtiPaintBMS.1Ecke"]}

execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:interaction ~ ~35.5 ~ {width:21,height:3,Tags:["EtiPaintBMS.1Alle","EtiPaintBMS.1Wartesaal"]}
execute at @e[type=minecraft:interaction,tag=EtiPaintBMS.1Wartesaal,sort=nearest,limit=1] run place template paintball-minispiel:v1wartesaal ~-11 ~-1 ~-11 none

execute at @e[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld,sort=nearest,limit=1] positioned ~-30 ~-1 ~-30 as @a[dx=60,dy=40,dz=60] at @s run function paintball-minispiel:v1verlassen

forceload add ~ ~

tellraw @a[distance=..25] ["Paintball-Minispiel.1:\n",{"text":"Das Minispiel wurde erstellt und ist bereit!","bold":true}]
