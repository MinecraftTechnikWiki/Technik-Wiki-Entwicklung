
execute at @e[type=minecraft:text_display,tag=EtiWartS.1Teleporter,sort=nearest,limit=1] run particle minecraft:portal ~ ~-3 ~ 0 1 0 0.7 35 force @a[distance=..15]

execute if score VarWartS.1Teilnehmer PZWartS.1Wert matches 10 at @e[type=minecraft:text_display,tag=EtiWartS.1Teleporter,sort=nearest,limit=1] positioned ~ ~-3 ~ run title @a[distance=..3] actionbar ["",{"text":"Lobby ist voll","color":"red","bold":true}]
execute if score VarWartS.1Teilnehmer PZWartS.1Wert matches ..9 at @e[type=minecraft:text_display,tag=EtiWartS.1Teleporter,sort=nearest,limit=1] positioned ~ ~-3 ~ as @p[distance=..3,gamemode=!spectator] run function wartesaal:v1beitreten

execute if score VarWartS.1Wartende PZWartS.1Wert matches 1.. as @e[type=minecraft:interaction,tag=EtiWartS.1Wartesaal,sort=nearest,limit=1] store success score @s PZWartS.1Wert if data entity @s interaction
execute if score VarWartS.1Wartende PZWartS.1Wert matches 1.. as @e[type=minecraft:interaction,tag=EtiWartS.1Wartesaal,scores={PZWartS.1Wert=1},sort=nearest,limit=1] on target run tag @s[team=TMWartS.1Lobby,nbt={SelectedItem:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigWartS.1Verlassen:true} } } }] add EtiWartS.1Verlassen
execute if score VarWartS.1Wartende PZWartS.1Wert matches 1.. run data remove entity @e[type=minecraft:interaction,tag=EtiWartS.1Wartesaal,scores={PZWartS.1Wert=1},sort=nearest,limit=1] interaction
tag @a[team=TMWartS.1Lobby,tag=!EtiWartS.1Verlassen,scores={PZWartS.1Verlassen=1..}] add EtiWartS.1Verlassen
tag @a[team=TMWartS.1Lobby,tag=!EtiWartS.1Verlassen,nbt=!{Inventory:[{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigWartS.1Verlassen:true} } } ] }] add EtiWartS.1Verlassen
execute as @a[tag=EtiWartS.1Verlassen] at @s run function wartesaal:v1verlassen

scoreboard players add #VarWartS.1Tick PZWartS.1Wert 1
execute if score #VarWartS.1Tick PZWartS.1Wert matches 1..19 run return 0
scoreboard players set #VarWartS.1Tick PZWartS.1Wert 0

execute at @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] as @a[distance=..100,team=!] unless entity @s[team=!TMWartS.1Lobby,tag=!EtiWartS.1Spielen] positioned ~-22 ~-1 ~-22 unless entity @s[dx=44,dy=44,dz=44] run function wartesaal:v1verlassen

execute at @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] as @a[distance=..100,team=!TMWartS.1Lobby,tag=!EtiWartS.1Spielen] positioned ~-22 ~-1 ~-22 if entity @s[dx=44,dy=44,dz=44] run function wartesaal:v1verlassen

execute store result bossbar wartesaal:v1lobby value store result score VarWartS.1Wartende PZWartS.1Wert if entity @a[team=TMWartS.1Lobby]
execute store result score VarWartS.1Teilnehmer PZWartS.1Wert if entity @a[tag=EtiWartS.1Teilnehmer]

data modify entity @e[distance=..15,type=minecraft:text_display,tag=EtiWartS.1Teleporter,sort=nearest,limit=1] text set value '["",{"text":"Lobby","color":"yellow","bold":true},"\\n",{"score":{"name":"VarWartS.1Teilnehmer","objective":"PZWartS.1Wert"},"color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]'

execute if score VarWartS.1Wartende PZWartS.1Wert matches 1.. as @e[type=minecraft:interaction,tag=EtiWartS.1Wartesaal,sort=nearest,limit=1] at @s run function wartesaal:v1warten

execute if score VarWartS.1Zaehlen PZWartS.1Wert matches 1 at @e[type=minecraft:interaction,tag=EtiWartS.1Wartesaal,sort=nearest,limit=1] as @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] run function wartesaal:v1spielstart with entity @s data."EigWartS.1Argumente"

execute if score VarWartS.1Spielen PZWartS.1Wert matches 1 at @e[type=minecraft:marker,tag=EtiWartS.1Spielfeld,sort=nearest,limit=1] run function wartesaal:v1spielende
