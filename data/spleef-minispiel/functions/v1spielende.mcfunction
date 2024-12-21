
execute if score VarSpleeMS.1Beenden PZSpleeMS.1Wert matches 16 if score VarSpleeMS.1Befristet PZSpleeMS.1Wert matches ..599 if entity @p[tag=EtiSpleeMS.1Spielen,tag=EtiSpleeMS.1Verloren] run tellraw @a[tag=EtiSpleeMS.1Spielen] ["Spleef-Minispiel.1:\n",{"storage":"spleef-minispiel:v1daten","nbt":"\"EigSpleeMS.1Name\"","interpret":true},{"selector":"@p[tag=EtiSpleeMS.1Spielen,tag=!EtiSpleeMS.1Verloren]","color":"green","bold":true},{"text":" hat das Spiel gewonnen!","color":"gold","bold":true}]

execute if score VarSpleeMS.1Beenden PZSpleeMS.1Wert matches 16 if score VarSpleeMS.1Befristet PZSpleeMS.1Wert matches ..599 unless entity @a[tag=EtiSpleeMS.1Spielen,tag=!EtiSpleeMS.1Verloren] run tellraw @a[tag=EtiSpleeMS.1Spielen] ["Spleef-Minispiel.1:\n",{"storage":"spleef-minispiel:v1daten","nbt":"\"EigSpleeMS.1Name\"","interpret":true},{"text":"Unentschieden!","color":"gold","bold":true}]

execute if score VarSpleeMS.1Beenden PZSpleeMS.1Wert matches 16 if score VarSpleeMS.1Befristet PZSpleeMS.1Wert matches 600.. run tellraw @a[tag=EtiSpleeMS.1Spielen] ["Spleef-Minispiel.1:\n",{"storage":"spleef-minispiel:v1daten","nbt":"\"EigSpleeMS.1Name\"","interpret":true},{"text":"Zeit ist abgelaufen!","color":"red","bold":true}]

execute if score VarSpleeMS.1Beenden PZSpleeMS.1Wert matches 16 if score VarSpleeMS.1Befristet PZSpleeMS.1Wert matches 600.. run playsound minecraft:entity.player.levelup master @p[tag=EtiSpleeMS.1Spielen,tag=!EtiSpleeMS.1Verloren] ~ ~ ~

execute if score VarSpleeMS.1Beenden PZSpleeMS.1Wert matches 16 if score VarSpleeMS.1Befristet PZSpleeMS.1Wert matches 600.. run playsound minecraft:entity.wither.death master @a[tag=EtiSpleeMS.1Spielen,tag=EtiSpleeMS.1Verloren] ~ ~ ~

execute if score VarSpleeMS.1Beenden PZSpleeMS.1Wert matches 16 if score VarSpleeMS.1Befristet PZSpleeMS.1Wert matches 600.. unless entity @a[tag=EtiSpleeMS.1Spielen,tag=!EtiSpleeMS.1Verloren] run playsound minecraft:block.note_block.bell master @a[tag=EtiSpleeMS.1Spielen] ~ ~ ~ 3 0

execute at @e[type=minecraft:marker,tag=EtiSpleeMS.1Spielfeld,sort=nearest,limit=1] run clear @a[distance=..100,tag=EtiSpleeMS.1Spielen] minecraft:golden_shovel[minecraft:custom_data~{EigSpleeMS.1Alle:true}]

execute store result score VarSpleeMS.1IstNull PZSpleeMS.1Wert run scoreboard players remove VarSpleeMS.1Beenden PZSpleeMS.1Wert 1
scoreboard players operation VarSpleeMS.1IstNull PZSpleeMS.1Wert %= KonstSpleeMS.1FUENF PZSpleeMS.1Wert

execute if score VarSpleeMS.1Beenden PZSpleeMS.1Wert matches 1.. run return run execute if score VarSpleeMS.1IstNull PZSpleeMS.1Wert matches 0 run tellraw @a[tag=EtiSpleeMS.1Spielen] ["Spleef-Minispiel.1:\n",{"storage":"spleef-minispiel:v1daten","nbt":"\"EigSpleeMS.1Name\"","interpret":true},{"text":"Spiel endet in ","color":"yellow","bold":true},{"score":{"name":"VarSpleeMS.1Beenden","objective":"PZSpleeMS.1Wert"},"color":"dark_purple","bold":true},{"text":" Sekunden!","bold":true}]

execute at @e[type=minecraft:marker,tag=EtiSpleeMS.1Ebene,sort=nearest,limit=1] run place template spleef-minispiel:v1ebene ~ ~ ~ none
execute at @e[type=minecraft:marker,tag=EtiSpleeMS.1Ebene,sort=nearest,limit=1] run place template spleef-minispiel:v1ebene ~ ~ ~ clockwise_90
execute at @e[type=minecraft:marker,tag=EtiSpleeMS.1Ebene,sort=nearest,limit=1] run place template spleef-minispiel:v1ebene ~ ~ ~ 180
execute at @e[type=minecraft:marker,tag=EtiSpleeMS.1Ebene,sort=nearest,limit=1] run place template spleef-minispiel:v1ebene ~ ~ ~ counterclockwise_90

scoreboard players set VarSpleeMS.1Spielen PZSpleeMS.1Wert 0

title @a[tag=EtiSpleeMS.1Spielen] title ["",{"text":"Spiel vorbei!","color":"red","bold":true}]

execute as @a[tag=EtiSpleeMS.1Spielen] run function spleef-minispiel:v1beitreten
