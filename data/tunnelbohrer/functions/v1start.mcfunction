# Punktestand-Ziel wird erstellt und die Konstante 1000
scoreboard objectives add PZTuBohr.1Bohr dummy ["Tunnelbohrer.1: ",{"text":"Bohrzeit","bold":true}]
scoreboard players set KonstTuBohr.1TAUSEND PZTuBohr.1Bohr 1000

# Der Rüstungsständer samt 64 Kohle werden den Spielern in einem Umkreis von 25 Blöcken gegeben
give @a[distance=..25] minecraft:armor_stand{Tunnelbohrer.1:true,display:{Lore:["Platziere den Rüstungsständer","damit der Bohrer","aufgebaut wird"]},EntityTag:{ShowArms:true,Invisible:true,HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b},{id:"minecraft:diamond_pickaxe",Count:1b}],Tags:["EtiTuBohr.1Alle","EtiTuBohr.1Bohrer"]} }
give @a[distance=..25] minecraft:coal{Tunnelbohrer.1:true,display:{Lore:["Wirf die Kohle","dem Bohrer zu um","ihn zu starten"]} } 64

# Es wird eine Felswand aus Granit erstellt, die durchbohrt werden kann
fill ~20 ~ ~ ~40 ~20 ~20 minecraft:granite replace minecraft:air
