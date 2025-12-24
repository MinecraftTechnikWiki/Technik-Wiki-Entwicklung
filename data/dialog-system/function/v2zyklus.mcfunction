# Wenn der Spieler auf eine Atnwort im Chat getippt hat, wird die Antwort-Funktion geladen.
execute as @a[scores={PZDiaLS.2Antwort=0..}] at @s run function dialog-system:v2antwort with entity @s

# Wurde ein Dorfbewohner mit einem rechten Mausklick angetippt, wird die Reden-Funktion geladen.
execute as @e[type=minecraft:interaction,tag=EtiDiaLS.2Reden] if data entity @s interaction at @s run function dialog-system:v2reden with entity @s interaction

# Nur jede halbe Sekunde wird diese Funktion nicht vorzeitig abgebrochen.
scoreboard players add #VarDiaLS.2Tick PZDiaLS.2Reden 1
execute if score #VarDiaLS.2Tick PZDiaLS.2Reden matches 1..9 run return 0
scoreboard players set #VarDiaLS.2Tick PZDiaLS.2Reden 0

# Der Dorfbewohner blickt zum Spieler.
execute as @e[type=minecraft:villager,tag=EtiDiaLS.2Reden] at @s facing entity @p[distance=..3] feet run teleport @s ~ ~ ~ ~ ~
