
execute store result score VarZahlR.1Laenge PZZahlR.1Wert run data get storage zahlenrechner:v1daten "EigZahlR.1Term"
execute store result score VarZahlR.1Ergebnis PZZahlR.1Wert run data get storage zahlenrechner:v1daten "EigZahlR.1Term"[0]."EigZahlR.1Operand"

execute if score VarZahlR.1Laenge PZZahlR.1Wert matches 2.. run function zahlenrechner:v1operation

data modify storage zahlenrechner:v1daten "EigZahlR.1Term" append from storage zahlenrechner:v1daten "EigZahlR.1Term"[0]
data remove storage zahlenrechner:v1daten "EigZahlR.1Term"[0]
