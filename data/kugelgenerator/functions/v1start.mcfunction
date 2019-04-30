
scoreboard objectives add PZKugelG.1Hor dummy ["Kugelgenerator.1: ",{"text":"Horizontale Position","bold":true}]
scoreboard objectives add PZKugelG.1Vert dummy ["Kugelgenerator.1: ",{"text":"Vertikale Position","bold":true}]

give @a[distance=..25] minecraft:armor_stand{display:{Lore:["Kugelgenerator.1","Platziere den Rüstungsständer","um eine Kugel","generieren zu lassen"]},EntityTag:{Small:true,NoGravity:true,Invisible:true,Tags:["EtiKugelG.1Alle","EtiKugelG.1Flamme","EtiKugelG.1Erstellen"]} } 16
