# Rechtsklick auf Interaktionsobjekt ruft Reden-Funktion auf.
execute as @e[type=minecraft:interaction,tag=EtiMonoLS.1Reden] if data entity @s interaction at @s run function monolog-system:v1reden with entity @s interaction

# Nur alle Zehn Ticks wird die Funktion hier nicht vorzeitig beendet.
scoreboard players add #VarMonoLS.1Tick PZMonoLS.1Reden 1
execute if score #VarMonoLS.1Tick PZMonoLS.1Reden matches 1..9 run return 0
scoreboard players set #VarMonoLS.1Tick PZMonoLS.1Reden 0

# Sprechende Dorfbewohner blicken den am nächsten gelegenen Spieler an.
execute as @e[type=minecraft:villager,tag=EtiMonoLS.1Reden] at @s facing entity @p[distance=..3] feet run teleport @s ~ ~ ~ ~ ~
