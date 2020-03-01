
tag @p[distance=..2] add EtiGildSMS.1NeuerSpieler
give @a[tag=EtiGildSMS.1NeuerSpieler] minecraft:red_bed{gildenschlacht-minispiel:"v1gegenstand",display:{Name:'{"text":"Spiel verlassen","color":"gray","bold":true}',Lore:['"Wirf das Bett mit Q"','"um das Minispiel"','"zu verlassen"']} }
scoreboard players set #VarGildSMS.1TickCountdown PZGildSMS.1Spiel 20
scoreboard players set #VarGildSMS.1Countdown PZGildSMS.1Spiel 30
execute if block ~ ~ ~ minecraft:red_terracotta run team join TMGildSMS.1Rot @a[tag=EtiGildSMS.1NeuerSpieler,team=!TMGildSMS.1Blau]
execute if entity @a[tag=EtiGildSMS.1NeuerSpieler,team=TMGildSMS.1Rot] if block ~ ~ ~ minecraft:red_terracotta run setblock ~ ~ ~ minecraft:blue_terracotta replace
execute if block ~ ~ ~ minecraft:blue_terracotta run team join TMGildSMS.1Blau @a[tag=EtiGildSMS.1NeuerSpieler,team=!TMGildSMS.1Rot]
execute if entity @a[tag=EtiGildSMS.1NeuerSpieler,team=TMGildSMS.1Blau] if block ~ ~ ~ minecraft:blue_terracotta run setblock ~ ~ ~ minecraft:red_terracotta replace
bossbar set gildenschlacht-minispiel:v1lobbyzeit players @a[tag=EtiGildSMS.1NeuerSpieler]
effect give @a[tag=EtiGildSMS.1NeuerSpieler] minecraft:saturation 10 3 true
effect give @a[tag=EtiGildSMS.1NeuerSpieler] minecraft:regeneration 10 3 true
effect give @a[tag=EtiGildSMS.1NeuerSpieler] minecraft:resistance 10 3 true
gamemode adventure @a[tag=EtiGildSMS.1NeuerSpieler]
tellraw @a[tag=EtiGildSMS.1NeuerSpieler] ["Gildenschlacht-Minispiel.1:\n",{"text":"[","color":"dark_gray"},{"text":"Gildenschlacht","color":"gray","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Lobby betreten","bold":true}]
execute at @e[type=minecraft:armor_stand,tag=EtiGildSMS.1Spielfeld] run spreadplayers ~ ~ 0 15 false @a[tag=EtiGildSMS.1NeuerSpieler]
tag @a[tag=EtiGildSMS.1NeuerSpieler] remove EtiGildSMS.1NeuerSpieler
