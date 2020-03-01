# Der Kontrollpunkt wird nach rechts rotiert.
teleport @s ~ ~ ~ ~1 ~

# Wenn der Kontrollpunkt rot ist, wird roter Beton platziert, sonst blauer Beton.
execute if entity @s[tag=EtiKontPS.4ROT] run fill ^1 ^ ^ ^4 ^ ^ minecraft:red_concrete replace
execute if entity @s[tag=EtiKontPS.4BLAU] run fill ^1 ^ ^ ^4 ^ ^ minecraft:blue_concrete replace

# Der Wert der Drehung wird um eins erhöht.
scoreboard players add @s PZKontPS.4Dreh 1

# Wenn die Drehung 360° erreicht hat, wird der Kontrollpunkt in das entsprechende Team gesteckt.
execute if entity @s[tag=EtiKontPS.4ROT,scores={PZKontPS.4Dreh=360}] run team join TMKontPS.4ROT @s
execute if entity @s[tag=EtiKontPS.4BLAU,scores={PZKontPS.4Dreh=360}] run team join TMKontPS.4BLAU @s
