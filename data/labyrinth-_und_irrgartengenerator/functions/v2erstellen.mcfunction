# Der Breiten-Wert wird auf eins gesetzt.
scoreboard players set #VarLaUIr.2BreitePosition PZLaUIr.2Gross 1

# Die Breiten-Funktion wird aufgerufen
function labyrinth-_und_irrgartengenerator:v2erstellen_breite

# Das Etikett wird entfernt
tag @s remove EtiLaUIr.2Erstellen

# Der Rüstungsständer wird zentriert mittig neu positioniert.
execute align xyz positioned ~0.5 ~ ~0.5 run teleport @s ~-1 ~1 ~-1
