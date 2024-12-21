
execute at @e[type=minecraft:text_display,tag=EtiBoSplMS.1Teleporter,sort=nearest,limit=1] run particle minecraft:portal ~ ~-3 ~ 0 1 0 0.7 35 force @a[distance=..15]

execute if score VarBoSplMS.1Teilnehmer PZBoSplMS.1Wert matches 10 at @e[type=minecraft:text_display,tag=EtiBoSplMS.1Teleporter,sort=nearest,limit=1] positioned ~ ~-3 ~ run title @a[distance=..3] actionbar ["",{"text":"Lobby ist voll","color":"red","bold":true}]
execute if score VarBoSplMS.1Teilnehmer PZBoSplMS.1Wert matches ..9 at @e[type=minecraft:text_display,tag=EtiBoSplMS.1Teleporter,sort=nearest,limit=1] positioned ~ ~-3 ~ as @p[distance=..3,gamemode=!spectator] run function bow-spleef-minispiel:v1beitreten

execute if score VarBoSplMS.1Wartende PZBoSplMS.1Wert matches 1.. as @e[type=minecraft:interaction,tag=EtiBoSplMS.1Wartesaal,sort=nearest,limit=1] store success score @s PZBoSplMS.1Wert if data entity @s interaction
execute if score VarBoSplMS.1Wartende PZBoSplMS.1Wert matches 1.. as @e[type=minecraft:interaction,tag=EtiBoSplMS.1Wartesaal,scores={PZBoSplMS.1Wert=1},sort=nearest,limit=1] on target run tag @s[team=TMBoSplMS.1Lobby,nbt={SelectedItem:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigBoSplMS.1Verlassen:true} } } }] add EtiBoSplMS.1Verlassen
execute if score VarBoSplMS.1Wartende PZBoSplMS.1Wert matches 1.. run data remove entity @e[type=minecraft:interaction,tag=EtiBoSplMS.1Wartesaal,scores={PZBoSplMS.1Wert=1},sort=nearest,limit=1] interaction
tag @a[team=TMBoSplMS.1Lobby,tag=!EtiBoSplMS.1Verlassen,scores={PZBoSplMS.1Verlassen=1..}] add EtiBoSplMS.1Verlassen
tag @a[team=TMBoSplMS.1Lobby,tag=!EtiBoSplMS.1Verlassen,nbt=!{Inventory:[{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigBoSplMS.1Verlassen:true} } } ] }] add EtiBoSplMS.1Verlassen
execute as @a[tag=EtiBoSplMS.1Verlassen] at @s run function bow-spleef-minispiel:v1verlassen

execute if score VarBoSplMS.1Spielende PZBoSplMS.1Wert matches 0 at @e[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld,sort=nearest,limit=1] run function bow-spleef-minispiel:v1spielfeld
execute if score VarBoSplMS.1Spielende PZBoSplMS.1Wert matches 0 at @e[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld,sort=nearest,limit=1] as @a[distance=..100,tag=EtiBoSplMS.1Spielen,tag=!EtiBoSplMS.1Verloren] at @s run function bow-spleef-minispiel:v1spielen

scoreboard players add #VarBoSplMS.1Tick PZBoSplMS.1Wert 1
execute if score #VarBoSplMS.1Tick PZBoSplMS.1Wert matches 1..19 run return 0
scoreboard players set #VarBoSplMS.1Tick PZBoSplMS.1Wert 0

execute if score VarBoSplMS.1Befristet PZBoSplMS.1Wert matches ..599 run scoreboard players add VarBoSplMS.1Befristet PZBoSplMS.1Wert 1
execute if score VarBoSplMS.1Befristet PZBoSplMS.1Wert matches 600.. run scoreboard players set VarBoSplMS.1Spielende PZBoSplMS.1Wert 1
execute if score VarBoSplMS.1Spieler PZBoSplMS.1Wert matches ..1 run scoreboard players set VarBoSplMS.1Spielende PZBoSplMS.1Wert 1

execute at @e[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld,sort=nearest,limit=1] as @a[distance=..100,team=!] unless entity @s[team=!TMBoSplMS.1Lobby,tag=!EtiBoSplMS.1Spielen] positioned ~-35 ~-1 ~-35 unless entity @s[dx=70,dy=40,dz=70] run function bow-spleef-minispiel:v1verlassen

execute at @e[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld,sort=nearest,limit=1] as @a[distance=..100,team=!TMBoSplMS.1Lobby,tag=!EtiBoSplMS.1Spielen] positioned ~-35 ~-1 ~-35 if entity @s[dx=70,dy=40,dz=70] run function bow-spleef-minispiel:v1verlassen

execute store result bossbar bow-spleef-minispiel:v1lobby value store result score VarBoSplMS.1Wartende PZBoSplMS.1Wert if entity @a[team=TMBoSplMS.1Lobby]

execute store result score VarBoSplMS.1Spieler PZBoSplMS.1Wert if entity @a[tag=EtiBoSplMS.1Spielen,tag=!EtiBoSplMS.1Verloren]
execute store result score VarBoSplMS.1Teilnehmer PZBoSplMS.1Wert if entity @a[tag=EtiBoSplMS.1Teilnehmer]

data modify entity @e[distance=..15,type=minecraft:text_display,tag=EtiBoSplMS.1Teleporter,sort=nearest,limit=1] text set value '["",{"text":"Lobby","color":"yellow","bold":true},"\\n",{"score":{"name":"VarBoSplMS.1Teilnehmer","objective":"PZBoSplMS.1Wert"},"color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]'

execute if score VarBoSplMS.1Wartende PZBoSplMS.1Wert matches 1.. as @e[type=minecraft:interaction,tag=EtiBoSplMS.1Wartesaal,sort=nearest,limit=1] at @s run function bow-spleef-minispiel:v1warten

execute if score VarBoSplMS.1Zaehlen PZBoSplMS.1Wert matches 1 at @e[type=minecraft:interaction,tag=EtiBoSplMS.1Wartesaal,sort=nearest,limit=1] as @e[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld,sort=nearest,limit=1] run function bow-spleef-minispiel:v1spielstart with entity @s data."EigBoSplMS.1Argumente"

execute if score VarBoSplMS.1Spielen PZBoSplMS.1Wert matches 1 if score VarBoSplMS.1Spielende PZBoSplMS.1Wert matches 1 at @e[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld,sort=nearest,limit=1] run function bow-spleef-minispiel:v1spielende
