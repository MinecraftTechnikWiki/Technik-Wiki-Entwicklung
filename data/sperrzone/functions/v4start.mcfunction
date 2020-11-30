
scoreboard objectives add PZSperrZ.4Ausl trigger ["Sperrzone.4: ",{"text":"Auslöser für Nachrichten","bold":true}]
scoreboard objectives add PZSperrZ.4Groes dummy ["Sperrzone.4: ",{"text":"Zonen-Größe","bold":true}]

scoreboard players set @a PZSperrZ.4Groes 0

give @a[distance=..15] minecraft:armor_stand{EigSperrZ.4Alle:true,display:{Name:'{"text":"Quader-Zone","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Sperrzone zu erzeugen"']},EntityTag:{Small:true,Marker:true,Invisible:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"Quader-Zone","color":"gold","bold":true}',Tags:["EtiSperrZ.4Alle","EtiSperrZ.4Zone","EtiSperrZ.4Quader","EtiSperrZ.4Erstellen"] } }
