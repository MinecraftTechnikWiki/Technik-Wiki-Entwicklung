
tag @p[distance=..2] add EtiMiniSS.1NeuerSpieler
give @a[tag=EtiMiniSS.1NeuerSpieler] minecraft:red_bed{display:{Name:"{\"text\":\"Spiel verlassen\",\"color\":\"gray\",\"bold\":true}",Lore:["Minispiel-System.1","Wirf das Bett mit Q","um das Minispiel","zu verlassen"]} }
scoreboard players set #VarMiniSS.1TickCountdown PZMiniSS.1Spiel 20
scoreboard players set #VarMiniSS.1Countdown PZMiniSS.1Spiel 30
execute if block ~ ~ ~ minecraft:red_terracotta run team join TMMiniSS.1Rot @a[tag=EtiMiniSS.1NeuerSpieler,team=!TMMiniSS.1Blau]
execute if entity @a[tag=EtiMiniSS.1NeuerSpieler,team=TMMiniSS.1Rot] if block ~ ~ ~ minecraft:red_terracotta run setblock ~ ~ ~ minecraft:blue_terracotta replace
execute if block ~ ~ ~ minecraft:blue_terracotta run team join TMMiniSS.1Blau @a[tag=EtiMiniSS.1NeuerSpieler,team=!TMMiniSS.1Rot]
execute if entity @a[tag=EtiMiniSS.1NeuerSpieler,team=TMMiniSS.1Blau] if block ~ ~ ~ minecraft:blue_terracotta run setblock ~ ~ ~ minecraft:red_terracotta replace
bossbar set minispiel-system:v1lobbyzeit players @a[tag=EtiMiniSS.1NeuerSpieler]
effect give @a[tag=EtiMiniSS.1NeuerSpieler] minecraft:saturation 10 3 true
effect give @a[tag=EtiMiniSS.1NeuerSpieler] minecraft:regeneration 10 3 true
effect give @a[tag=EtiMiniSS.1NeuerSpieler] minecraft:resistance 10 3 true
gamemode adventure @a[tag=EtiMiniSS.1NeuerSpieler]
tellraw @a[tag=EtiMiniSS.1NeuerSpieler] ["Minispiel-System.1: ",{"text":"[","color":"dark_gray"},{"text":"Gildenschlacht","color":"gray","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Lobby betreten","bold":true}]
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] run spreadplayers ~ ~ 0 15 false @a[tag=EtiMiniSS.1NeuerSpieler]
tag @a[tag=EtiMiniSS.1NeuerSpieler] remove EtiMiniSS.1NeuerSpieler
