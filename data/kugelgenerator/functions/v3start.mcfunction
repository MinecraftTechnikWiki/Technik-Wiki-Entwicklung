
scoreboard objectives add PZKugelG.3Hor trigger ["Kugelgenerator.3: ",{"text":"Horizontale Position","bold":true}]
scoreboard objectives add PZKugelG.3Vert dummy ["Kugelgenerator.3: ",{"text":"Vertikale Position","bold":true}]

give @a[distance=..25] minecraft:armor_stand{display:{Lore:["Kugelgenerator.3","Platziere den Rüstungsständer","um eine Kugel","generieren zu lassen"]},EntityTag:{Small:true,NoGravity:true,Invisible:true,Tags:["EtiKugelG.3Alle","EtiKugelG.3Flamme","EtiKugelG.3Erstellen"]} } 16
scoreboard players set VarKugelG.3Groesse PZKugelG.3Hor 3
