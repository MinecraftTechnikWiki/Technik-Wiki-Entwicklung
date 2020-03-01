# Wenn der Spieler den Chat angeklickt hat und dabei für der Auslöser den Wert eins bis vier hat, wird damit die entsprechende Richtung eingestellt.
execute if entity @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=1}] run data merge entity @s {CustomName:'{"bold":true,"color":"blue","text":"Norden"}',Rotation:[180.0f,0.0f]}
execute if entity @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=2}] run data merge entity @s {CustomName:'{"bold":true,"color":"gold","text":"Osten"}',Rotation:[270.0f,0.0f]}
execute if entity @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=3}] run data merge entity @s {CustomName:'{"bold":true,"color":"blue","text":"Süden"}',Rotation:[0.0f,0.0f]}
execute if entity @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=4}] run data merge entity @s {CustomName:'{"bold":true,"color":"gold","text":"Westen"}',Rotation:[90.0f,0.0f]}

# Wenn der Spieler im Chat auf die Neiugung geklickt hat, wird der entsprechende Wert die Neigung einstellen.
execute if entity @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=5}] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.1Neigung,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"green","text":"Oben"}'}
execute if entity @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=6}] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.1Neigung,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"aqua","text":"Geradeaus"}'}
execute if entity @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=7}] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiFlugz.1Neigung,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"Unten"}'}

# Wenn der Spieler die Option des Tempomat angeklickt hat, so wird dieser entweder aktiviert oder deaktiviert.
execute if entity @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=8}] run data merge entity @e[type=minecraft:armor_stand,tag=EtiFlugz.1Tempomat,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"green","text":"wahr"}'}
execute if entity @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=9}] run data merge entity @e[type=minecraft:armor_stand,tag=EtiFlugz.1Tempomat,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"falsch"}'}

# Für die Aussenansicht kann der Spieler ebenfalls diese Option aktivieren oder deaktivieren. Der Spieler wird dabei in den Zuschauermodus versetzt oder wieder zurück in den Kreativmodus.
execute if entity @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=10}] run data merge entity @e[type=minecraft:armor_stand,tag=EtiFlugz.1Aussenansicht,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"green","text":"wahr"}'}
gamemode spectator @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=10}]
execute if entity @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=11}] run data merge entity @e[type=minecraft:armor_stand,tag=EtiFlugz.1Aussenansicht,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"falsch"}'}
gamemode creative @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=11}]
teleport @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=11}] ~ ~ ~

# Falls der Spieler auf die Fahren-Option geklickt hat, wird die Flugzeug-Funktion geladen
execute if entity @p[distance=..28,team=TMFlugz.1Pilot,scores={PZFlugz.1Wert=12}] run function flugzeug:v1flugzeug
