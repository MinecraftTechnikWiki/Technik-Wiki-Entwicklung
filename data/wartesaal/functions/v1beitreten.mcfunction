
clear @s

effect clear @s

experience set @s 0

gamemode adventure @s

team join TMWartS.1Lobby @s

effect give @s minecraft:saturation 10 3 true
effect give @s minecraft:resistance 10 3 true
effect give @s minecraft:regeneration 10 3 true
effect give @s minecraft:instant_health 10 3 true

scoreboard players set VarWartS.1Beginnen PZWartS.1Wert 31

execute store result score VarWartS.1Wartende PZWartS.1Wert if entity @a[team=TMWartS.1Lobby]

tag @s add EtiWartS.1Teilnehmer
execute store result score VarWartS.1Teilnehmer PZWartS.1Wert if entity @a[tag=EtiWartS.1Teilnehmer]

bossbar set wartesaal:v1lobby players @a[team=TMWartS.1Lobby]
bossbar set wartesaal:v1lobby name ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"score":{"name":"VarWartS.1Wartende","objective":"PZWartS.1Wert"},"color":"green","bold":true}]

execute if entity @s[tag=!EtiWartS.1Spielen] run tellraw @a[team=TMWartS.1Lobby] ["Wartesaal.1:\n",{"storage":"wartesaal:v1daten","nbt":"\"EigWartS.1Name\"","interpret":true},{"selector":"@s","color":"green","bold":true},{"text":" hat die Lobby betreten ","color":"yellow","bold":true},{"score":{"name":"VarWartS.1Wartende","objective":"PZWartS.1Wert"},"color":"dark_purple","bold":true},{"text":"/","bold":true},{"text":"10","color":"dark_purple","bold":true}]

give @s minecraft:red_bed[minecraft:lore=['"Droppe das Bett mit Q"','"um die Lobby"','"zu verlassen"'],minecraft:custom_name='{"text":"Lobby verlassen","color":"gray","bold":true}',minecraft:custom_data={EigWartS.1Alle:true,EigWartS.1Verlassen:true}] 1

execute at @e[distance=..75,type=minecraft:interaction,tag=EtiWartS.1Wartesaal,sort=nearest,limit=1] run teleport @s ~ ~ ~
execute at @s run particle minecraft:portal ~ ~ ~ 0 1 0 0.7 35 force @a[distance=..15,team=TMWartS.1Lobby]
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..15,team=TMWartS.1Lobby] ~ ~ ~ 10 1

tellraw @s[tag=!EtiWartS.1Spielen] ["",{"text":"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞","color":"green","bold":true},"\n",{"storage":"wartesaal:v1daten","nbt":"\"EigWartS.1Name\"","interpret":true},"\n",{"text":"Hier könnte die Beschreibung deines eigenen Minispiels stehen!","color":"yellow","bold":true},"\n",{"text":"⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞⃞","color":"green","bold":true}]

tag @s[tag=EtiWartS.1Spielen] remove EtiWartS.1Spielen

execute if score VarWartS.1Spielen PZWartS.1Wert matches 0 run return 0

gamemode spectator @s

team join TMWartS.1Spielen @s

teleport @s @r[gamemode=!spectator,tag=EtiWartS.1Spielen]

tag @s add EtiWartS.1Spielen
