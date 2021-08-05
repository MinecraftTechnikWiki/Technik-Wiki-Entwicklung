# Zwei Punkte-Ziele wird erstellt.
scoreboard objectives add PZAnzTaf.1Ausl trigger ["Anzeigetafel.1: ",{"text":"Auslöser für Nachrichten","bold":true}]
scoreboard objectives add PZAnzTaf.1Wert dummy ["Anzeigetafel.1: ",{"text":"Punktestände der Spieler","bold":true}]

scoreboard players set VarAnzTaf.1Max PZAnzTaf.1Wert 10

scoreboard players set KonstAnzTaf.1HUNDERT PZAnzTaf.1Wert 100

give @a[distance=..15] minecraft:armor_stand{EigAnzTaf.1Alle:true,EigAnzTaf.1Tafel:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Anzeigetafel","color":"red","bold":true}',Lore:['"Wähle den Rüstungsständer aus"','"um die Einstellungs-"','"Optionen anzeigen zu lassen."'] },EntityTag:{Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Anzeigetafel","color":"red","bold":true}',Tags:["EtiAnzTaf.1Alle","EtiAnzTaf.1Tafel","EtiAnzTaf.1Position"] } }

# Spieler im Umkreis von 15 Blöcken erhalten einen Stock mit Verzauberungsschimmer.
give @a[distance=..15] minecraft:armor_stand{EigAnzTaf.1Alle:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Mitstreiter","color":"gold","bold":true}',Lore:['"Wähle den Stock aus"','"um die Einstellungs-"','"Optionen anzeigen zu lassen."'] },EntityTag:{Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Mitstreiter","color":"gold","bold":true}',Tags:["EtiAnzTaf.1Alle","EtiAnzTaf.1Rangliste","EtiAnzTaf.1Mitstreiter"] } }

summon minecraft:armor_stand ~ ~1 ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiAnzTaf.1Alle","EtiAnzTaf.1Schild"]}
execute at @e[type=minecraft:armor_stand,tag=EtiAnzTaf.1Schild] run setblock ~ ~ ~ minecraft:oak_sign[rotation=12] replace
