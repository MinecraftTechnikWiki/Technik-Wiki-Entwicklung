# Zwei Punkte-Ziele werden erstellt.
scoreboard objectives add PZBestLi.1Ausl trigger ["Bestenliste.1: ",{"text":"Auslöser für Nachrichten","bold":true}]
scoreboard objectives add PZBestLi.1Wert dummy ["Bestenliste.1: ",{"text":"Punktestände der Spieler","bold":true}]

scoreboard players set VarBestLi.1Max PZBestLi.1Wert 10

scoreboard players set KonstBestLi.1HUNDERT PZBestLi.1Wert 100

give @a[distance=..15] minecraft:armor_stand{EigBestLi.1Alle:true,EigBestLi.1Tafel:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Bestenliste","color":"red","bold":true}',Lore:['"Wähle den Rüstungsständer aus"','"um die Einstellungs-"','"Optionen anzeigen zu lassen."'] },EntityTag:{Small:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Bestenliste","color":"red","bold":true}',Tags:["EtiBestLi.1Alle","EtiBestLi.1Tafel","EtiBestLi.1Position"] } }

# Spieler im Umkreis von 15 Blöcken erhalten einen Rüstungsständer mit Verzauberungsschimmer.
give @a[distance=..15] minecraft:armor_stand{EigBestLi.1Alle:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Mitstreiter","color":"gold","bold":true}',Lore:['"Wähle den Stock aus"','"um die Einstellungs-"','"Optionen anzeigen zu lassen."'] },EntityTag:{Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Mitstreiter","color":"gold","bold":true}',Tags:["EtiBestLi.1Alle","EtiBestLi.1Rangliste","EtiBestLi.1Mitstreiter"] } }

summon minecraft:marker ~ ~1 ~ {Tags:["EtiBestLi.1Alle","EtiBestLi.1Schild"]}
execute at @e[type=minecraft:marker,tag=EtiBestLi.1Schild] run setblock ~ ~ ~ minecraft:oak_sign[rotation=12] replace
