# Jeden Tick werden die Lebenspunkte der Tiere in einen Vergleispunktestand gespeichert und danach wird der aktuelle Lebenspunktewert ermittelt
execute as @e[distance=..50,tag=EtiLebP.2Herzen] run scoreboard players operation @s PZLebP.2Vergl = @s PZLebP.2Leben
execute as @e[distance=..50,tag=EtiLebP.2Herzen] store result score @s PZLebP.2Leben run data get entity @s Health

# Eine neu gespawnte Kreatur besitzt einen Vergleichswert von null, daher wird bei diesem das aktuelle Leben dem maximalen Leben gleichgesetzt
execute as @e[distance=..50,tag=EtiLebP.2Herzen,scores={PZLebP.2Vergl=0}] run scoreboard players operation @s PZLebP.2MaxLeb = @s PZLebP.2Leben

# Alle Tiere die mit den Spawn-Eiern erschaffen wurden und somit das entsprechende Etikett besitzen werden geprüft ob sie noch ihre aktuellen Herzen haben, wenn nicht wird die Funktion für das Tier aufgerufen
execute as @e[distance=..50,tag=EtiLebP.2Herzen] unless score @s PZLebP.2Vergl = @s PZLebP.2Leben run function lebenspunkte-system:v2herzen
