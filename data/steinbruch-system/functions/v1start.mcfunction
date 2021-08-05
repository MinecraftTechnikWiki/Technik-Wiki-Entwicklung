
scoreboard objectives add PZStBrSy.1Ausl trigger ["Steinbruch-System.1: ",{"text":"Auslöser für Nachricht","bold":true}]
scoreboard players set KonstStBrSy.1MINUSEINS PZStBrSy.1Ausl -1
scoreboard players set VarStBrSy.1Groesse PZStBrSy.1Ausl 6

# Es wird eine Felswand aus Granit erstellt, die durchbohrt werden kann
fill ~20 ~ ~ ~40 ~20 ~20 minecraft:granite replace minecraft:air

tellraw @a[distance=..15] ["Steinbruch-System.1: ",{"text":"Begibt dich auf den Granit-Hügel und drücke E um ins Inventar-Menü zu gelangen. Bewege die Maus auf die Gegenstände um zu erfahren wie man sie benutzt.","bold":true}]

give @a[distance=..15] minecraft:armor_stand{EigStBrSy.1Alle:true,EigStBrSy.1Bohrer:true,display:{Name:'{"text":"Steinbruch-Bohrer"}',Lore:['"Wähle den Rüstungsständer aus"','"um die Einstellungs-"','"Optionen anzeigen zu lassen."','"Platziere den Rüstungsständer"','"damit der Bohrer"','"aufgebaut wird"']},EntityTag:{Marker:true,ShowArms:true,Invisible:true,HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b},{id:"minecraft:diamond_pickaxe",Count:1b}],Tags:["EtiStBrSy.1Alle","EtiStBrSy.1Bohrer","EtiStBrSy.1Erstellen"]} }
