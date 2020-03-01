# Alle vorhandenen Felder werden um einen Block nach oben teleportiert
execute if entity @s[tag=EtiFeld.p2FeldAnzahlDimension1Anheben,scores={PZFeld.p2Felder=..63}] as @e[type=minecraft:armor_stand,tag=EtiFeld.p2AlleFelder,tag=EtiFeld.p2Dimensionen] at @s run teleport @s ~ ~1 ~

# Ein neues Feld in Form eines Rüstungsständer mit einer Shulkerkiste wird über dem Hauptfeld gespawnt und alle Felder bekommen ihre Position um eins erhöht
execute at @s[tag=EtiFeld.p2FeldAnzahlDimension1Anheben,scores={PZFeld.p2Felder=..63}] run summon minecraft:armor_stand ~ ~1.5 ~ {NoGravity:true,Small:true,Invisible:true,Marker:true,Tags:["EtiFeld.p2AlleFelder","EtiFeld.p2Dimensionen","EtiFeld.p2FeldDimension1","EtiFeld.p2Dimension2Erhalten"],ArmorItems:[{},{},{},{id:"minecraft:red_shulker_box",Count:1b} ] }
execute as @s[tag=EtiFeld.p2FeldAnzahlDimension1Anheben,scores={PZFeld.p2Felder=..63}] run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiFeld.p2FeldDimension1] PZFeld.p2Pos 1
execute as @s[tag=EtiFeld.p2FeldAnzahlDimension1Anheben,scores={PZFeld.p2Felder=..63}] run scoreboard players operation @e[type=minecraft:armor_stand,tag=EtiFeld.p2FeldDimension1,tag=EtiFeld.p2Dimension2Erhalten] PZFeld.p2Felder = #VarFeld.p2Dimension2 PZFeld.p2Felder
tag @e[type=minecraft:armor_stand,tag=EtiFeld.p2FeldDimension1,tag=EtiFeld.p2Dimension2Erhalten] remove EtiFeld.p2Dimension2Erhalten

# Danach wird die neue Anzahl Felder als Punktestand in der Güterlore gespeichert, welche somit immer die aktuelle Anzahl ihrer Felder gespeichert hat
execute if entity @s[tag=EtiFeld.p2FeldAnzahlDimension1Anheben] at @s align xz positioned ~-0.2 ~-0.5 ~-0.2 store result score @s PZFeld.p2Felder if entity @e[dx=0.4,dy=64,dz=0.4,type=minecraft:armor_stand,tag=EtiFeld.p2FeldDimension1]
execute at @s[tag=EtiFeld.p2FeldAnzahlDimension1Anheben,scores={PZFeld.p2Felder=..63}] unless score #VarFeld.p2FelderErzeugen PZFeld.p2Felder matches 1.. run tellraw @a[distance=..25] ["Direktzugriffsspeicher.erweitert.2:\n",{"text":"Feld.Länge + 1 = neues Feld[","bold":true},{"score":{"name":"@s","objective":"PZFeld.p2Felder"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p2Dimension2","objective":"PZFeld.p2Felder"},"bold":true,"color":"red"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p2Dimension3","objective":"PZFeld.p2Felder"},"bold":true,"color":"blue"},{"text":"]","bold":true} ]

# Die aktuelle Position wird um eins erhöht
execute as @s[tag=EtiFeld.p2FeldAnzahlDimension1Anheben,scores={PZFeld.p2Felder=..63}] unless score #VarFeld.p2FelderErzeugen PZFeld.p2Felder matches 1.. run scoreboard players add #VarFeld.p2AktuellePositionDimension1 PZFeld.p2Pos 1

# Verringert den Wert der Variable um eins, falls sie mindestens noch den Wert eins hat
execute as @s[tag=EtiFeld.p2FeldAnzahlDimension1Anheben,scores={PZFeld.p2Felder=..63}] if score #VarFeld.p2FelderErzeugen PZFeld.p2Felder matches 1.. run scoreboard players remove #VarFeld.p2FelderErzeugen PZFeld.p2Felder 1

# Die aktuelle Feldanzahl wird ausgegeben
execute at @s[tag=EtiFeld.p2FeldAnzahlDimension1Ausgeben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.erweitert.2:\n",{"text":"Feld.Länge == ","bold":true},{"score":{"name":"@s","objective":"PZFeld.p2Felder"},"bold":true,"color":"green"} ]

# Das oberste Feld mit seinen Feldern wird zusammen gelöscht
execute at @s[tag=EtiFeld.p2FeldAnzahlDimension1Verringern,scores={PZFeld.p2Felder=1..}] as @e[type=minecraft:armor_stand,tag=EtiFeld.p2FeldDimension1,sort=furthest,limit=1] at @s align xz positioned ~-0.2 ~-0.5 ~-0.2 as @e[dx=64,dy=0.4,dz=0.4,tag=EtiFeld.p2FeldDimension2,tag=EtiFeld.p2AlleFelder,tag=EtiFeld.p2Dimensionen] at @s align xz positioned ~-0.2 ~-0.5 ~-0.2 run kill @e[dx=0.4,dy=0.4,dz=64,type=minecraft:armor_stand,tag=EtiFeld.p2Inhalt]

execute at @s[tag=EtiFeld.p2FeldAnzahlDimension1Verringern,scores={PZFeld.p2Felder=1..}] as @e[type=minecraft:armor_stand,tag=EtiFeld.p2FeldDimension1,sort=furthest,limit=1] at @s align xz positioned ~-0.2 ~-0.5 ~-0.2 run kill @e[dx=64,dy=0.4,dz=0.4,tag=EtiFeld.p2FeldDimension2,tag=EtiFeld.p2AlleFelder,tag=EtiFeld.p2Dimensionen]
execute at @s[tag=EtiFeld.p2FeldAnzahlDimension1Verringern,scores={PZFeld.p2Felder=1..}] run kill @e[type=minecraft:armor_stand,tag=EtiFeld.p2FeldDimension1,sort=furthest,limit=1]

# Danach wird die neue Anzahl Felder als Punktestand in der Güterlore gespeichert, welche somit immer die aktuelle Anzahl ihrer Felder gespeichert hat
execute at @s[tag=EtiFeld.p2FeldAnzahlDimension1Verringern] store result score @s PZFeld.p2Felder if entity @e[type=minecraft:armor_stand,tag=EtiFeld.p2FeldDimension1]
execute at @s[tag=EtiFeld.p2FeldAnzahlDimension1Verringern] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.erweitert.2:\n",{"text":"Feld.Länge - 1 = neues Feld[","bold":true},{"score":{"name":"@s","objective":"PZFeld.p2Felder"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p2Dimension2","objective":"PZFeld.p2Felder"},"bold":true,"color":"red"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p2Dimension3","objective":"PZFeld.p2Felder"},"bold":true,"color":"blue"},{"text":"]","bold":true} ]

# Falls die aktuelle ausgewählte Position das gelöschte Feld war, wird die aktuelle Position auf das nächst niedrigere Feld gesetzt
execute as @s[tag=EtiFeld.p2FeldAnzahlDimension1Verringern] if score #VarFeld.p2AktuellePositionDimension1 PZFeld.p2Pos > @s PZFeld.p2Felder run scoreboard players remove #VarFeld.p2AktuellePositionDimension1 PZFeld.p2Pos 1
