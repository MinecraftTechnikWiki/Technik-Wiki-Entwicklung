# Die aktuelle Position wird zwischengespeichert und der Kopfteil der tellraw-Nachricht wird ausgegeben
scoreboard players add #VarFeld.p2PositionAusgebenDimension1 PZFeld.p2Pos 1
scoreboard players set #VarFeld.p2PositionAusgebenDimension2 PZFeld.p2Pos 0
execute if score #VarFeld.p2PositionAusgebenDimension1 PZFeld.p2Pos <= @s PZFeld.p2Felder run function direktzugriffsspeicher:vp2menu_werte_dimension_2
execute if score #VarFeld.p2PositionAusgebenDimension1 PZFeld.p2Pos <= @s PZFeld.p2Felder run function direktzugriffsspeicher:vp2menu_werte_dimension_1
