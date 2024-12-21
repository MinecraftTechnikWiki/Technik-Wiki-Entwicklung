
# Ein Punkte-Ziel wird angelegt um die Erfahrungspunkte zu speichern.
scoreboard objectives add PZErfPS.1Wert dummy ["Erfahrungspunkte-Sensor.1: ",{"text":"Erfahrungspunkte","bold":true}]

# Den Spielern im Umkreis von 15 Blöcken wird ein Kompass gegeben, mit dem sie die Erfahrungspunkte messen können.
give @a[distance=..15] minecraft:compass[minecraft:lore=['"Wähle den Kompass aus"','"um die Erfahrungspunkte"','"anzuzeigen zu lassen."'],minecraft:custom_name='{"text":"Erfahrungspunkte-Sensor","color":"dark_purple","bold":true}',minecraft:custom_data={EigErfPS.1Alle:true,EigErfPS.1Sensor:true},minecraft:enchantment_glint_override=true]

# Der Chunk wird aktiv, damit der Sensor auch weit ab noch funktioniert.
forceload add ~ ~




# Wenn der Spieler den Kompass ausgewählt hat, erhält er zur Erkennung ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigErfPS.1Sensor:true}] run tag @s add EtiErfPS.1Ausgewaehlt

# Spieler die das Etikett besitzen laden von sich aus die Sensor-Funktion.
execute as @a[tag=EtiErfPS.1Ausgewaehlt] run function erfahrungspunkte-sensor:v1sensor

# Wenn der Kompass nicht mehr ausgewählt wird, wird die Nachricht über der Schnellleiste geleert.
title @a[tag=!EtiErfPS.1Ausgewaehlt,tag=EtiErfPS.1Auswahl] actionbar [""]

# Um zu erfassen ob der Spieler gerade den Kompass ausgewählt hat oder ihn nicht mehr auswählt, wird ihm ein Etikett gegeben oder entfernt.
tag @a[tag=EtiErfPS.1Ausgewaehlt,tag=!EtiErfPS.1Auswahl] add EtiErfPS.1Auswahl
tag @a[tag=!EtiErfPS.1Ausgewaehlt,tag=EtiErfPS.1Auswahl] remove EtiErfPS.1Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiErfPS.1Ausgewaehlt] remove EtiErfPS.1Ausgewaehlt



execute store result score VarErfPS.1Punkte PZErfPS.1Wert run experience query @s points
execute store result score VarErfPS.1Stufe PZErfPS.1Wert run experience query @s levels

experience set @s 0 points
experience set @s 0 levels

execute if score VarErfPS.1Stufe PZErfPS.1Wert matches 0 if score VarErfPS.1Punkte PZErfPS.1Wert matches 0 run tag @s add EtiErfPS.1Auslassen

execute if entity @s[tag=!EtiErfPS.1Auslassen] run scoreboard players set VarErfPS.1GesamtPunkte PZErfPS.1Wert 0
execute if entity @s[tag=!EtiErfPS.1Auslassen] run function erfahrungspunkte-sensor:v1auslesen
tag @s[tag=EtiErfPS.1Auslassen] remove EtiErfPS.1Auslassen

title @s actionbar ["",{"text":"XP == ","color":"gray","bold":true},{"score":{"name":"VarErfPS.1GesamtPunkte","objective":"PZErfPS.1Wert"},"color":"red","bold":true}]




scoreboard players add VarErfPS.1GesamtPunkte PZErfPS.1Wert 1
experience add @s 1 points

execute store result score VarErfPS.1TestPunkte PZErfPS.1Wert run experience query @s points
execute store result score VarErfPS.1TestStufe PZErfPS.1Wert run experience query @s levels

execute if score VarErfPS.1TestStufe PZErfPS.1Wert > VarErfPS.1Stufe PZErfPS.1Wert run tag @s add EtiErfPS.1Auslassen
execute if entity @s[tag=!EtiErfPS.1Auslassen] if score VarErfPS.1TestPunkte PZErfPS.1Wert >= VarErfPS.1Punkte PZErfPS.1Wert run tag @s add EtiErfPS.1Auslassen
execute if entity @s[tag=!EtiErfPS.1Auslassen] run function erfahrungspunkte-sensor:v1auslesen



# Das Punkte-Ziel wird entfernt.
scoreboard objectives remove PZErfPS.1Wert

# Das Etikett zur Auswahl des Kompasses, wird wieder entfernt, falls es noch vorhanden war.
tag @a[tag=EtiErfPS.1Auswahl] remove EtiErfPS.1Auswahl

# Der Kompass wird aus dem Inventar entfernt.
clear @a minecraft:compass[minecraft:custom_data~{EigErfPS.1Alle:true}]

# Falls der Kompass auf dem Boden geworfen wurde, wird der Drop entfernt.
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{EigErfPS.1Alle:true}] run kill @s

# Der aktive Chunk wird wieder entladen.
forceload remove ~ ~
