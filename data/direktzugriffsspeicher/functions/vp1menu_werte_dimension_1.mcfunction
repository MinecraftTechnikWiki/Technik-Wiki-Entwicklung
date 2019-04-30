# Die aktuelle Position wird zwischengespeichert und der Kopfteil der tellraw-Nachricht wird ausgegeben
scoreboard players add #VarFeld.p1PositionAusgebenDimension1 PZFeld.p1Pos 1
scoreboard players set #VarFeld.p1PositionAusgebenDimension2 PZFeld.p1Pos 1
execute if score #VarFeld.p1PositionAusgebenDimension1 PZFeld.p1Pos <= @s PZFeld.p1Felder run function direktzugriffsspeicher:vp1menu_werte_dimension_2
execute if score #VarFeld.p1PositionAusgebenDimension1 PZFeld.p1Pos <= @s PZFeld.p1Felder run function direktzugriffsspeicher:vp1menu_werte_dimension_1
