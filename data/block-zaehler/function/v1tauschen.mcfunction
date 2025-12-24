
execute if score VarBlZal.1Schleife2 PZBlZal.1Wert < VarBlZal.1Sortieren PZBlZal.1Wert store result score VarBlZal.1Anzahl1 PZBlZal.1Wert run data get storage block-zaehler:v1daten "EigBlZal.1Liste"[0].Anzahl
execute if score VarBlZal.1Schleife2 PZBlZal.1Wert < VarBlZal.1Sortieren PZBlZal.1Wert store result score VarBlZal.1Anzahl2 PZBlZal.1Wert run data get storage block-zaehler:v1daten "EigBlZal.1Liste"[1].Anzahl

execute if score VarBlZal.1Schleife2 PZBlZal.1Wert < VarBlZal.1Sortieren PZBlZal.1Wert if score VarBlZal.1Anzahl1 PZBlZal.1Wert > VarBlZal.1Anzahl2 PZBlZal.1Wert run data modify storage block-zaehler:v1daten "EigBlZal.1Listenelement" set from storage block-zaehler:v1daten "EigBlZal.1Liste"[0]

execute if score VarBlZal.1Schleife2 PZBlZal.1Wert < VarBlZal.1Sortieren PZBlZal.1Wert if score VarBlZal.1Anzahl1 PZBlZal.1Wert > VarBlZal.1Anzahl2 PZBlZal.1Wert run data modify storage block-zaehler:v1daten "EigBlZal.1Liste"[0] set from storage block-zaehler:v1daten "EigBlZal.1Liste"[1]
execute if score VarBlZal.1Schleife2 PZBlZal.1Wert < VarBlZal.1Sortieren PZBlZal.1Wert if score VarBlZal.1Anzahl1 PZBlZal.1Wert > VarBlZal.1Anzahl2 PZBlZal.1Wert run data modify storage block-zaehler:v1daten "EigBlZal.1Liste"[1] set from storage block-zaehler:v1daten "EigBlZal.1Listenelement"

data modify storage block-zaehler:v1daten "EigBlZal.1Liste" append from storage block-zaehler:v1daten "EigBlZal.1Liste"[0]
data remove storage block-zaehler:v1daten "EigBlZal.1Liste"[0]

scoreboard players add VarBlZal.1Schleife2 PZBlZal.1Wert 1
execute if score VarBlZal.1Schleife2 PZBlZal.1Wert < VarBlZal.1Liste PZBlZal.1Wert run function block-zaehler:v1tauschen
