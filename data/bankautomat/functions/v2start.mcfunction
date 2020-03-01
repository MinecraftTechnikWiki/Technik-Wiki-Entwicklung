
scoreboard objectives add PZBankA.1Nr dummy ["Bankautomat.1: ",{"text":"Kontonummer","bold":true}]
scoreboard objectives add PZBankA.1Wert dummy ["Bankautomat.1: ",{"text":"Kontostand","bold":true}]
scoreboard objectives add PZBankA.1Klick trigger ["Bankautomat.1: ",{"text":"Klick","bold":true}]

# Spieler im Umkreis von 25 Metern bekommen 16 Rüstungsständer und 64 Smaragde
give @a[distance=..25] minecraft:armor_stand{bankautomat:"v2gegenstand",display:{Name:'{"text":"Bankautomat","color":"dark_purple","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um einen Bankautomat"','"zu erstellen"'] },EntityTag:{NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Bankautomat","color":"dark_purple","bold":true}',Tags:["EtiBankA.1Alle","EtiBankA.1Bankautomat"]} } 16
give @a[distance=..25] minecraft:emerald{bankautomat:"v2gegenstand",display:{Lore:['"Smaragde, Geld für dein Konto"'] } } 64
