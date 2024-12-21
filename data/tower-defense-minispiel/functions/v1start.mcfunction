
execute if entity @e[type=minecraft:area_effect_cloud,tag=EtiTowDefMS.1Start] run return run tellraw @a[distance=..25] ["Tower-Defense-Minispiel.1:\n",{"text":"Das Minispiel wurde nicht erstellt! Warte einen Moment um es zu erstellen!","color":"red","bold":true}]
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:400,Tags:["EtiTowDefMS.1Start"]}

# Zwei Punkte-Ziele werden erstellt.
scoreboard objectives add PZTowDefMS.1Wert dummy ["Tower-Defense-Minispiel.1: ",{"text":"Wert der Variablen","bold":true}]
scoreboard objectives add PZTowDefMS.1Leben dummy ["Tower-Defense-Minispiel.1: ",{"text":"Leben der Gegner","bold":true}]
scoreboard objectives add PZTowDefMS.1Versuch dummy ["Tower-Defense-Minispiel.1: ",{"text":"Versuche","bold":true}]
scoreboard objectives add PZTowDefMS.1Richtung dummy ["Tower-Defense-Minispiel.1: ",{"text":"Richtung","bold":true}]
scoreboard objectives add PZTowDefMS.1Verlassen minecraft.custom:minecraft.leave_game ["Tower-Defense-Minispiel.1: ",{"text":"Spiel verlassen","bold":true}]

scoreboard players set KonstTowDefMS.1FUENF PZTowDefMS.1Wert 5
scoreboard players set KonstTowDefMS.1HUNDERT PZTowDefMS.1Wert 100

scoreboard players set VarTowDefMS.1Spielen PZTowDefMS.1Wert 0
scoreboard players set VarTowDefMS.1Wartende PZTowDefMS.1Wert 0
scoreboard players set VarTowDefMS.1Teilnehmer PZTowDefMS.1Wert 0
scoreboard players set VarTowDefMS.1Punkte1 PZTowDefMS.1Wert 0
scoreboard players set VarTowDefMS.1Punkte2 PZTowDefMS.1Wert 0
scoreboard players set VarTowDefMS.1NeueGegner PZTowDefMS.1Wert 0

team add TMTowDefMS.1Lobby ["Tower-Defense-Minispiel.1: ",{"text":"Lobby","color":"yellow","bold":true}]
team modify TMTowDefMS.1Lobby color white
team modify TMTowDefMS.1Lobby friendlyFire false

bossbar add tower-defense-minispiel:v1lobby ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set tower-defense-minispiel:v1lobby color white
bossbar set tower-defense-minispiel:v1lobby visible true
bossbar set tower-defense-minispiel:v1lobby max 10

team add TMTowDefMS.1Team1 ["Tower-Defense-Minispiel.1: ",{"text":"Rote Gilde","bold":true}]
team modify TMTowDefMS.1Team1 color red
team modify TMTowDefMS.1Team1 friendlyFire false

bossbar add tower-defense-minispiel:v1team1 ["",{"text":"Leben deiner roten Gilde ","bold":true},{"text":"0","color":"green","bold":true},{"text":"/","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set tower-defense-minispiel:v1team1 color red
bossbar set tower-defense-minispiel:v1team1 visible true
bossbar set tower-defense-minispiel:v1team1 style notched_10

bossbar add tower-defense-minispiel:v1team1gegner ["",{"text":"Anzahl Gegner (Welle) ","color":"dark_purple","bold":true},{"text":"0","color":"red","bold":true},{"text":"/","bold":true},{"text":"0","color":"dark_purple","bold":true}]
bossbar set tower-defense-minispiel:v1team1gegner color purple
bossbar set tower-defense-minispiel:v1team1gegner visible true

team add TMTowDefMS.1Team2 ["Tower-Defense-Minispiel.1: ",{"text":"Blaue Gilde","bold":true}]
team modify TMTowDefMS.1Team2 color blue
team modify TMTowDefMS.1Team2 friendlyFire false

bossbar add tower-defense-minispiel:v1team2 ["",{"text":"Leben deiner blauen Gilde ","bold":true},{"text":"0","color":"green","bold":true},{"text":"/","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set tower-defense-minispiel:v1team2 color blue
bossbar set tower-defense-minispiel:v1team2 visible true
bossbar set tower-defense-minispiel:v1team2 style notched_10

bossbar add tower-defense-minispiel:v1team2gegner ["",{"text":"Anzahl Gegner (Welle) ","color":"dark_purple","bold":true},{"text":"0","color":"red","bold":true},{"text":"/","bold":true},{"text":"0","color":"dark_purple","bold":true}]
bossbar set tower-defense-minispiel:v1team2gegner color purple
bossbar set tower-defense-minispiel:v1team2gegner visible true

data modify storage tower-defense-minispiel:v1daten "EigTowDefMS.1Name" set value '["",{"text":"[","color":"dark_gray"},{"text":"Tower-Defense-Minispiel","color":"gray","bold":true},{"text":"]","color":"dark_gray"}," "]'

data modify storage tower-defense-minispiel:v1daten "EigTowDefMS.1Argumente" set value {Index:-1,ID:"marker"}

data modify storage tower-defense-minispiel:v1daten "EigTowDefMS.1Gegner" set value ["zombie","skeleton","husk","drowned","spider","zombie_villager","zombie_horse","skeleton_horse","zombified_piglin","zoglin","piglin","hoglin","piglin_brute","wither_skeleton","pillager","ravager"]

summon minecraft:text_display ~ ~3 ~-10 {text:'["",{"text":"Lobby","color":"yellow","bold":true},"\\n",{"text":"0","color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]',billboard:"center",Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Teleporter"]}
execute at @e[type=minecraft:text_display,tag=EtiTowDefMS.1Teleporter,sort=nearest,limit=1] run place template tower-defense-minispiel:v1teleporter ~-8 ~-3 ~-9 none

summon minecraft:marker ~ ~ ~-50 {Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Spielfeld"]}

#Kappe unzerstörbar
#10 Minuten Spielzeit zu wenig
#Herzen der Wellen sind wohl nicht doppelt oder dreifach
#Beim erneuten Spiel wird noch die alte Wellen-Anzahl angezeigt


execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run place template tower-defense-minispiel:v1gebiet1 ~-32 ~ ~-15 none
execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run place template tower-defense-minispiel:v1gebiet2 ~-15 ~ ~-32 none

#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run place template tower-defense-minispiel:v1gebiet1 ~1 ~ ~1 none
#xecute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run place template tower-defense-minispiel:v1gebiet2 ~ ~ ~1 clockwise_90
#xecute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run place template tower-defense-minispiel:v1gebiet1 ~ ~ ~ 180
#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run place template tower-defense-minispiel:v1gebiet2 ~1 ~ ~ counterclockwise_90

execute as @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] store result score @s PZTowDefMS.1Wert run data get entity @s Pos[1]
execute as @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] store result entity @s data."EigTowDefMS.1Argumente".Y int 1 run scoreboard players add @s PZTowDefMS.1Wert 10



execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:text_display ~-22 ~3 ~-8 {Rotation:[0.0f,0.0f],Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Startpunkt"],text:'["",{"text":"Leben","color":"yellow","bold":true},"\\n",{"text":"100","color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"100","color":"dark_purple","bold":true}]'}
scoreboard players set @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,sort=nearest,limit=1] PZTowDefMS.1Wert 1
#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] positioned ~-22 ~3 ~-8 run scoreboard players set @e[distance=..1,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,sort=nearest,limit=1] PZTowDefMS.1Wert 1

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:text_display ~-8 ~3 ~-22 {Rotation:[-90.0f,0.0f],Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Startpunkt"],text:'["",{"text":"Leben","color":"yellow","bold":true},"\\n",{"text":"100","color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"100","color":"dark_purple","bold":true}]'}
scoreboard players add @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,sort=nearest,limit=2] PZTowDefMS.1Wert 1
#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] positioned ~-8 ~3 ~-22 run scoreboard players set @e[distance=..1,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,sort=nearest,limit=1] PZTowDefMS.1Wert 2
#scoreboard players add @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,sort=nearest,limit=2] PZTowDefMS.1Wert 1


#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] as @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,sort=nearest,limit=2] store result score @s PZTowDefMS.1Wert run scoreboard players add @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,sort=nearest,limit=1] PZTowDefMS.1Wert 1

#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:text_display ~24 ~3 ~-24 {Rotation:[90.0f,0.0f],Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Startpunkt"],text:'["",{"text":"Leben","color":"yellow","bold":true},"\\n",{"text":"100","color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"100","color":"dark_purple","bold":true}]'}
#scoreboard players set @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,sort=nearest,limit=1] PZTowDefMS.1Wert 1
#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:text_display ~-23 ~3 ~25 {Rotation:[-90.0f,0.0f],Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Startpunkt"],text:'["",{"text":"Leben","color":"yellow","bold":true},"\\n",{"text":"100","color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"100","color":"dark_purple","bold":true}]'}
#scoreboard players add @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,sort=furthest,limit=2] PZTowDefMS.1Wert 1

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~-23 ~31.5 ~-10 {Rotation:[0.0f,0.0f],Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Wellen"]}
scoreboard players set @e[type=minecraft:marker,tag=EtiTowDefMS.1Wellen,sort=nearest,limit=1] PZTowDefMS.1Wert 1

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~-10 ~31.5 ~-23 {Rotation:[-90.0f,0.0f],Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Wellen"]}
scoreboard players add @e[type=minecraft:marker,tag=EtiTowDefMS.1Wellen,sort=furthest,limit=2] PZTowDefMS.1Wert 1
#execute as @e[type=minecraft:marker,tag=EtiTowDefMS.1Wellen,sort=furthest,limit=2] store result score @s PZTowDefMS.1Wert run data get entity @s data."EigTowDefMS.1Mannschaft"

#scoreboard players set @e[type=minecraft:marker,tag=EtiTowDefMS.1Wellen,sort=nearest,limit=1] PZTowDefMS.1Wert 1

#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~-5 ~23.5 ~-20 {Rotation:[90.0f,0.0f],Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Wellen"],data:{EigTowDefMS.1Mannschaft:2} }
#scoreboard players add @e[type=minecraft:marker,tag=EtiTowDefMS.1Wellen,sort=furthest,limit=2] PZTowDefMS.1Wert 1

#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~6 ~23.5 ~21 {Rotation:[-90.0f,0.0f],Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Wellen"]}
#scoreboard players set @e[type=minecraft:marker,tag=EtiTowDefMS.1Wellen,sort=nearest,limit=1] PZTowDefMS.1Wert 1

#execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~-5 ~23.5 ~-20 {Rotation:[90.0f,0.0f],Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Wellen"]}
#scoreboard players add @e[type=minecraft:marker,tag=EtiTowDefMS.1Wellen,sort=furthest,limit=2] PZTowDefMS.1Wert 1

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:interaction ~ ~40.5 ~ {width:21,height:3,Tags:["EtiTowDefMS.1Alle","EtiTowDefMS.1Wartesaal"]}
execute at @e[type=minecraft:interaction,tag=EtiTowDefMS.1Wartesaal,sort=nearest,limit=1] run place template tower-defense-minispiel:v1wartesaal ~-11 ~-1 ~-11 none

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] positioned ~-35 ~-1 ~-35 as @a[dx=70,dy=50,dz=70] at @s run function tower-defense-minispiel:v1verlassen

forceload add ~ ~

tellraw @a[distance=..25] ["Tower-Defense-Minispiel.1:\n",{"text":"Das Minispiel wurde erstellt und ist bereit!","bold":true}]
