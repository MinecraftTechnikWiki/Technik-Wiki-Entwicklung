# Jeden Tick wird die Variable um eins erhöht, um eine Viertel-Sekunde zu erfassen.
scoreboard players add VarLoAuf.2Tick PZLoAuf.2Wert 1

# Wenn die spezielle Lore platziert wird, so besitzt sie eine bestimmte Namens-Eigenschaft, die geprüft werden kann.
execute if score VarLoAuf.2Tick PZLoAuf.2Wert matches 5.. as @e[type=minecraft:minecart,tag=!EtiLoAuf.2Lore,name="Lorenaufzug-Lore"] run data merge entity @s {CustomNameVisible:true,Tags:["EtiLoAuf.2Alle","EtiLoAuf.2Lore"]}

# Nur wenn der Spieler in der speziellen Lore sitzt, wird die Sitzen-Funktion geladen.
execute if score VarLoAuf.2Tick PZLoAuf.2Wert matches 5.. as @e[type=minecraft:minecart,tag=EtiLoAuf.2Lore] on passengers on vehicle at @s run function lorenaufzug:v2sitzen

# Die Variable wird wieder auf null gesetzt, damit es wieder von vorne los gehen kann.
execute if score VarLoAuf.2Tick PZLoAuf.2Wert matches 5.. run scoreboard players set VarLoAuf.2Tick PZLoAuf.2Wert 0
