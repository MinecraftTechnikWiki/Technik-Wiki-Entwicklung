# Jeden Tick werden die Lebenspunkte der Tiere in einen Vergleispunktestand gespeichert und danach wird der aktuelle Lebenspunktewert ermittelt
execute as @e[distance=..50,tag=EtiLebP.1Herzen] run scoreboard players operation @s PZLebP.1Vergl = @s PZLebP.1Leben
execute as @e[distance=..50,tag=EtiLebP.1Herzen] store result score @s PZLebP.1Leben run data get entity @s Health

# Alle Tiere die mit den Spawn-Eiern erschaffen wurden (entsprechende Etikett) werden geprüft ob sie noch ihre aktuellen Herzen haben, wenn nicht wird die Funktion für das Tier aufgerufen
execute as @e[tag=EtiLebP.1Herzen] unless score @s PZLebP.1Vergl = @s PZLebP.1Leben run function lebenspunkte-system:v1herzen
