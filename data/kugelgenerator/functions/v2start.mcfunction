
scoreboard objectives add PZKugelG.2Hor trigger ["Kugelgenerator.2: ",{"text":"Horizontale Position","bold":true}]
scoreboard objectives add PZKugelG.2Vert dummy ["Kugelgenerator.2: ",{"text":"Vertikale Position","bold":true}]

give @a[distance=..25] minecraft:armor_stand{display:{Lore:["Kugelgenerator.2","Platziere den Rüstungsständer","um eine Kugel","generieren zu lassen"]},EntityTag:{Small:true,NoGravity:true,Invisible:true,Tags:["EtiKugelG.2Alle","EtiKugelG.2Flamme","EtiKugelG.2Erstellen"]} } 16
scoreboard players set VarKugelG.2Variante PZKugelG.2Hor 3
