
# Auf der Position des Markierers wird die Anzahl der Spieler auf der Plattform gezählt und in seinen Punktestand gespeichert. Ebenso erhalten alle Spieler ein Etikett.
execute as @e[type=minecraft:marker,tag=EtiManSA.1Wartesaal,sort=nearest,limit=1] at @s store result score VarManSA.1Wartende PZManSA.1Wert positioned ~-5 ~ ~-5 run tag @a[dx=9,dy=9,dz=9] add EtiManSA.1InWartesaal

execute as @a[tag=EtiManSA.1InWartesaal] run function mannschaftsauswahl:v1auswahl

# Die Spieler auf der Plattform erhalten eine Nachricht über der Schnellleiste.
execute if score VarManSA.1Spielstart PZManSA.1Wert matches 0 if score VarManSA.1Ausgewogen PZManSA.1Wert matches -1..1 run title @a[tag=EtiManSA.1InWartesaal] actionbar ["",{"text":"Nicht alle Spieler sind in Mannschaften!","color":"red","bold":true}]
execute if score VarManSA.1Spielstart PZManSA.1Wert matches 0 if score VarManSA.1Ausgewogen PZManSA.1Wert matches 2.. run title @a[tag=EtiManSA.1InWartesaal] actionbar ["",{"text":"Die ROTE Mannschaft hat zu viele Mitglieder!","color":"red","bold":true}]
execute if score VarManSA.1Spielstart PZManSA.1Wert matches 0 if score VarManSA.1Ausgewogen PZManSA.1Wert matches ..-2 run title @a[tag=EtiManSA.1InWartesaal] actionbar ["",{"text":"Die BLAUE Mannschaft hat zu viele Mitglieder!","color":"red","bold":true}]
execute if score VarManSA.1Spielstart PZManSA.1Wert matches 1 run title @a[tag=EtiManSA.1InWartesaal] actionbar ["",{"score":{"name":"VarManSA.1Beginnen","objective":"PZManSA.1Wert"},"color":"dark_purple","bold":true}]

# Wenn der Zähler null erreicht hat, wird vom Markierer aus, die Mannschafts-Funktion ausgelöst.
execute if score VarManSA.1Spielstart PZManSA.1Wert matches 1 if score VarManSA.1Beginnen PZManSA.1Wert matches ..0 as @e[type=minecraft:marker,tag=EtiManSA.1Wartesaal,sort=nearest,limit=1] at @s run function mannschaftsauswahl:v1mannschaft

# Wenn Spieler nicht mehr auf der Plattform sind, wird ihnen der Kopfslot geleert und sie fliegen aus der Mannschaft.
execute as @a[tag=!EtiManSA.1InWartesaal,scores={PZManSA.1Wert=1..}] store success score @s PZManSA.1Wert run item replace entity @s[nbt={Inventory:[{Slot:103b,components:{"minecraft:custom_data":{EigManSA.1Alle:true} } } ] }] armor.head with minecraft:air
item replace entity @a[tag=!EtiManSA.1InWartesaal,scores={PZManSA.1Wert=1..}] hotbar.8 with minecraft:air
item replace entity @a[tag=!EtiManSA.1InWartesaal,scores={PZManSA.1Wert=1..}] hotbar.7 with minecraft:air
team leave @a[tag=!EtiManSA.1InWartesaal,scores={PZManSA.1Wert=1..},team=!]

# Ebenso wird das Etikett entfernt.
tag @a[tag=EtiManSA.1InWartesaal] remove EtiManSA.1InWartesaal

# Jeden Sekunde werden einmal alle darunter liegenden Befehle ausgeführt. Beim Zurücksetzen wird der Wert des Markierers für den Zähler entweder auf 15 gesetzt oder um eins reduziert, wenn wartende Spieler vorhanden sind.
scoreboard players add #VarManSA.1Tick PZManSA.1Wert 1
execute if score #VarManSA.1Tick PZManSA.1Wert matches 1..19 run return 0
scoreboard players set #VarManSA.1Tick PZManSA.1Wert 0

execute if score VarManSA.1Wartende PZManSA.1Wert matches 0 run return run scoreboard players set VarManSA.1Beginnen PZManSA.1Wert 15

execute store result score VarManSA.1Team1 PZManSA.1Wert if entity @a[scores={PZManSA.1Wert=1}]
execute store result score VarManSA.1Team2 PZManSA.1Wert if entity @a[scores={PZManSA.1Wert=2}]

scoreboard players operation VarManSA.1Teams PZManSA.1Wert = VarManSA.1Team1 PZManSA.1Wert
scoreboard players operation VarManSA.1Teams PZManSA.1Wert += VarManSA.1Team2 PZManSA.1Wert

scoreboard players operation VarManSA.1Ausgewogen PZManSA.1Wert = VarManSA.1Team1 PZManSA.1Wert
scoreboard players operation VarManSA.1Ausgewogen PZManSA.1Wert -= VarManSA.1Team2 PZManSA.1Wert

scoreboard players set VarManSA.1Spielstart PZManSA.1Wert 0
execute if score VarManSA.1Ausgewogen PZManSA.1Wert matches -1..1 if score VarManSA.1Wartende PZManSA.1Wert = VarManSA.1Teams PZManSA.1Wert run scoreboard players set VarManSA.1Spielstart PZManSA.1Wert 1

execute if score VarManSA.1Spielstart PZManSA.1Wert matches 0 run scoreboard players set VarManSA.1Beginnen PZManSA.1Wert 15
execute if score VarManSA.1Spielstart PZManSA.1Wert matches 1 run scoreboard players remove VarManSA.1Beginnen PZManSA.1Wert 1
