# Alle vorhandenen Felder werden um einen Block nach oben teleportiert, falls es nicht über 127 Felder sind
execute at @s[tag=EtiFeld.p3DimensionenAnzahlAnheben,scores={PZFeld.p3Felder=..63}] as @e[type=minecraft:armor_stand,name=ObjFeld.p3Inhalt] at @s run teleport @s ~ ~1 ~

# Ein neues Feld in Form eines Rüstungsständer mit einer Shulkerkiste wird über dem Hauptfeld gespawnt und alle Felder bekommen ihre Position um eins erhöht
execute at @s[tag=EtiFeld.p3DimensionenAnzahlAnheben,scores={PZFeld.p3Felder=..63}] run summon minecraft:armor_stand ~ ~1 ~ {NoGravity:true,Small:true,Invisible:true,Marker:true,CustomName:"\"ObjFeld.p3Inhalt\"",Tags:["EtiFeld.p3AlleFelder"],ArmorItems:[{},{},{},{id:"minecraft:green_shulker_box",Count:1b} ] }
execute as @s[tag=EtiFeld.p3DimensionenAnzahlAnheben,scores={PZFeld.p3Felder=..63}] run scoreboard players add @e[type=minecraft:armor_stand,name=ObjFeld.p3Inhalt] PZFeld.p3Pos 1

# Danach wird die neue Anzahl Felder als Punktestand in der Güterlore gespeichert, welche somit immer die aktuelle Anzahl ihrer Felder gepseichert hat
execute at @s[tag=EtiFeld.p3DimensionenAnzahlAnheben] store result score @s PZFeld.p3Felder if entity @e[type=minecraft:armor_stand,name=ObjFeld.p3Inhalt]
execute at @s[tag=EtiFeld.p3DimensionenAnzahlAnheben,scores={PZFeld.p3Felder=..63}] unless score #VarFeld.p3FelderErzeugen PZFeld.p3Felder matches 1.. run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.3:\n",{"text":"Feld.Dimension + 1 = neues Feld[[","bold":true},{"score":{"name":"@s","objective":"PZFeld.p3Felder"},"bold":true,"color":"gold"},{"text":"]]","bold":true} ]

# Die aktuelle Position wird um eins erhöht
execute as @s[tag=EtiFeld.p3DimensionenAnzahlAnheben,scores={PZFeld.p3Felder=..63}] unless score #VarFeld.p3FelderErzeugen PZFeld.p3Felder matches 1.. run scoreboard players add #VarFeld.p3AktuellePosition PZFeld.p3Pos 1

# Verringert den Wert der Variable um eins, falls sie mindestens noch den Wert eins hat
execute as @s[tag=EtiFeld.p3DimensionenAnzahlAnheben,scores={PZFeld.p3Felder=..63}] if score #VarFeld.p3FelderErzeugen PZFeld.p3Felder matches 1.. run scoreboard players remove #VarFeld.p3FelderErzeugen PZFeld.p3Felder 1

# Die aktuelle Feldanzahl wird ausgegeben
execute at @s[tag=EtiFeld.p3DimensionenAnzahlAusgeben] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.3:\n",{"text":"Feld.Dimension = ","bold":true},{"score":{"name":"@s","objective":"PZFeld.p3Felder"},"bold":true,"color":"gold"} ]

# Das oberste Feld wird gelöscht
execute at @s[tag=EtiFeld.p3DimensionenAnzahlVerringern] if entity @s[scores={PZFeld.p3Felder=1..}] run kill @e[type=minecraft:armor_stand,name=ObjFeld.p3Inhalt,sort=furthest,limit=1]

# Danach wird die neue Anzahl Felder als Punktestand in der Güterlore gespeichert, welche somit immer die aktuelle Anzahl ihrer Felder gepseichert hat
execute at @s[tag=EtiFeld.p3DimensionenAnzahlVerringern] store result score @s PZFeld.p3Felder if entity @e[type=minecraft:armor_stand,name=ObjFeld.p3Inhalt]
execute at @s[tag=EtiFeld.p3DimensionenAnzahlVerringern] run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.3:\n",{"text":"Feld.Dimension - 1 = neues Feld[[","bold":true},{"score":{"name":"@s","objective":"PZFeld.p3Felder"},"bold":true,"color":"gold"},{"text":"]]","bold":true} ]

# Falls die aktuelle ausgewählte Position das gelöschte Feld war, wird die aktuelle Position auf das nächst niedrigere Feld gesetzt
execute as @s[tag=EtiFeld.p3DimensionenAnzahlVerringern] if score #VarFeld.p3AktuellePosition PZFeld.p3Pos > @s PZFeld.p3Felder run scoreboard players remove #VarFeld.p3AktuellePosition PZFeld.p3Pos 1
