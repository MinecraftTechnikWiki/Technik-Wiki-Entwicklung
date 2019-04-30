
scoreboard objectives add PZLaUIr.1Gross trigger ["Irrgarten.1: ",{"text":"Größe des Irrgartens","bold":true}]

scoreboard players set #VarLaUIr.1Breite PZLaUIr.1Gross 2
scoreboard players set #VarLaUIr.1Laenge PZLaUIr.1Gross 2

give @a[distance=..25] minecraft:armor_stand{display:{Name:"{\"text\":\"Irrgarten erstellen\"}",Lore:["Irrgarten.1","Platziere den Rüstungsständer","um den Irrgarten","zu erstellen"]},EntityTag:{Small:true,Invisible:true,NoGravity:true,Tags:["EtiLaUIr.1Alle","EtiLaUIr.1Erstellen"],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b} ] } }
