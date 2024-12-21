
execute if entity @e[type=minecraft:area_effect_cloud,tag=EtiTNTRMS.1Start] run return run tellraw @a[distance=..25] ["TNT-Run-Minispiel.1:\n",{"text":"Das Minispiel wurde nicht erstellt! Warte einen Moment um es zu erstellen!","color":"red","bold":true}]
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:400,Tags:["EtiTNTRMS.1Start"]}

# Zwei Punkte-Ziele werden erstellt.
scoreboard objectives add PZTNTRMS.1Wert dummy ["TNT-Run-Minispiel.1: ",{"text":"Wert der Variablen","bold":true}]
scoreboard objectives add PZTNTRMS.1Verlassen minecraft.custom:minecraft.leave_game ["TNT-Run-Minispiel.1: ",{"text":"Spiel verlassen","bold":true}]

scoreboard players set KonstTNTRMS.1FUENF PZTNTRMS.1Wert 5

scoreboard players set VarTNTRMS.1Spielen PZTNTRMS.1Wert 0
scoreboard players set VarTNTRMS.1Spieler PZTNTRMS.1Wert 0
scoreboard players set VarTNTRMS.1Wartende PZTNTRMS.1Wert 0
scoreboard players set VarTNTRMS.1Teilnehmer PZTNTRMS.1Wert 0

team add TMTNTRMS.1Lobby ["TNT-Run-Minispiel.1: ",{"text":"Lobby","color":"yellow","bold":true}]
team modify TMTNTRMS.1Lobby color white
team modify TMTNTRMS.1Lobby friendlyFire false

bossbar add tnt-run-minispiel:v1lobby ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set tnt-run-minispiel:v1lobby color white
bossbar set tnt-run-minispiel:v1lobby visible true
bossbar set tnt-run-minispiel:v1lobby max 10

team add TMTNTRMS.1Spielen ["TNT-Run-Minispiel.1: ",{"text":"Spiel","color":"blue","bold":true}]
team modify TMTNTRMS.1Spielen color blue
team modify TMTNTRMS.1Spielen friendlyFire false

data modify storage tnt-run-minispiel:v1daten "EigTNTRMS.1Name" set value '["",{"text":"[","color":"dark_gray"},{"text":"TNT-Run-Minispiel","color":"gray","bold":true},{"text":"]","color":"dark_gray"}," "]'

summon minecraft:text_display ~ ~3 ~-10 {text:'["",{"text":"Lobby","color":"yellow","bold":true},"\\n",{"text":"0","color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]',billboard:"center",Tags:["EtiTNTRMS.1Alle","EtiTNTRMS.1Teleporter"]}
execute at @e[type=minecraft:text_display,tag=EtiTNTRMS.1Teleporter,sort=nearest,limit=1] run place template tnt-run-minispiel:v1teleporter ~-8 ~-3 ~-9 none

summon minecraft:marker ~ ~ ~-45 {Tags:["EtiTNTRMS.1Alle","EtiTNTRMS.1Spielfeld"]}
execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run place template tnt-run-minispiel:v1gebiet ~ ~ ~ none
execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run place template tnt-run-minispiel:v1gebiet ~ ~ ~ clockwise_90
execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run place template tnt-run-minispiel:v1gebiet ~ ~ ~ 180
execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run place template tnt-run-minispiel:v1gebiet ~ ~ ~ counterclockwise_90

execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~3 ~ {Tags:["EtiTNTRMS.1Alle","EtiTNTRMS.1Ebene"]}
execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:marker ~ ~13 ~ {Tags:["EtiTNTRMS.1Alle","EtiTNTRMS.1Ebene"]}

execute as @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] store result score @s PZTNTRMS.1Wert run data get entity @s Pos[1]
execute as @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] store result entity @s data."EigTNTRMS.1Argumente".Y int 1 run scoreboard players add @s PZTNTRMS.1Wert 20

execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:interaction ~ ~21.5 ~ {width:48,height:3,Tags:["EtiTNTRMS.1Alle","EtiTNTRMS.1Wartesaal"]}

execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] positioned ~-30 ~-1 ~-30 as @a[dx=60,dy=40,dz=60] at @s run function tnt-run-minispiel:v1verlassen

forceload add ~ ~

tellraw @a[distance=..25] ["TNT-Run-Minispiel.1:\n",{"text":"Das Minispiel wurde erstellt und ist bereit!","bold":true}]
