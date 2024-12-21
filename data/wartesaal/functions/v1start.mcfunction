
execute if entity @e[type=minecraft:area_effect_cloud,tag=EtiWartS.1Start] run return run tellraw @a[distance=..25] ["Wartesaal.1:\n",{"text":"Die Lobby wurde nicht erstellt! Warte einem Moment um sie zu erstellen!","color":"red","bold":true}]
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:400,Tags:["EtiWartS.1Start"]}

# Zwei Punkte-Ziele werden erstellt.
scoreboard objectives add PZWartS.1Wert dummy ["Wartesaal.1: ",{"text":"Wert der Variablen","bold":true}]
scoreboard objectives add PZWartS.1Verlassen minecraft.custom:minecraft.leave_game ["Wartesaal.1: ",{"text":"Spiel verlassen","bold":true}]

scoreboard players set KonstWartS.1FUENF PZWartS.1Wert 5

scoreboard players set VarWartS.1Spielen PZWartS.1Wert 0
scoreboard players set VarWartS.1Wartende PZWartS.1Wert 0

team add TMWartS.1Lobby ["Wartesaal.1: ",{"text":"Lobby","color":"yellow","bold":true}]
team modify TMWartS.1Lobby color white
team modify TMWartS.1Lobby friendlyFire false

bossbar add wartesaal:v1lobby ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"text":"0","color":"green","bold":true}]
bossbar set wartesaal:v1lobby color white
bossbar set wartesaal:v1lobby visible true
bossbar set wartesaal:v1lobby max 10

team add TMWartS.1Spielen ["Wartesaal.1: ",{"text":"Spiel","color":"blue","bold":true}]
team modify TMWartS.1Spielen color blue
team modify TMWartS.1Spielen friendlyFire false

data modify storage wartesaal:v1daten "EigWartS.1Name" set value '["",{"text":"[","color":"dark_gray"},{"text":"?-Minispiel","color":"gray","bold":true},{"text":"]","color":"dark_gray"}," "]'

summon minecraft:text_display ~-10 ~3 ~ {text:'["",{"text":"Lobby","color":"yellow","bold":true},"\\n",{"text":"0","color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]',billboard:"center",Tags:["EtiWartS.1Alle","EtiWartS.1Teleporter"]}
execute at @e[type=minecraft:text_display,tag=EtiWartS.1Teleporter,sort=nearest,limit=1] run place template wartesaal:v1teleporter ~-9 ~-3 ~-8 none

summon minecraft:marker ~-40 ~ ~ {Tags:["EtiWartS.1Alle","EtiWartS.1Spielfeld"]}
execute at @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] run place template wartesaal:v1gebiet ~-22 ~ ~-22 none
execute as @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] store result score @s PZWartS.1Wert run data get entity @s Pos[1]
execute as @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] store result entity @s data."EigWartS.1Argumente".Y int 1 run scoreboard players add @s PZWartS.1Wert 5

execute at @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] run summon minecraft:interaction ~ ~36.5 ~ {width:21,height:3,Tags:["EtiWartS.1Alle","EtiWartS.1Wartesaal"]}
execute at @e[type=minecraft:interaction,tag=EtiWartS.1Wartesaal,sort=nearest,limit=1] run place template wartesaal:v1wartesaal ~-11 ~-1 ~-11 none

execute at @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] positioned ~-22 ~-1 ~-22 as @a[dx=44,dy=44,dz=44] at @s run function wartesaal:v1verlassen

forceload add ~ ~

tellraw @a[distance=..25] ["Wartesaal.1:\n",{"text":"Die Lobby wurde erstellt und ist bereit!","bold":true}]
