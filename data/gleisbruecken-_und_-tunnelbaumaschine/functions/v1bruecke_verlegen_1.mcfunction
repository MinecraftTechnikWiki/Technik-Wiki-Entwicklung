# Die Brückensegmente, die Gleisfahrspur und das Gleisbett werden platziert. Zuvor wird, falls der Brückenbauer sich im Untergrund befindet, ein Luftraum erstellt und ggf. verglast, damit keine Flüssigkeiten eindringen
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGBuTB.1Gleisbett,sort=nearest,limit=2] align xyz positioned ~0.5 ~0.5 ~0.5 rotated ~ 0 run fill ^2 ^ ^1 ^-2 ^4 ^-4 minecraft:light_gray_stained_glass replace #gleisbruecken-_und_-tunnelbaumaschine:v1berg_und_meeres_bloecke
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGBuTB.1Gleisbett,sort=nearest,limit=2] align xyz positioned ~0.5 ~0.5 ~0.5 rotated ~ 0 run fill ^1 ^1 ^ ^-1 ^3 ^-1 minecraft:air replace
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGBuTB.1Gleisbett,sort=nearest,limit=2] rotated ~ 0 run fill ~ ~-1 ~ ~ ~-2 ~ minecraft:smooth_stone replace
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGBuTB.1Gleisbett,sort=nearest,limit=2] rotated ~ 0 run setblock ~ ~ ~ minecraft:andesite replace
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGBuTB.1Gleisspur,sort=nearest,limit=3] rotated ~ 0 run fill ~ ~ ~ ~ ~-1 ~ minecraft:smooth_stone replace
execute at @e[distance=..5,type=minecraft:armor_stand,tag=EtiGBuTB.1Gleis,sort=nearest,limit=2] rotated ~ 0 run setblock ~ ~1 ~ minecraft:rail replace

# Jeder Meter wird gezählt und wenn der Brückenbauer vierzehn Blöcke weit ist, wird die Funktion geladen. Falls der Gleisbaumaschine in Richtung diagonal nach oben fährt, wird der Wert schon bei sechs Metern auf vierzehn gesetzt, damit ebenfalls die Funktion ausgeführt wird.
scoreboard players add @s PZGBuTB.1Schl 1
scoreboard players set @s[scores={PZGBuTB.1Richt=1,PZGBuTB.1Schl=6..}] PZGBuTB.1Schl 14
execute if entity @s[scores={PZGBuTB.1Schl=14..}] run function gleisbruecken-_und_-tunnelbaumaschine:v1bruecke_verlegen_2
scoreboard players set @s[scores={PZGBuTB.1Schl=14..}] PZGBuTB.1Schl 0

# Der Brückenbauer wird horizontal einen Block nach von vorne teleportiert
execute rotated ~ 0 run teleport @s ^ ^ ^1

# Falls der Brückenbauer die Richtungseinstellung -2 besitzt, dann wird er je nach Gelände entsprechend angepasst und teleportiert
execute at @s[scores={PZGBuTB.1Richt=-2}] rotated ~ 0 unless block ^ ^ ^1 minecraft:air unless block ^ ^ ^1 #minecraft:rails run teleport @s ~ ~1 ~
execute at @s[scores={PZGBuTB.1Richt=-2}] rotated ~ 0 if block ^ ^-1 ^1 minecraft:air run teleport @s ~ ~-1 ~
execute at @s[scores={PZGBuTB.1Richt=-2}] rotated ~ 0 if block ^ ^-1 ^-1 #minecraft:rails run teleport @s ~ ~-1 ~

# Falls der Brückenbauer nach unten oder nach oben fahren soll, wird er entsprechend neu positioniert
execute at @s[scores={PZGBuTB.1Richt=-1}] rotated ~ 0 run teleport @s ~ ~-1 ~
execute at @s[scores={PZGBuTB.1Richt=1}] rotated ~ 0 run teleport @s ~ ~1 ~
