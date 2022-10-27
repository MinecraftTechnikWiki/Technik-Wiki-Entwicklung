# Die beiden Variablen werden auf null gesetzt und werden im späteren Verlauf erhöht, wenn das Drehen möglich ist.
scoreboard players set VarSchwB.p1Spur PZSchwB.p1Wert 0
scoreboard players set VarSchwB.p1Drehen PZSchwB.p1Wert 0

# Möchte der Spieler nach rechts oder links drehen, wird geprüft ob sich an der entsprechenden Stelle überhaupt eine Spur befindet.
execute if entity @s[scores={PZSchwB.p1Ausl=2..3}] rotated ~90 0 positioned ^ ^-1 ^3 if block ~ ~ ~ minecraft:stone_brick_stairs[half=bottom] if block ^1 ^ ^ minecraft:quartz_stairs[half=top] if block ^-1 ^ ^ minecraft:quartz_stairs[half=top] positioned ^ ^ ^-6 if block ~ ~ ~ minecraft:stone_brick_stairs[half=bottom] if block ^1 ^ ^ minecraft:quartz_stairs[half=top] if block ^-1 ^ ^ minecraft:quartz_stairs[half=top] run scoreboard players set VarSchwB.p1Spur PZSchwB.p1Wert 1

# Wenn Spuren vorhanden sind, wird anschließend rechts wie auch links geprüft ob dort nichts im Weg ist.
scoreboard players set VarSchwB.p1Unbelegt PZSchwB.p1Wert 0
execute if score VarSchwB.p1Spur PZSchwB.p1Wert matches 1 if entity @s[scores={PZSchwB.p1Ausl=2..3}] store result score VarSchwB.p1Unbelegt PZSchwB.p1Wert run fill ^-20 ^ ^-2 ^-3 ^5 ^2 minecraft:structure_void replace minecraft:air
execute if score VarSchwB.p1Spur PZSchwB.p1Wert matches 1 if score VarSchwB.p1Unbelegt PZSchwB.p1Wert matches 1.. run fill ^-20 ^ ^-2 ^-3 ^5 ^2 minecraft:air replace minecraft:structure_void
execute if score VarSchwB.p1Spur PZSchwB.p1Wert matches 1 if score VarSchwB.p1Unbelegt PZSchwB.p1Wert matches 540 run scoreboard players set VarSchwB.p1Drehen PZSchwB.p1Wert 1

scoreboard players set VarSchwB.p1Unbelegt PZSchwB.p1Wert 0
execute if score VarSchwB.p1Spur PZSchwB.p1Wert matches 1 if score VarSchwB.p1Drehen PZSchwB.p1Wert matches 1 if entity @s[scores={PZSchwB.p1Ausl=2..3}] store result score VarSchwB.p1Unbelegt PZSchwB.p1Wert run fill ^20 ^ ^-2 ^3 ^5 ^2 minecraft:structure_void replace minecraft:air
execute if score VarSchwB.p1Spur PZSchwB.p1Wert matches 1 if score VarSchwB.p1Drehen PZSchwB.p1Wert matches 1 if score VarSchwB.p1Unbelegt PZSchwB.p1Wert matches 1.. run fill ^20 ^ ^-2 ^3 ^5 ^2 minecraft:air replace minecraft:structure_void
execute if score VarSchwB.p1Spur PZSchwB.p1Wert matches 1 if score VarSchwB.p1Drehen PZSchwB.p1Wert matches 1 if score VarSchwB.p1Unbelegt PZSchwB.p1Wert matches 540 run scoreboard players set VarSchwB.p1Drehen PZSchwB.p1Wert 2

# Möchte der Spieler die Bahn um 180° umdrehen, dann wird ihm einfach der Wert gesetzt, da dies ohne Prüfung möglich ist.
execute if entity @s[scores={PZSchwB.p1Ausl=4}] run scoreboard players set VarSchwB.p1Drehen PZSchwB.p1Wert 2

# Wenn der Spieler die Bahn in eine andere Richtung drehen möchte in die die Bahn nicht gedreht werden kann, wird eine Fehlermeldung ausgegeben.
execute if score VarSchwB.p1Drehen PZSchwB.p1Wert matches 0..1 at @s[scores={PZSchwB.p1Ausl=2..4}] positioned ^ ^1 ^17 run tellraw @p[distance=..5,scores={PZSchwB.p1Ausgewaehlt=1}] ["Schwebebahn.erweitert.1:\n",{"text":"Die Schwebebahn kann an dieser Stelle nicht gedreht werden!","color":"red","bold":true}]

# Wenn das Drehen möglich ist, werden je nach Blickrichtung der Bahn die Insassen mit einem Etikett ausgestattet.
execute if score VarSchwB.p1Drehen PZSchwB.p1Wert matches 2 at @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] positioned ~-20 ~-1 ~-1 run tag @e[dx=39,dy=3,dz=3,tag=!EtiSchwB.p1Sitzen,tag=!EtiSchwB.p1Unbeachten] add EtiSchwB.p1Bewegen
execute if score VarSchwB.p1Drehen PZSchwB.p1Wert matches 2 at @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] positioned ~-1 ~-1 ~-20 run tag @e[dx=3,dy=3,dz=39,tag=!EtiSchwB.p1Sitzen,tag=!EtiSchwB.p1Unbeachten] add EtiSchwB.p1Bewegen

# Für die Drehung werden die Mittelpunkt-Koordinaten der Bahn in Variablen gespeichert.
execute store result score VarSchwB.p1X PZSchwB.p1Wert run data get entity @s Pos[0] 100
execute store result score VarSchwB.p1Z PZSchwB.p1Wert run data get entity @s Pos[2] 100

# Um die Richtung abfragen zu können, wird der Wert des Spielers in eine Variable gespeichert.
scoreboard players operation VarSchwB.p1Richtung PZSchwB.p1Wert = @s PZSchwB.p1Ausl

# Wenn das Drehen möglich ist, werden alle Insassen ausgewählt und diese rufen jeweils fürs sich die Drehungs-Funktion auf.
execute if score VarSchwB.p1Drehen PZSchwB.p1Wert matches 2 as @e[distance=..20,tag=EtiSchwB.p1Bewegen] run function schwebebahn:vp1drehung

# Wenn die Drehung möglich ist, werden alle Insassen so gedreht wie es der Fahrer vorgegeben hat.
execute if score VarSchwB.p1Drehen PZSchwB.p1Wert matches 2 at @s[scores={PZSchwB.p1Ausl=2}] as @e[distance=..20,tag=EtiSchwB.p1Bewegen] at @s run teleport @s ~ ~ ~ ~90 0
execute if score VarSchwB.p1Drehen PZSchwB.p1Wert matches 2 at @s[scores={PZSchwB.p1Ausl=3}] as @e[distance=..20,tag=EtiSchwB.p1Bewegen] at @s run teleport @s ~ ~ ~ ~-90 0
execute at @s[scores={PZSchwB.p1Ausl=4}] as @e[distance=..20,tag=EtiSchwB.p1Bewegen] at @s run teleport @s ~ ~ ~ ~180 0

# Danach wird das Etikett nicht mehr gebraucht und entfernt.
tag @e[distance=..20,tag=EtiSchwB.p1Bewegen] remove EtiSchwB.p1Bewegen

# Dem Bahn-Markierer wird die Richtungs-Eigenschaft gegeben, sodass sie abhängig der Blickrichtung, richtig sortiert werden kann.
data modify entity @s data."EigSchwB.p1Richtung" set value ['{"bold":true,"color":"gold","text":"Westen"}','{"bold":true,"color":"blue","text":"Norden"}','{"bold":true,"color":"gold","text":"Osten"}','{"bold":true,"color":"blue","text":"Süden"}']

data modify entity @s[y_rotation=135..45] data."EigSchwB.p1Richtung" append from entity @s data."EigSchwB.p1Richtung"[0]
data remove entity @s[y_rotation=135..45] data."EigSchwB.p1Richtung"[0]

data modify entity @s[y_rotation=-135..45] data."EigSchwB.p1Richtung" append from entity @s data."EigSchwB.p1Richtung"[0]
data remove entity @s[y_rotation=-135..45] data."EigSchwB.p1Richtung"[0]

data modify entity @s[y_rotation=-45..45] data."EigSchwB.p1Richtung" append from entity @s data."EigSchwB.p1Richtung"[0]
data remove entity @s[y_rotation=-45..45] data."EigSchwB.p1Richtung"[0]

# Wenn die Drehung möglich ist, wird die Bahn-Funktion von der neuen Richtung des Bahn-Markierers aus geladen.
execute if score VarSchwB.p1Drehen PZSchwB.p1Wert matches 2 at @s run function schwebebahn:vp1bahn