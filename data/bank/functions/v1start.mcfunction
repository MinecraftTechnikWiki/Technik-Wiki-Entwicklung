
scoreboard objectives add PZBank.1Nr dummy ["Bank.1",{"text":"Kontonummer","bold":true}]
scoreboard objectives add PZBank.1Wert dummy  ["Bank.1",{"text":"Kontostand","bold":true}]
scoreboard objectives add PZBank.1Klick trigger ["Bank.1",{"text":"Klick","bold":true}]

give @a[distance=..25] minecraft:armor_stand{display:{Lore:["Bank.1","Platziere den Rüstungsständer","um einen Bankautomat","zu erstellen"] },EntityTag:{Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:"{\"text\":\"Bankautomat\"}",Tags:["EtiBank.1Alle","EtiBank.1Bankautomat"]} } 16
give @a[distance=..25] minecraft:emerald{display:{Lore:["Bank.1","Smaragde, Geld für dein Konto"] } } 64
