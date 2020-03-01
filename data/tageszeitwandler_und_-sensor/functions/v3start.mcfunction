# Das Punktestand-Ziel wird erstellt
scoreboard objectives add PZTagZWS.3Wert trigger ["Tageszeitwandler und -sensor.3: ",{"text":"Wert der Variablen","bold":true}]

# Die Variablen werden gesetzt und dabei wird die Zeit-Variable direkt durch die aktuelle Tageszeit definiert
execute store result score VarTagZWS.3Zeit PZTagZWS.3Wert run time query daytime
scoreboard players set VarTagZWS.3Schnelligkeit PZTagZWS.3Wert 1

# Spielern im Umkreis von 15 Metern wird ein Rüstungsständer und mehrere Uhren ins Inventar gegeben
give @a[distance=..15] minecraft:armor_stand{tageszeitwandler_und_-sensor:"v3gegenstand",display:{Name:'{"text":"Tag-Nacht-Rhythmusanlage","color":"gold","bold":true}',Lore:['"Platziere den"','"Rüstungsständer um"','"die Tag-Nacht-Rhytrmusanlage"','"zu erstellen"']},EntityTag:{DisabledSlots:2039583,Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Tag-Nacht-Rhythmusanlage","color":"gold","bold":true}',Tags:["EtiTagZWS.3Alle","EtiTagZWS.3TagNachtAnlage"],ArmorItems:[{},{},{},{id:"minecraft:daylight_detector",Count:1b} ] } }
give @a[distance=..15] minecraft:clock{tageszeitwandler_und_-sensor:"v3gegenstand",display:{Lore:['"Wirf mit Q die"','"Uhr auf die"','"Tag-Nacht-Ryhtmusanlage"'] } } 4

# Die Spielregel für den Tag-Nacht-Rhythmus wird auf Stillstand gesetzt
gamerule doDaylightCycle false
