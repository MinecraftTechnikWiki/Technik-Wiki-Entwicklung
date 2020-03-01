
scoreboard objectives remove PZMausKS.2Klick
clear @p[distance=..15] minecraft:lime_dye{mausklick-sensor:"v2gegenstand"}
clear @p[distance=..15] minecraft:orange_dye{mausklick-sensor:"v2gegenstand"}
clear @p[distance=..15] minecraft:red_dye{mausklick-sensor:"v2gegenstand"}
tag @e[type=minecraft:item,nbt={Item:{tag:{mausklick-sensor:"v2gegenstand"} } }] add EtiMausKS.2Alle
kill @e[tag=EtiMausKS.2Alle]
