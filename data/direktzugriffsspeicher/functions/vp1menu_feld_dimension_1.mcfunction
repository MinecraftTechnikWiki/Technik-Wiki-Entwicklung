# Alle vorhandenen Felder werden um einen Block nach oben teleportiert
execute if entity @s[tag=EtiFeld.p1FeldAnzahlDimension1Anheben,scores={PZFeld.p1Felder=..63}] as @e[type=minecraft:armor_stand,tag=EtiFeld.p1AlleFelder,tag=EtiFeld.p1Dimensionen] at @s run teleport @s ~ ~1 ~

# Ein neues Feld in Form eines Rüstungsständer mit einer Shulkerkiste wird über dem Hauptfeld gespawnt und alle Felder bekommen ihre Position um eins erhöht
execute at @s[tag=EtiFeld.p1FeldAnzahlDimension1Anheben,scores={PZFeld.p1Felder=..63}] run summon minecraft:armor_stand ~ ~1 ~ {NoGravity:true,Small:true,Invisible:true,Marker:true,CustomName:"{\"text\":\"ObjFeld.p1FeldDimension1\"}",Tags:["EtiFeld.p1AlleFelder","EtiFeld.p1Dimensionen","EtiFeld.p1Dimension2Erhalten"],ArmorItems:[{},{},{},{id:"minecraft:red_shulker_box",Count:1b} ] }
execute as @s[tag=EtiFeld.p1FeldAnzahlDimension1Anheben,scores={PZFeld.p1Felder=..63}] run scoreboard players add @e[type=minecraft:armor_stand,name=ObjFeld.p1FeldDimension1] PZFeld.p1Pos 1
execute as @s[tag=EtiFeld.p1FeldAnzahlDimension1Anheben,scores={PZFeld.p1Felder=..63}] run scoreboard players operation @e[type=minecraft:armor_stand,name=ObjFeld.p1FeldDimension1,tag=EtiFeld.p1Dimension2Erhalten] PZFeld.p1Felder = #VarFeld.p1Dimension2 PZFeld.p1Felder
tag @e[type=minecraft:armor_stand,name=ObjFeld.p1FeldDimension1,tag=EtiFeld.p1Dimension2Erhalten] remove EtiFeld.p1Dimension2Erhalten

# Danach wird die neue Anzahl Felder als Punktestand in der Güterlore gespeichert, welche somit immer die aktuelle Anzahl ihrer Felder gespeichert hat
execute if entity @s[tag=EtiFeld.p1FeldAnzahlDimension1Anheben] at @s align xyz positioned ~-0.2 ~-0.2 ~-0.2 store result score @s PZFeld.p1Felder if entity @e[dx=0.4,dy=64,dz=0.4,type=minecraft:armor_stand,name=ObjFeld.p1FeldDimension1]
execute at @s[tag=EtiFeld.p1FeldAnzahlDimension1Anheben,scores={PZFeld.p1Felder=..63}] unless score #VarFeld.p1FelderErzeugen PZFeld.p1Felder matches 1.. run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.1:\n",{"text":"Feld.Länge + 1 = neues Feld[","bold":true},{"score":{"name":"@s","objective":"PZFeld.p1Felder"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p1Dimension2","objective":"PZFeld.p1Felder"},"bold":true,"color":"red"},{"text":"]","bold":true} ]

# Die aktuelle Position wird um eins erhöht
execute as @s[tag=EtiFeld.p1FeldAnzahlDimension1Anheben,scores={PZFeld.p1Felder=..63}] unless score #VarFeld.p1FelderErzeugen PZFeld.p1Felder matches 1.. run scoreboard players add #VarFeld.p1AktuellePositionDimension1 PZFeld.p1Pos 1

# Verringert den Wert der Variable um eins, falls sie mindestens noch den Wert eins hat
execute as @s[tag=EtiFeld.p1FeldAnzahlDimension1Anheben,scores={PZFeld.p1Felder=..63}] if score #VarFeld.p1FelderErzeugen PZFeld.p1Felder matches 1.. run scoreboard players remove #VarFeld.p1FelderErzeugen PZFeld.p1Felder 1

# Die aktuelle Feldanzahl wird ausgegeben
execute at @s[tag=EtiFeld.p1FeldAnzahlDimension1Ausgeben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.1:\n",{"text":"Feld.Länge = ","bold":true},{"score":{"name":"@s","objective":"PZFeld.p1Felder"},"bold":true,"color":"green"} ]

# Das oberste Feld mit seinen Feldern wird zusammen gelöscht
execute at @s[tag=EtiFeld.p1FeldAnzahlDimension1Verringern,scores={PZFeld.p1Felder=1..}] at @e[type=minecraft:armor_stand,name=ObjFeld.p1FeldDimension1,sort=furthest,limit=1] align xyz positioned ~-0.2 ~-0.2 ~-0.2 run kill @e[dx=64,dy=0.4,dz=0.4,name=ObjFeld.p1Inhalt,tag=EtiFeld.p1AlleFelder,tag=EtiFeld.p1Dimensionen]
execute at @s[tag=EtiFeld.p1FeldAnzahlDimension1Verringern,scores={PZFeld.p1Felder=1..}] run kill @e[type=minecraft:armor_stand,name=ObjFeld.p1FeldDimension1,sort=furthest,limit=1]

# Danach wird die neue Anzahl Felder als Punktestand in der Güterlore gespeichert, welche somit immer die aktuelle Anzahl ihrer Felder gespeichert hat
execute at @s[tag=EtiFeld.p1FeldAnzahlDimension1Verringern] store result score @s PZFeld.p1Felder if entity @e[type=minecraft:armor_stand,name=ObjFeld.p1FeldDimension1]
execute at @s[tag=EtiFeld.p1FeldAnzahlDimension1Verringern] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.1:\n",{"text":"Feld.Länge - 1 = neues Feld[","bold":true},{"score":{"name":"@s","objective":"PZFeld.p1Felder"},"bold":true,"color":"green"},{"text":"][","bold":true},{"score":{"name":"#VarFeld.p1Dimension2","objective":"PZFeld.p1Felder"},"bold":true,"color":"red"},{"text":"]","bold":true} ]

# Falls die aktuelle ausgewählte Position das gelöschte Feld war, wird die aktuelle Position auf das nächst niedrigere Feld gesetzt
execute as @s[tag=EtiFeld.p1FeldAnzahlDimension1Verringern] if score #VarFeld.p1AktuellePositionDimension1 PZFeld.p1Pos > @s PZFeld.p1Felder run scoreboard players remove #VarFeld.p1AktuellePositionDimension1 PZFeld.p1Pos 1
