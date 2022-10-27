# Wurde die End-Höhe erreicht, wird der Konstruktionsblock platziert.
execute if entity @s[scores={PZSchwB.p2Wert=0}] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"schwebebahn:vp2spur",posY:0} replace

# Je nach dem ob die Blickrichtung in Richtung Pole oder Äquator ist, werden entsprechende Daten kopiert.
execute if entity @s[scores={PZSchwB.p2Wert=0},y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run data merge block ~ ~ ~ {rotation:"NONE",posX:-15,posZ:-3}
execute if entity @s[scores={PZSchwB.p2Wert=0},y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",posX:3,posZ:-15}

# Der Redstone-Blöcke wird platziert um die Spur zu laden.
execute if entity @s[scores={PZSchwB.p2Wert=0}] run setblock ~ ~1 ~ minecraft:redstone_block replace

# Das Spur-Kreuz wird platziert.
execute if entity @s[tag=EtiSchwB.p2SpurKreuz,scores={PZSchwB.p2Wert=0}] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"schwebebahn:vp2spur_kreuz",posY:0} replace

# Je nach Blickrichtung werden die entsprechenden Daten kopiert.
execute if entity @s[tag=EtiSchwB.p2SpurKreuz,scores={PZSchwB.p2Wert=0},y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",posX:3,posZ:-15}
execute if entity @s[tag=EtiSchwB.p2SpurKreuz,scores={PZSchwB.p2Wert=0},y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run data merge block ~ ~ ~ {rotation:"NONE",posX:-15,posZ:-3}

# Der Redstone-Block wird platziert.
execute if entity @s[tag=EtiSchwB.p2SpurKreuz,scores={PZSchwB.p2Wert=0}] run setblock ~ ~1 ~ minecraft:redstone_block replace

# Solange noch nicht die End-Höhe erreicht ist, werden Säulen platziert.
execute if entity @s[scores={PZSchwB.p2Wert=1..}] run setblock ^1 ^ ^ minecraft:quartz_pillar replace
execute if entity @s[scores={PZSchwB.p2Wert=1..}] run setblock ^-1 ^ ^ minecraft:quartz_pillar replace

# Solange noch nicht die End-Höhe erreicht ist, wird die Funktion um einen Block nach oben nochmal aufgerufen.
scoreboard players remove @s PZSchwB.p2Wert 1
execute if entity @s[scores={PZSchwB.p2Wert=0..}] positioned ~ ~1 ~ run function schwebebahn:vp2bauwerk_hoehe
