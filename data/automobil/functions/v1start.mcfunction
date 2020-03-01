# Zwei Punktestand-Ziele werden für das Speichern der Geschwindigkeit und dem Verlgeichen davon erstellt.
scoreboard objectives add PZAuto.1Geschw dummy ["Automobil.1: ",{"text":"Die Geschwindigkeit des Autos","bold":true}]
scoreboard objectives add PZAuto.1Vergl dummy ["Automobil.1: ",{"text":"Die Vergleichs-Geschwindigkeit des Autos vor einem Tick","bold":true}]

# Spieler in einem Radius von 15 Metern erhalten einen Rüstungsständer, der wenn er platziert wird, ein Auto erzeugt.
give @a[distance=..15] minecraft:armor_stand{automobil:"v1gegenstand",display:{Name:'{"text":"Automobil","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um das Auto dort zu erzeugen"']},EntityTag:{Small:true,CustomNameVisible:true,CustomName:'{"text":"Automobil","bold":true}',Tags:["EtiAuto.1Alle","EtiAuto.1Erstellen"]} }
