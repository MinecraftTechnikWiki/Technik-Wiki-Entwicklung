
scoreboard objectives add PZRechW.1Ausl trigger ["Rechenwerk.1: ",{"text":"Wert der Variablen","bold":true}]

scoreboard players set VarRechW.1Variable1 PZRechW.1Ausl 0
scoreboard players set VarRechW.1Variable2 PZRechW.1Ausl 0
#scoreboard players set VarRechW.1Ergebnis PZRechW.1Ausl 0

#data merge storage rechenwerk:v1daten {EigRechW.1Variable1:[0],EigRechW.1Variable2:[0],EigRechW.1Operator:'{"text":"+","color":"blue","bold":true}'}

data merge storage rechenwerk:v1daten {EigRechW.1Felder:[0,0,0,0,0,0,0,0],EigRechW.1Operator:'{"text":"+","color":"blue","bold":true}'}

give @a[distance=..15] minecraft:stick{EigRechW.1Alle:true,EigRechW.1Stock:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Rechenwerk","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um die Einstellungs-"','"Optionen anzeigen zu lassen."'] } }
