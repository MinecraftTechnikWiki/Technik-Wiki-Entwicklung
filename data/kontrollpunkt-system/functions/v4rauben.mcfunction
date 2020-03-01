# Der Kontrollpunkt wird nach links gedreht.
teleport @s ~ ~ ~ ~-1 ~

# Es werden graue Betonblöcke platziert um die Teamfarbe zu beseitigen.
fill ^1 ^ ^ ^4 ^ ^ minecraft:light_gray_concrete replace

# Die Drehung wird um eins reduziert.
scoreboard players remove @s PZKontPS.4Dreh 1

# Wenn der Kontrollpunkt den Wert null für die Drehung erreicht hat, wird er aus dem Team geschmissen.
execute if entity @s[scores={PZKontPS.4Dreh=0}] run team leave @s
