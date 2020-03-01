# Das Punktestand-Ziel, für das Erkennen von Rechtsklicks auf Dorfbewohnern, wird erstellt.
scoreboard objectives add PZMehrfA.1Klick minecraft.custom:minecraft.talked_to_villager ["Mehrfachauswahl.1: ",{"text":"Klick auf Dorfbewohner","bold":true}]

# Den Spielern in einem Umkreis von 25 Metern werden 16 Rüstungsständer ins Inventar gelegt.
give @a[distance=..25] minecraft:armor_stand{mehrfachauswahl:"v1gegenstand",display:{Name:'{"text":"Schaltfläche","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Schaltfläche"','"zu erstellen"']},EntityTag:{Small:true,Invisible:true,Tags:["EtiMehrfA.1Alle","EtiMehrfA.1Erstellen"]} } 16
