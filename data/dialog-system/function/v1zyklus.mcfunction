# Wenn der Spieler auf eine Atnwort im Chat getippt hat, wird die Antwort-Funktion geladen.
execute as @a[scores={PZDiaLS.1Antwort=1..}] at @s run function dialog-system:v1antwort with entity @s

# Wurde ein Dorfbewohner mit einem rechten Mausklick angetippt, wird die Reden-Funktion geladen.
execute as @e[type=minecraft:interaction,tag=EtiDiaLS.1Reden] if data entity @s interaction at @s run function dialog-system:v1reden with entity @s interaction

# Nur jede halbe Sekunde wird diese Funktion nicht vorzeitig abgebrochen.
scoreboard players add #VarDiaLS.1Tick PZDiaLS.1Reden 1
execute if score #VarDiaLS.1Tick PZDiaLS.1Reden matches 1..9 run return 0
scoreboard players set #VarDiaLS.1Tick PZDiaLS.1Reden 0

# Der Dorfbewohner blickt zum Spieler.
execute as @e[type=minecraft:villager,tag=EtiDiaLS.1Reden] at @s facing entity @p[distance=..3] feet run teleport @s ~ ~ ~ ~ ~
