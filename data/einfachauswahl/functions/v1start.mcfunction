# Das Punktestand-Ziel wird erstellt.
scoreboard objectives add PZEinfA.1Klick minecraft.custom:minecraft.talked_to_villager ["Einfachauswahl.1: ",{"text":"Klick auf Dorfbewohner","bold":true}]

# Den Spielern in einem Umkreis von 25 Metern werden 16 Rüstungsständer gegeben, die sie platzieren können.
give @a[distance=..25] minecraft:armor_stand{einfachauswahl:"v1gegenstand",display:{Name:'{"text":"Schaltfläche","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Auswahlschaltfläche"','"zu erzeugen"']},EntityTag:{Small:true,Invisible:true,Tags:["EtiEinfA.1Alle","EtiEinfA.1Erstellen"]} } 16
