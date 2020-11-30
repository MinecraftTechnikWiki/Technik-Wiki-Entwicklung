
scoreboard objectives add PZBankA.2Nr dummy ["Bankautomat.2: ",{"text":"Kontonummer","bold":true}]
scoreboard objectives add PZBankA.2Wert dummy ["Bankautomat.2: ",{"text":"Kontostand","bold":true}]
scoreboard objectives add PZBankA.2Ausl trigger ["Bankautomat.2: ",{"text":"Klick","bold":true}]


data merge storage bankautomat:v2werte {EigBankA.2Konten:[]}
data merge storage bankautomat:v2werte_kopie {EigBankA.2Konten:[]}


# Spieler im Umkreis von 25 Metern bekommen 16 Rüstungsständer und 64 Smaragde
give @a[distance=..25] minecraft:armor_stand{EigBankA.2Alle:true,display:{Name:'{"text":"Bankautomat","color":"dark_purple","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um einen Bankautomat"','"zu erstellen"'] },EntityTag:{NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Bankautomat","color":"dark_purple","bold":true}',Tags:["EtiBankA.1Alle","EtiBankA.1Bankautomat"]} } 16
give @a[distance=..25] minecraft:emerald{EigBankA.2Alle:true,display:{Lore:['"Smaragde, Geld für dein Konto"'] } } 64
