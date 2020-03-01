# Jeden Tick werden die Lebenspunkte der Tiere in einen Vergleichspunktestand gespeichert und danach wird der aktuelle Lebenspunktewert ermittelt
execute as @e[tag=EtiLebP.1Herzen] run scoreboard players operation @s PZLebP.1Vergl = @s PZLebP.1Leben
execute as @e[tag=EtiLebP.1Herzen] store result score @s PZLebP.1Leben run data get entity @s Health

# Eine neu gespawnte Kreatur besitzt einen Vergleichswert von null, daher wird bei dieser das aktuelle Leben dem maximalen Leben gleichgesetzt
execute as @e[tag=EtiLebP.1Herzen,scores={PZLebP.1Vergl=0}] run scoreboard players operation @s PZLebP.1MaxLeb = @s PZLebP.1Leben

# Alle Tiere die mit den Spawn-Eiern erschaffen wurden (entsprechendes Etikett) werden geprüft ob sie noch ihre aktuellen Herzen haben, wenn nicht wird deren Vergleichspunktestand auf eins gesetzt und darauf hin die Funktion für das Tier aufgerufen
execute as @e[tag=EtiLebP.1Herzen] unless score @s PZLebP.1Vergl = @s PZLebP.1Leben run scoreboard players set @s PZLebP.1Vergl 1
execute as @e[tag=EtiLebP.1Herzen,scores={PZLebP.1Vergl=1}] run data merge entity @s {CustomName:'""'}
execute as @e[tag=EtiLebP.1Herzen,scores={PZLebP.1Vergl=1}] at @e[tag=EtiLebP.1Herz] run function lebenspunkte-system:v1herzen
