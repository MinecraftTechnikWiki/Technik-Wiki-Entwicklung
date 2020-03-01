# Falls der Rüstungsständer gerade platziert wurde, wird von diesem aus die Erstellen-Funktion gestartet.
execute as @e[type=minecraft:armor_stand,tag=EtiUhrA.1Erstellen] at @s run function uhren-anzeige:v1erstellen

# Jeden Tick wird die Tick-Variable um eins erhöht und wenn sie die 20 erreicht hat, wird die Uhrzeit-Funktion geladen.
scoreboard players add #VarUhrA.1Tick PZUhrA.1Zeichen 1
execute if score #VarUhrA.1Tick PZUhrA.1Zeichen matches 20.. run function uhren-anzeige:v1uhrzeit

# Für alle Ziffern-Rüstungsständer wird die Ziffer-Funktion geladen.
execute as @e[type=minecraft:armor_stand,tag=EtiUhrA.1Ziffer] at @s run function uhren-anzeige:v1ziffer

# Jedesmal wenn die Sekunde neu beginnt, werden die Doppelpunkte platziert und nach einer halben Sekunde werden sie wieder entfernt.
execute if score #VarUhrA.1Tick PZUhrA.1Zeichen matches 0..9 at @e[type=minecraft:armor_stand,tag=EtiUhrA.1Punkte] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:0,name:"uhren-anzeige:v1doppelpunkte"} replace
execute if score #VarUhrA.1Tick PZUhrA.1Zeichen matches 0..9 at @e[type=minecraft:armor_stand,tag=EtiUhrA.1Punkte] run setblock ~ ~1 ~ minecraft:redstone_block replace
execute if score #VarUhrA.1Tick PZUhrA.1Zeichen matches 10..19 at @e[type=minecraft:armor_stand,tag=EtiUhrA.1Punkte] run fill ~ ~ ~ ~ ~3 ~ minecraft:air replace
