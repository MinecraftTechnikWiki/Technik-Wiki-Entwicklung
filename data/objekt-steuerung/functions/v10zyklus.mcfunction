# Spieler mit dem Punktestand der Länge eins oder größer rufen von sich aus die Längen-Funktion auf
execute as @a[tag=EtiObjSt.10Spieler,scores={PZObjSt.10Laenge=1..}] run function objekt-steuerung:v10laenge

# Der Rüstungsständer mit dem Wert null ist der erste in der Schlange und folgt daher dem Spieler
execute as @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,scores={PZObjSt.10Laenge=0}] at @s run teleport @s ^ ^ ^0.1 facing entity @p[distance=0.5..,tag=EtiObjSt.10Spieler] feet

# Alle weiteren Rüstungsständer folgen ihren jeweiligen Vorgänger, in dem für jeden einzelnen die Folgen-Funktion aufgerufen wird
execute as @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,scores={PZObjSt.10Laenge=1..}] at @s run function objekt-steuerung:v10folgen
