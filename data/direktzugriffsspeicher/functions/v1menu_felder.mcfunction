# Alle vorhandenen Felder werden um einen Block nach oben teleportiert, falls es nicht über 127 Felder sind
execute at @s[tag=EtiFeld.1FeldAnzahlAnheben,scores={PZFeld.1Pos=..63}] as @e[type=minecraft:armor_stand,name=ObjFeld.1Inhalt] at @s run teleport @s ~ ~1 ~

# Ein neues Feld in Form eines Rüstungsständer mit einer Shulkerkiste wird über dem Hauptfeld gespawnt und alle Felder bekommen ihre Position um eins erhöht
execute at @s[tag=EtiFeld.1FeldAnzahlAnheben,scores={PZFeld.1Pos=..63}] run summon minecraft:armor_stand ~ ~1 ~ {NoGravity:true,Small:true,Invisible:true,Marker:true,CustomName:"{\"text\":\"ObjFeld.1Inhalt\"}",Tags:["EtiFeld.1AlleFelder"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b} ] }
execute as @s[tag=EtiFeld.1FeldAnzahlAnheben,scores={PZFeld.1Pos=..63}] run scoreboard players add @e[type=minecraft:armor_stand,name=ObjFeld.1Inhalt] PZFeld.1Pos 1

# Danach wird die neue Anzahl Felder als Punktestand in der Güterlore gespeichert, welche somit immer die aktuelle Anzahl ihrer Felder gepseichert hat
execute at @s[tag=EtiFeld.1FeldAnzahlAnheben] store result score @s PZFeld.1Pos if entity @e[type=minecraft:armor_stand,name=ObjFeld.1Inhalt]
execute at @s[tag=EtiFeld.1FeldAnzahlAnheben,scores={PZFeld.1Pos=..63}] unless score #VarFeld.1FelderErzeugen PZFeld.1Wert matches 1.. run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:\n",{"text":"Feld.Länge + 1 = neues Feld[","bold":true},{"score":{"name":"@s","objective":"PZFeld.1Pos"},"bold":true,"color":"green"},{"text":"]","bold":true} ]

# Die aktuelle Position wird um eins erhöht
execute as @s[tag=EtiFeld.1FeldAnzahlAnheben,scores={PZFeld.1Pos=..63}] unless score #VarFeld.1FelderErzeugen PZFeld.1Wert matches 1.. run scoreboard players add #VarFeld.1AktuellePosition PZFeld.1Pos 1

# Verringert den Wert der Variable um eins, falls sie mindestens noch den Wert eins hat
execute as @s[tag=EtiFeld.1FeldAnzahlAnheben,scores={PZFeld.1Pos=..63}] if score #VarFeld.1FelderErzeugen PZFeld.1Wert matches 1.. run scoreboard players remove #VarFeld.1FelderErzeugen PZFeld.1Wert 1

# Die aktuelle Feldanzahl wird ausgegeben
execute at @s[tag=EtiFeld.1FeldAnzahlAusgeben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:\n",{"text":"Feld.Länge = ","bold":true},{"score":{"name":"@s","objective":"PZFeld.1Pos"},"bold":true,"color":"green"} ]

# Das oberste Feld wird gelöscht
execute at @s[tag=EtiFeld.1FeldAnzahlVerringern,scores={PZFeld.1Pos=1..}] run kill @e[type=minecraft:armor_stand,name=ObjFeld.1Inhalt,sort=furthest,limit=1]

# Danach wird die neue Anzahl Felder als Punktestand in der Güterlore gespeichert, welche somit immer die aktuelle Anzahl ihrer Felder gespeichert hat
execute at @s[tag=EtiFeld.1FeldAnzahlVerringern] store result score @s PZFeld.1Pos if entity @e[type=minecraft:armor_stand,name=ObjFeld.1Inhalt]
execute at @s[tag=EtiFeld.1FeldAnzahlVerringern] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:\n",{"text":"Feld.Länge - 1 = neues Feld[","bold":true},{"score":{"name":"@s","objective":"PZFeld.1Pos"},"bold":true,"color":"green"},{"text":"]","bold":true} ]

# Falls die aktuelle ausgewählte Position das gelöschte Feld war, wird die aktuelle Position auf das nächst niedrigere Feld gesetzt
execute as @s[tag=EtiFeld.1FeldAnzahlVerringern] if score #VarFeld.1AktuellePosition PZFeld.1Pos > @s PZFeld.1Pos run scoreboard players remove #VarFeld.1AktuellePosition PZFeld.1Pos 1
