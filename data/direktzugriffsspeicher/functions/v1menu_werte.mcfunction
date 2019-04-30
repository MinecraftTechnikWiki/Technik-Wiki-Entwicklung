# Eine Startpoisitionsvariable wird auf eins festgelegt und der Kopfteil der tellraw-Nachricht wird ausgegeben. Anschließend wird die Menü-Werte-Felder-Funktion geladen
scoreboard players set #VarFeld.1PositionAusgeben PZFeld.1Pos 1
execute at @s run tellraw @a[distance=..25] ["Direktzugriffsspeicher.1:"]
function direktzugriffsspeicher:v1menu_werte_felder
