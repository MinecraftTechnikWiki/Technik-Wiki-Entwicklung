# Alle vorhandenen Felder werden um einen Block nach oben teleportiert
execute if entity @s[scores={PZFeld.p2Felder=1..}] align xz positioned ~-0.2 ~-0.5 ~-0.2 as @e[dx=0.4,dy=0.4,dz=64,type=minecraft:armor_stand,tag=EtiFeld.p2AlleFelder,tag=EtiFeld.p2Inhalt] at @s run teleport @s ^ ^ ^1

# Ein neues Feld in Form eines Rüstungsständer mit einer Shulkerkiste wird über dem Hauptfeld gespawnt und alle Felder bekommen ihre Position um eins erhöht
execute if entity @s[scores={PZFeld.p2Felder=1..}] run summon minecraft:armor_stand ^ ^ ^1 {NoGravity:true,Small:true,Invisible:true,Marker:true,CustomNameVisible:true,CustomName:'{"text":"0","color":"dark_purple","bold":true}',Tags:["EtiFeld.p2AlleFelder","EtiFeld.p2Dimensionen","EtiFeld.p2Inhalt"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b} ] }
execute if entity @s[scores={PZFeld.p2Felder=1..}] align xz positioned ~-0.2 ~-0.5 ~-0.2 run scoreboard players add @e[dx=0.4,dy=0.4,dz=64,type=minecraft:armor_stand,tag=EtiFeld.p2Inhalt] PZFeld.p2Pos 1
execute if entity @s[scores={PZFeld.p2Felder=1..}] run scoreboard players remove @s PZFeld.p2Felder 1

# Das Feld der 2. Dimension ganz am Ende wird aus vom Feld der 1. Dimension wird gelöscht
execute if entity @s[scores={PZFeld.p2Felder=..-1}] align xz positioned ~-0.2 ~-0.5 ~-0.2 run kill @e[dx=0.4,dy=0.4,dz=64,sort=furthest,limit=1,type=minecraft:armor_stand,tag=EtiFeld.p2AlleFelder,tag=EtiFeld.p2Inhalt]

execute if entity @s[scores={PZFeld.p2Felder=..-1}] run scoreboard players add @s PZFeld.p2Felder 1
