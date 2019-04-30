
clear @a[distance=..15] minecraft:armor_stand{display:{Lore:["Objekt-Steuerung.8"]} }
tag @e[type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Objekt-Steuerung.8"]} } } }] add EtiObjSt.8Alle
kill @e[tag=EtiObjSt.8Alle]
