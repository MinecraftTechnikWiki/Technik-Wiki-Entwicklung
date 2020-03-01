# Die Breiten-Variable wird um eins erhöht.
scoreboard players add #VarLaUIr.2BreitePosition PZLaUIr.2Gross 1

# Die Längen-Variable wird auf eins gesetzt und falls die Variable für die eingestellte Länge mindestens den Wert zwei hat, wird die Längen-Funktion aufgerufen. Ebenfalls wird geprüft ob die Breiten-Variable kleiner gleich der eingestellten Breite entspricht und nur dann wird die Breiten-Funktion um zwei Meter versetzt selbst aufgerufen.
scoreboard players set #VarLaUIr.2LaengePosition PZLaUIr.2Gross 1
execute if score #VarLaUIr.2Laenge PZLaUIr.2Gross matches 2.. run function labyrinth-_und_irrgartengenerator:v2erstellen_laenge
execute if score #VarLaUIr.2BreitePosition PZLaUIr.2Gross <= #VarLaUIr.2Breite PZLaUIr.2Gross positioned ~-2 ~ ~ run function labyrinth-_und_irrgartengenerator:v2erstellen_breite
