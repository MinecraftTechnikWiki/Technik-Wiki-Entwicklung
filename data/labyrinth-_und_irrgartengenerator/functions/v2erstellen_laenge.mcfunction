# Ein Quarz-Bereich wird platziert.
fill ~ ~ ~ ~-2 ~2 ~-2 minecraft:quartz_block replace

# Eine Partikelwolke wird erzeugt, damit der Irrgarten beim Ausschalten komplett entfernt werden kann.
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiLaUIr.2Alle","EtiLaUIr.2Gang"]}

# Die Längen-Variable wird um eins erhöht und nur wenn deren Wert kleiner gleich dem eingestellten Längen-Wert entspricht wird die Längen-Funktion selbst um zwei Meter versetzt aufgerufen.
scoreboard players add #VarLaUIr.2LaengePosition PZLaUIr.2Gross 1
execute if score #VarLaUIr.2LaengePosition PZLaUIr.2Gross <= #VarLaUIr.2Laenge PZLaUIr.2Gross positioned ~ ~ ~-2 run function labyrinth-_und_irrgartengenerator:v2erstellen_laenge
