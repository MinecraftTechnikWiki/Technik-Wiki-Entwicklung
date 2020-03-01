# Die Rüstungsständer werden aus dem Inventar gelöscht und alle platzieren aus der Welt entfernt
clear @a[distance=..15] minecraft:armor_stand{objekt-steuerung:"v8gegenstand"}
tag @e[type=minecraft:item,nbt={Item:{tag:{objekt-steuerung:"v8gegenstand"} } }] add EtiObjSt.8Alle
kill @e[tag=EtiObjSt.8Alle]
