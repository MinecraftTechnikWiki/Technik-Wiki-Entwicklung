
scoreboard objectives add PZZahlR.1Wert trigger ["Zahlenrechner.1: ",{"text":"Wert der Variablen","bold":true}]

scoreboard players set VarZahlR.1Variable1 PZZahlR.1Wert 0
scoreboard players set VarZahlR.1Variable2 PZZahlR.1Wert 0
scoreboard players set VarZahlR.1Ergebnis PZZahlR.1Wert 0

scoreboard players set KonstZahlR.1ZEHN PZZahlR.1Wert 10

data merge storage zahlenrechner:v1daten {EigZahlR.1Term:[{EigZahlR.1Operand:0}]}

# Spieler im Umkreis von 15 Blöcken erhalten einen Stock mit Verzauberungsschimmer.
give @a[distance=..15] minecraft:stick{EigZahlR.1Alle:true,EigZahlR.1Felder:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Zahlenrechner","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um mit dem Zahlenrechner"','"verschiedene Rechenoperation"','"zu berechnen."'] } }
