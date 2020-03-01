# Punktestand-Ziel wird erstellt und die Konstante 1000
scoreboard objectives add PZStBrSy.1Bohr dummy ["Steinbruch-System.1: ",{"text":"Bohrzeit","bold":true}]
scoreboard players set KonstStBrSy.1TAUSEND PZStBrSy.1Bohr 1000

# Der Rüstungsständer samt 64 Kohle werden den Spielern in einem Umkreis von 25 Blöcken gegeben
give @a[distance=..25] minecraft:armor_stand{steinbruch-system:"v1gegenstand",display:{Name:'{"text":"Steinbruch-Bohrer"}',Lore:['"Platziere den Rüstungsständer"','"damit der Bohrer"','"aufgebaut wird"']},EntityTag:{ShowArms:true,Invisible:true,HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b},{id:"minecraft:diamond_pickaxe",Count:1b}],Tags:["EtiStBrSy.1Alle","EtiStBrSy.1Bohrer"]} }
give @a[distance=..25] minecraft:coal{steinbruch-system:"v1gegenstand",display:{Lore:['"Wirf die Kohle"','"dem Bohrer zu um"','"ihn zu starten"']} } 64

# Es wird eine Felswand aus Granit erstellt, die durchbohrt werden kann
fill ~20 ~ ~ ~40 ~20 ~20 minecraft:granite replace minecraft:air

tellraw @a[distance=..15] ["Steinbruch-System.1: ",{"text":"Drücke E um ins Inventar-Menü zu gelangen. Bewege die Maus auf die Gegenstände um zu erfahren wie man sie benutzt.","bold":true}]
