
scoreboard objectives add PZObjZae.2Anz dummy ["Objektzähler.2: ",{"text":"Anzahl der Objekte","bold":true}]
scoreboard objectives add PZObjZae.2Grenz dummy ["Objektzähler.2: ",{"text":"Obergrenze für die Objekte","bold":true}]
summon minecraft:armor_stand ~ ~ ~3 {Tags:["EtiObjZae.2Alle"]}
give @a[distance=..25] minecraft:armor_stand{display:{Lore:["Objektzähler.2","Platziere das Objekt"] },EntityTag:{Tags:["EtiObjZae.2Alle"]} } 16
give @a[distance=..25] minecraft:magenta_glazed_terracotta{display:{Name:"{\"text\":\"Obergrenze\"}",Lore:["Objektzähler.2","Die Stapelgröße gibt","die Obergrenze vor"] } } 64
