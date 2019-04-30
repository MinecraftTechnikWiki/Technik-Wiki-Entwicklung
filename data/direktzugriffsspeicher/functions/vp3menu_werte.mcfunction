# Die aktuelle Position wird zwischengespeichert und der Kopfteil der tellraw-Nachricht wird ausgegeben
scoreboard players set #VarFeld.p3PositionAusgeben PZFeld.p3Pos 1
execute at @s run tellraw @a[distance=..25] ["Direktzugriffsspeicher.plus.3:"]
function direktzugriffsspeicher:vp3menu_werte_felder
