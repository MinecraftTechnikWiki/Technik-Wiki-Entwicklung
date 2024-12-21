
execute at @e[type=minecraft:text_display,tag=EtiSpleeMS.1Teleporter,sort=nearest,limit=1] run particle minecraft:portal ~ ~-3 ~ 0 1 0 0.7 35 force @a[distance=..15]

execute if score VarSpleeMS.1Teilnehmer PZSpleeMS.1Wert matches 10 at @e[type=minecraft:text_display,tag=EtiSpleeMS.1Teleporter,sort=nearest,limit=1] positioned ~ ~-3 ~ run title @a[distance=..3] actionbar ["",{"text":"Lobby ist voll","color":"red","bold":true}]
execute if score VarSpleeMS.1Teilnehmer PZSpleeMS.1Wert matches ..9 at @e[type=minecraft:text_display,tag=EtiSpleeMS.1Teleporter,sort=nearest,limit=1] positioned ~ ~-3 ~ as @p[distance=..3,gamemode=!spectator] run function spleef-minispiel:v1beitreten

execute if score VarSpleeMS.1Wartende PZSpleeMS.1Wert matches 1.. as @e[type=minecraft:interaction,tag=EtiSpleeMS.1Wartesaal,sort=nearest,limit=1] store success score @s PZSpleeMS.1Wert if data entity @s interaction
execute if score VarSpleeMS.1Wartende PZSpleeMS.1Wert matches 1.. as @e[type=minecraft:interaction,tag=EtiSpleeMS.1Wartesaal,scores={PZSpleeMS.1Wert=1},sort=nearest,limit=1] on target run tag @s[team=TMSpleeMS.1Lobby,nbt={SelectedItem:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigSpleeMS.1Verlassen:true} } } }] add EtiSpleeMS.1Verlassen
execute if score VarSpleeMS.1Wartende PZSpleeMS.1Wert matches 1.. run data remove entity @e[type=minecraft:interaction,tag=EtiSpleeMS.1Wartesaal,scores={PZSpleeMS.1Wert=1},sort=nearest,limit=1] interaction
tag @a[team=TMSpleeMS.1Lobby,tag=!EtiSpleeMS.1Verlassen,scores={PZSpleeMS.1Verlassen=1..}] add EtiSpleeMS.1Verlassen
tag @a[team=TMSpleeMS.1Lobby,tag=!EtiSpleeMS.1Verlassen,nbt=!{Inventory:[{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigSpleeMS.1Verlassen:true} } } ] }] add EtiSpleeMS.1Verlassen
execute as @a[tag=EtiSpleeMS.1Verlassen] at @s run function spleef-minispiel:v1verlassen

execute if score VarSpleeMS.1Spielende PZSpleeMS.1Wert matches 0 at @e[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld,sort=nearest,limit=1] run function spleef-minispiel:v1spielfeld
execute if score VarSpleeMS.1Spielende PZSpleeMS.1Wert matches 0 at @e[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld,sort=nearest,limit=1] as @a[distance=..100,tag=EtiSpleeMS.1Spielen,tag=!EtiSpleeMS.1Verloren] at @s run function spleef-minispiel:v1spielen

scoreboard players add #VarSpleeMS.1Tick PZSpleeMS.1Wert 1
execute if score #VarSpleeMS.1Tick PZSpleeMS.1Wert matches 1..19 run return 0
scoreboard players set #VarSpleeMS.1Tick PZSpleeMS.1Wert 0

execute if score VarSpleeMS.1Befristet PZSpleeMS.1Wert matches ..599 run scoreboard players add VarSpleeMS.1Befristet PZSpleeMS.1Wert 1
execute if score VarSpleeMS.1Befristet PZSpleeMS.1Wert matches 600.. run scoreboard players set VarSpleeMS.1Spielende PZSpleeMS.1Wert 1
execute if score VarSpleeMS.1Spieler PZSpleeMS.1Wert matches ..1 run scoreboard players set VarSpleeMS.1Spielende PZSpleeMS.1Wert 1

execute at @e[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld,sort=nearest,limit=1] as @a[distance=..100,team=!] unless entity @s[team=!TMSpleeMS.1Lobby,tag=!EtiSpleeMS.1Spielen] positioned ~-40 ~-1 ~-40 unless entity @s[dx=80,dy=40,dz=80] run function spleef-minispiel:v1verlassen

execute at @e[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld,sort=nearest,limit=1] as @a[distance=..100,team=!TMSpleeMS.1Lobby,tag=!EtiSpleeMS.1Spielen] positioned ~-40 ~-1 ~-40 if entity @s[dx=80,dy=40,dz=80] run function spleef-minispiel:v1verlassen

execute store result bossbar spleef-minispiel:v1lobby value store result score VarSpleeMS.1Wartende PZSpleeMS.1Wert if entity @a[team=TMSpleeMS.1Lobby]

execute store result score VarSpleeMS.1Spieler PZSpleeMS.1Wert if entity @a[tag=EtiSpleeMS.1Spielen,tag=!EtiSpleeMS.1Verloren]

execute store result score VarSpleeMS.1Teilnehmer PZSpleeMS.1Wert if entity @a[tag=EtiSpleeMS.1Teilnehmer]

data modify entity @e[distance=..15,type=minecraft:text_display,tag=EtiSpleeMS.1Teleporter,sort=nearest,limit=1] text set value '["",{"text":"Lobby","color":"yellow","bold":true},"\\n",{"score":{"name":"VarSpleeMS.1Teilnehmer","objective":"PZSpleeMS.1Wert"},"color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]'

execute if score VarSpleeMS.1Wartende PZSpleeMS.1Wert matches 1.. as @e[type=minecraft:interaction,tag=EtiSpleeMS.1Wartesaal,sort=nearest,limit=1] at @s run function spleef-minispiel:v1warten

execute if score VarSpleeMS.1Zaehlen PZSpleeMS.1Wert matches 1 at @e[type=minecraft:interaction,tag=EtiSpleeMS.1Wartesaal,sort=nearest,limit=1] as @e[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld,sort=nearest,limit=1] run function spleef-minispiel:v1spielstart with entity @s data."EigSpleeMS.1Argumente"

execute if score VarSpleeMS.1Spielen PZSpleeMS.1Wert matches 1 if score VarSpleeMS.1Spielende PZSpleeMS.1Wert matches 1 at @e[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld,sort=nearest,limit=1] run function spleef-minispiel:v1spielende
