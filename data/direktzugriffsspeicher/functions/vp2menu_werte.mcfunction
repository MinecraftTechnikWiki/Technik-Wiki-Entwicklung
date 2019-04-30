# Die aktuelle Position wird zwischengespeichert und der Kopfteil der tellraw-Nachricht wird ausgegeben
execute at @s run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.2:"]
scoreboard players set #VarFeld.p2PositionAusgebenDimension1 PZFeld.p2Pos 0
function direktzugriffsspeicher:vp2menu_werte_dimension_1
