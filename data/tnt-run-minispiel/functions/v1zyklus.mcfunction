
execute at @e[type=minecraft:text_display,tag=EtiTNTRMS.1Teleporter,sort=nearest,limit=1] run particle minecraft:portal ~ ~-3 ~ 0 1 0 0.7 35 force @a[distance=..15]

execute if score VarTNTRMS.1Teilnehmer PZTNTRMS.1Wert matches 10 at @e[type=minecraft:text_display,tag=EtiTNTRMS.1Teleporter,sort=nearest,limit=1] positioned ~ ~-3 ~ run title @a[distance=..3] actionbar ["",{"text":"Lobby ist voll","color":"red","bold":true}]
execute if score VarTNTRMS.1Teilnehmer PZTNTRMS.1Wert matches ..9 at @e[type=minecraft:text_display,tag=EtiTNTRMS.1Teleporter,sort=nearest,limit=1] positioned ~ ~-3 ~ as @p[distance=..3,gamemode=!spectator] run function tnt-run-minispiel:v1beitreten

execute if score VarTNTRMS.1Wartende PZTNTRMS.1Wert matches 1.. as @e[type=minecraft:interaction,tag=EtiTNTRMS.1Wartesaal,sort=nearest,limit=1] store success score @s PZTNTRMS.1Wert if data entity @s interaction
execute if score VarTNTRMS.1Wartende PZTNTRMS.1Wert matches 1.. as @e[type=minecraft:interaction,tag=EtiTNTRMS.1Wartesaal,scores={PZTNTRMS.1Wert=1},sort=nearest,limit=1] on target run tag @s[team=TMTNTRMS.1Lobby,nbt={SelectedItem:{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigTNTRMS.1Verlassen:true} } } }] add EtiTNTRMS.1Verlassen
execute if score VarTNTRMS.1Wartende PZTNTRMS.1Wert matches 1.. run data remove entity @e[type=minecraft:interaction,tag=EtiTNTRMS.1Wartesaal,scores={PZTNTRMS.1Wert=1},sort=nearest,limit=1] interaction
tag @a[team=TMTNTRMS.1Lobby,tag=!EtiTNTRMS.1Verlassen,scores={PZTNTRMS.1Verlassen=1..}] add EtiTNTRMS.1Verlassen
tag @a[team=TMTNTRMS.1Lobby,tag=!EtiTNTRMS.1Verlassen,nbt=!{Inventory:[{id:"minecraft:red_bed",components:{"minecraft:custom_data":{EigTNTRMS.1Verlassen:true} } } ] }] add EtiTNTRMS.1Verlassen
execute as @a[tag=EtiTNTRMS.1Verlassen] at @s run function tnt-run-minispiel:v1verlassen

execute if score VarTNTRMS.1Spielende PZTNTRMS.1Wert matches 0 at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run function tnt-run-minispiel:v1spielfeld

execute if score VarTNTRMS.1Spielende PZTNTRMS.1Wert matches 0 if score VarTNTRMS.1Verzoegern PZTNTRMS.1Wert matches -5.. at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] as @a[distance=..100,tag=EtiTNTRMS.1Spielen,tag=!EtiTNTRMS.1Verloren] at @s run function tnt-run-minispiel:v1spielen

scoreboard players add #VarTNTRMS.1Tick PZTNTRMS.1Wert 1
execute if score #VarTNTRMS.1Tick PZTNTRMS.1Wert matches 1..19 run return 0
scoreboard players set #VarTNTRMS.1Tick PZTNTRMS.1Wert 0

execute if score VarTNTRMS.1Befristet PZTNTRMS.1Wert matches ..599 run scoreboard players add VarTNTRMS.1Befristet PZTNTRMS.1Wert 1
execute if score VarTNTRMS.1Befristet PZTNTRMS.1Wert matches 600.. run scoreboard players set VarTNTRMS.1Spielende PZTNTRMS.1Wert 1
execute if score VarTNTRMS.1Spieler PZTNTRMS.1Wert matches ..1 run scoreboard players set VarTNTRMS.1Spielende PZTNTRMS.1Wert 1

execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] as @a[distance=..100,team=!] unless entity @s[team=!TMTNTRMS.1Lobby,tag=!EtiTNTRMS.1Spielen] positioned ~-30 ~-1 ~-30 unless entity @s[dx=60,dy=40,dz=60] run function tnt-run-minispiel:v1verlassen

execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] as @a[distance=..100,team=!TMTNTRMS.1Lobby,tag=!EtiTNTRMS.1Spielen] positioned ~-30 ~-1 ~-30 if entity @s[dx=60,dy=40,dz=60] run function tnt-run-minispiel:v1verlassen

execute store result bossbar tnt-run-minispiel:v1lobby value store result score VarTNTRMS.1Wartende PZTNTRMS.1Wert if entity @a[team=TMTNTRMS.1Lobby]

execute store result score VarTNTRMS.1Spieler PZTNTRMS.1Wert if entity @a[tag=EtiTNTRMS.1Spielen,tag=!EtiTNTRMS.1Verloren]

execute store result score VarTNTRMS.1Teilnehmer PZTNTRMS.1Wert if entity @a[tag=EtiTNTRMS.1Teilnehmer]

data modify entity @e[distance=..15,type=minecraft:text_display,tag=EtiTNTRMS.1Teleporter,sort=nearest,limit=1] text set value '["",{"text":"Lobby","color":"yellow","bold":true},"\\n",{"score":{"name":"VarTNTRMS.1Teilnehmer","objective":"PZTNTRMS.1Wert"},"color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]'

execute if score VarTNTRMS.1Wartende PZTNTRMS.1Wert matches 1.. as @e[type=minecraft:interaction,tag=EtiTNTRMS.1Wartesaal,sort=nearest,limit=1] at @s run function tnt-run-minispiel:v1warten

execute if score VarTNTRMS.1Zaehlen PZTNTRMS.1Wert matches 1 at @e[type=minecraft:interaction,tag=EtiTNTRMS.1Wartesaal,sort=nearest,limit=1] as @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run function tnt-run-minispiel:v1spielstart with entity @s data."EigTNTRMS.1Argumente"

execute if score VarTNTRMS.1Spielen PZTNTRMS.1Wert matches 1 if score VarTNTRMS.1Spielende PZTNTRMS.1Wert matches 1 at @e[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld,sort=nearest,limit=1] run function tnt-run-minispiel:v1spielende

