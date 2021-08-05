
scoreboard objectives add PZRakete.1Wert dummy ["Rakete.1: ",{"text":"Wert der Rakete","bold":true}]

scoreboard players set VarRakete.1ZWEI PZRakete.1Wert 2

give @a[distance=..15] minecraft:armor_stand{EigRakete.1Alle:true,display:{Name:'{"text":"Rakete","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um die Rakete dort zu erzeugen"']},EntityTag:{Small:true,CustomNameVisible:true,CustomName:'{"text":"Rakete","bold":true}',Tags:["EtiRakete.1Alle","EtiRakete.1Erstellen"]} }
