# Die aktuelle Position wird zwischengespeichert und der Kopfteil der tellraw-Nachricht wird ausgegeben
execute at @s run tellraw @a[distance=..25] ["Direktzugriffsspeicher.erweitert.1:"]
scoreboard players set #VarFeld.p1PositionAusgebenDimension1 PZFeld.p1Pos 0
function direktzugriffsspeicher:vp1menu_werte_dimension_1
