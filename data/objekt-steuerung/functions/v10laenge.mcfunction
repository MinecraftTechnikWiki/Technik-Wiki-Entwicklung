# Zuerst wird die Variable für das Schlangenende auf null gesetzt, damit anschließend der größte Nummernwert übertragen werden kann
scoreboard players set #VarObjSt.10SchlangenEnde PZObjSt.10Vergl 0
scoreboard players operation #VarObjSt.10SchlangenEnde PZObjSt.10Vergl > @e[tag=EtiObjSt.10Alle] PZObjSt.10Nr

# An der Position des Schlangenendes (entweder ein Rüstungsständer oder der Spieler) wird ein weiterer Rüstungsständer erzeugt
execute as @e[tag=EtiObjSt.10Alle] if score @s PZObjSt.10Nr = #VarObjSt.10SchlangenEnde PZObjSt.10Vergl at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,Small:true,NoGravity:true,Marker:true,Tags:["EtiObjSt.10Alle","EtiObjSt.10KeineNummer"],ArmorItems:[{},{},{},{id:"minecraft:lime_concrete_powder",Count:1b} ]}

# Der Wert der Länge wird vom Spieler um eins verringert
scoreboard players remove @s PZObjSt.10Laenge 1

# Die aktuelle Anzahl wird in den Punktestand der Länge gespeichert und anschließend wird die Anzahl um eins erhöht. Der Rüstungsständer erhält im nächsten Schritt die Nummer und das Etikett wird entfernt
scoreboard players operation @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,tag=EtiObjSt.10KeineNummer] PZObjSt.10Laenge = #VarObjSt.10Anzahl PZObjSt.10Nr
scoreboard players add #VarObjSt.10Anzahl PZObjSt.10Nr 1
scoreboard players operation @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,tag=EtiObjSt.10KeineNummer] PZObjSt.10Nr = #VarObjSt.10Anzahl PZObjSt.10Nr
tag @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,tag=EtiObjSt.10KeineNummer,scores={PZObjSt.10Nr=1..}] remove EtiObjSt.10KeineNummer
