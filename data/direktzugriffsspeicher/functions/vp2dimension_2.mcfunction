# Alle vorhandenen Felder werden um einen Block nach oben teleportiert
execute if entity @s[scores={PZFeld.p2Felder=1..}] align xz positioned ~-0.2 ~-0.5 ~-0.2 as @e[dx=64,dy=0.4,dz=0.4,type=minecraft:armor_stand,tag=EtiFeld.p2AlleFelder,tag=EtiFeld.p2FeldDimension2] at @s align xz positioned ~-0.2 ~-0.5 ~-0.2 as @e[dx=0.4,dy=0.4,dz=64,type=minecraft:armor_stand,tag=EtiFeld.p2AlleFelder,tag=EtiFeld.p2Inhalt] at @s run teleport @s ^1 ^ ^
execute if entity @s[scores={PZFeld.p2Felder=1..}] align xz positioned ~-0.2 ~-0.5 ~-0.2 as @e[dx=64,dy=0.4,dz=0.4,type=minecraft:armor_stand,tag=EtiFeld.p2AlleFelder,tag=EtiFeld.p2FeldDimension2] at @s run teleport @s ^1 ^ ^

# Ein neues Feld in Form eines Rüstungsständer mit einer Shulkerkiste wird über dem Hauptfeld gespawnt und alle Felder bekommen ihre Position um eins erhöht
execute if entity @s[scores={PZFeld.p2Felder=1..}] run summon minecraft:armor_stand ^1 ^ ^ {NoGravity:true,Small:true,Invisible:true,Marker:true,Tags:["EtiFeld.p2AlleFelder","EtiFeld.p2Dimensionen","EtiFeld.p2FeldDimension2","EtiFeld.p2Dimension3Erhalten"],ArmorItems:[{},{},{},{id:"minecraft:blue_shulker_box",Count:1b} ] }
execute if entity @s[scores={PZFeld.p2Felder=1..}] align xz positioned ~-0.2 ~-0.5 ~-0.2 run scoreboard players add @e[dx=64,dy=0.4,dz=0.4,type=minecraft:armor_stand,tag=EtiFeld.p2FeldDimension2] PZFeld.p2Pos 1

execute if entity @s[scores={PZFeld.p2Felder=1..}] align xz positioned ~-0.2 ~-0.5 ~-0.2 run scoreboard players operation @e[dx=64,dy=0.4,dz=0.4,type=minecraft:armor_stand,tag=EtiFeld.p2FeldDimension2,tag=EtiFeld.p2Dimension3Erhalten] PZFeld.p2Felder = #VarFeld.p2Dimension3 PZFeld.p2Felder
tag @e[type=minecraft:armor_stand,tag=EtiFeld.p2FeldDimension2,tag=EtiFeld.p2Dimension3Erhalten] remove EtiFeld.p2Dimension3Erhalten

execute if entity @s[scores={PZFeld.p2Felder=1..}] run scoreboard players remove @s PZFeld.p2Felder 1

# Von dem Feld der 2. Dimension aus, wird ganz am Ende das letzte Feld der 1. Dimension gelöscht
execute if entity @s[scores={PZFeld.p2Felder=..-1}] align xz positioned ~-0.2 ~-0.5 ~-0.2 as @e[dx=64,dy=0.4,dz=0.4,sort=furthest,limit=1,type=minecraft:armor_stand,tag=EtiFeld.p2AlleFelder,tag=EtiFeld.p2FeldDimension2] at @s align xz positioned ~-0.2 ~-0.5 ~-0.2 run kill @e[dx=0.4,dy=0.4,dz=64,type=minecraft:armor_stand,tag=EtiFeld.p2AlleFelder,tag=EtiFeld.p2Inhalt]

execute if entity @s[scores={PZFeld.p2Felder=..-1}] align xz positioned ~-0.2 ~-0.5 ~-0.2 run kill @e[dx=64,dy=0.4,dz=0.4,sort=furthest,limit=1,type=minecraft:armor_stand,tag=EtiFeld.p2AlleFelder,tag=EtiFeld.p2FeldDimension2]

execute if entity @s[scores={PZFeld.p2Felder=..-1}] run scoreboard players add @s PZFeld.p2Felder 1
