
clear @s

effect clear @s

experience set @s 0 points
experience set @s 0 levels

gamemode adventure @s

team join TMBoSplMS.1Lobby @s

effect give @s minecraft:saturation 10 3 true
effect give @s minecraft:resistance 10 3 true
effect give @s minecraft:regeneration 10 3 true
effect give @s minecraft:instant_health 10 3 true
effect give @s minecraft:night_vision infinite 1 true

scoreboard players set VarBoSplMS.1Beginnen PZBoSplMS.1Wert 16

execute store result score VarBoSplMS.1Wartende PZBoSplMS.1Wert if entity @a[team=TMBoSplMS.1Lobby]

tag @s add EtiBoSplMS.1Teilnehmer
execute store result score VarBoSplMS.1Teilnehmer PZBoSplMS.1Wert if entity @a[tag=EtiBoSplMS.1Teilnehmer]

bossbar set bow-spleef-minispiel:v1lobby players @a[team=TMBoSplMS.1Lobby]
bossbar set bow-spleef-minispiel:v1lobby name ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"score":{"name":"VarBoSplMS.1Wartende","objective":"PZBoSplMS.1Wert"},"color":"green","bold":true}]

execute if entity @s[tag=!EtiBoSplMS.1Spielen] run tellraw @a[team=TMBoSplMS.1Lobby] ["Bow-Spleef-Minispiel.1:\n",{"storage":"bow-spleef-minispiel:v1daten","nbt":"\"EigBoSplMS.1Name\"","interpret":true},{"selector":"@s","color":"green","bold":true},{"text":" hat die Lobby betreten ","color":"yellow","bold":true},{"score":{"name":"VarBoSplMS.1Wartende","objective":"PZBoSplMS.1Wert"},"color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]

give @s minecraft:red_bed[minecraft:lore=['"Droppe das Bett mit Q"','"um die Lobby"','"zu verlassen"'],minecraft:custom_name='{"text":"Lobby verlassen","color":"gray","bold":true}',minecraft:custom_data={EigBoSplMS.1Alle:true,EigBoSplMS.1Verlassen:true}] 1

execute at @e[distance=..50,type=minecraft:interaction,tag=EtiBoSplMS.1Wartesaal,sort=nearest,limit=1] run teleport @s ~ ~ ~
execute at @s run particle minecraft:portal ~ ~ ~ 0 1 0 0.7 35 force @a[distance=..15,team=TMBoSplMS.1Lobby]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..15,team=TMBoSplMS.1Lobby] ~ ~ ~ 10 1

tellraw @s[tag=!EtiBoSplMS.1Spielen] ["",{"text":"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞","color":"green","bold":true},"\n",{"storage":"bow-spleef-minispiel:v1daten","nbt":"\"EigBoSplMS.1Name\"","interpret":true},"\n",{"text":"Schieße die Blöcke unter den Spielern ab und überlebe länger als alle anderen!","color":"yellow","bold":true},"\n",{"text":"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞","color":"green","bold":true}]

tag @s[tag=EtiBoSplMS.1Verloren] remove EtiBoSplMS.1Verloren
tag @s[tag=EtiBoSplMS.1Spielen] remove EtiBoSplMS.1Spielen

execute if score VarBoSplMS.1Spielen PZBoSplMS.1Wert matches 0 run return 0

gamemode spectator @s

team join TMBoSplMS.1Spielen @s

teleport @s @r[gamemode=!spectator,tag=EtiBoSplMS.1Spielen,tag=!EtiBoSplMS.1Verloren]

tag @s add EtiBoSplMS.1Spielen
tag @s add EtiBoSplMS.1Verloren
