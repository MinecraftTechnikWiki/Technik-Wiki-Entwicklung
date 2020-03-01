# Alle vorhandenen Felder werden um einen Block nach oben teleportiert
execute if entity @s[scores={PZFeld.p1Felder=1..}] align xz positioned ~-0.2 ~-0.5 ~-0.2 as @e[dx=64,dy=0.4,dz=0.4,type=minecraft:armor_stand,tag=EtiFeld.p1AlleFelder,tag=EtiFeld.p1Inhalt] at @s run teleport @s ^1 ^ ^

# Ein neues Feld in Form eines Rüstungsständer mit einer Shulkerkiste wird über dem Hauptfeld gespawnt und alle Felder bekommen ihre Position um eins erhöht
execute if entity @s[scores={PZFeld.p1Felder=1..}] run summon minecraft:armor_stand ^1 ^ ^ {NoGravity:true,Small:true,Invisible:true,Marker:true,CustomNameVisible:true,CustomName:'{"text":"0","color":"dark_purple","bold":true}',Tags:["EtiFeld.p1AlleFelder","EtiFeld.p1Inhalt","EtiFeld.p1Dimensionen"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b} ] }
execute if entity @s[scores={PZFeld.p1Felder=1..}] align xz positioned ~-0.2 ~-0.5 ~-0.2 run scoreboard players add @e[dx=64,dy=0.4,dz=0.4,type=minecraft:armor_stand,tag=EtiFeld.p1Inhalt] PZFeld.p1Pos 1
execute if entity @s[scores={PZFeld.p1Felder=1..}] run scoreboard players remove @s PZFeld.p1Felder 1

# Von dem Feld der 2. Dimension aus, wird ganz am Ende das letzte Feld der 1. Dimension gelöscht
execute if entity @s[scores={PZFeld.p1Felder=..-1}] align xz positioned ~-0.2 ~-0.5 ~-0.2 run kill @e[dx=64,dy=0.4,dz=0.4,sort=furthest,limit=1,type=minecraft:armor_stand,tag=EtiFeld.p1AlleFelder,tag=EtiFeld.p1Inhalt]
execute if entity @s[scores={PZFeld.p1Felder=..-1}] run scoreboard players add @s PZFeld.p1Felder 1
