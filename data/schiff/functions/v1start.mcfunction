# Das Auslöser-Punktestand-Ziel wird erstellt.
scoreboard objectives add PZSchiff.1Wert trigger ["Schiff.1: ",{"text":"Auslöser für Nachrichten","bold":true}]

# Das Team für Piloten wird erstellt und der nächstgelegene Spieler wird in dieses gesteckt.
team add TMSchiff.1Kap ["Schiff.1: ",{"text":"Kapitäne","bold":true}]
team join TMSchiff.1Kap @p[distance=..5,team=!TMSchiff.1Kap]

# Der Schiff-Rüstungsständer mit einem zweiten huckepack, wird 25 Meter über der Befehlsquelle erzeugt.
give @a[distance=..15] minecraft:armor_stand{schiff:"v1gegenstand",display:{Name:'{"text":"Schiff","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"']},EntityTag:{Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Schiff","color":"gold","bold":true}',Tags:["EtiSchiff.1Alle","EtiSchiff.1Erstellen"] } }

give @a[distance=..15] minecraft:armor_stand{schiff:"v1gegenstand",display:{Name:'{"text":"Kanal","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um einen Kanal zu erzeugen"']},EntityTag:{Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Kanal","color":"gold","bold":true}',Tags:["EtiSchiff.1Alle","EtiSchiff.1Kanal"] } }

give @a[distance=..15] minecraft:armor_stand{schiff:"v1gegenstand",display:{Name:'{"text":"Hafen","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um einen Hafen zu erzeugen"']},EntityTag:{Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Hafen","color":"gold","bold":true}',Tags:["EtiSchiff.1Alle","EtiSchiff.1Hafen"] } }

# Einen Block unter dem Schiff-Rüstungsständer wird ein Eichenholzbrett pZlatziert, damit der Spieler bei der Teleportation auf festen Untegrund steht.
execute at @e[type=minecraft:armor_stand,tag=EtiSchiff.1Schiff] run setblock ~ ~-1 ~ minecraft:oak_planks replace
execute at @e[type=minecraft:armor_stand,tag=EtiSchiff.1Schiff] run teleport @p[team=TMSchiff.1Kap] ~ ~ ~

# Der Spieler bekommt den Wert acht gesetzt. Das sorgt dafür, dass das Schiff einen Tick später erstellt wird.
scoreboard players set @p[team=TMSchiff.1Kap] PZSchiff.1Wert 8
