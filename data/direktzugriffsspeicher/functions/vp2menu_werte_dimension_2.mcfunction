# Die aktuelle Position wird zwischengespeichert und der Kopfteil der tellraw-Nachricht wird ausgegeben
scoreboard players add #VarFeld.p2PositionAusgebenDimension2 PZFeld.p2Pos 1
scoreboard players set #VarFeld.p2PositionAusgebenDimension3 PZFeld.p2Pos 1
execute if score #VarFeld.p2PositionAusgebenDimension2 PZFeld.p2Pos <= #VarFeld.p2Dimension2 PZFeld.p2Felder run function direktzugriffsspeicher:vp2menu_werte_dimension_3
execute if score #VarFeld.p2PositionAusgebenDimension2 PZFeld.p2Pos <= #VarFeld.p2Dimension2 PZFeld.p2Felder run function direktzugriffsspeicher:vp2menu_werte_dimension_2
