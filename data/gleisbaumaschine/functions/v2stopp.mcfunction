# Die Punktestand-Ziele werden gelöscht
scoreboard objectives remove PZGleisB.2Schl
scoreboard objectives remove PZGleisB.2Gleis
scoreboard objectives remove PZGleisB.2Andes
scoreboard objectives remove PZGleisB.2Stein

# Die Materialien, inklusive der Gleisbaumaschine werden aus dem Inventar gelöscht
clear @a minecraft:armor_stand{gleisbaumaschine:"v2gegenstand"}
clear @a minecraft:rail{gleisbaumaschine:"v2gegenstand"}
clear @a minecraft:smooth_stone{gleisbaumaschine:"v2gegenstand"}
clear @a minecraft:andesite{gleisbaumaschine:"v2gegenstand"}
clear @a minecraft:crafting_table{gleisbaumaschine:"v2gegenstand"}
clear @a minecraft:chest_minecart{gleisbaumaschine:"v2gegenstand"}
clear @a minecraft:sticky_piston{gleisbaumaschine:"v2gegenstand"}
clear @a minecraft:dispenser{gleisbaumaschine:"v2gegenstand"}
clear @a minecraft:redstone_block{gleisbaumaschine:"v2gegenstand"}
clear @a minecraft:gold_block{gleisbaumaschine:"v2gegenstand"}
clear @a minecraft:diamond_pickaxe{gleisbaumaschine:"v2gegenstand"}

# Alle Gleisbaumaschine sowie Drops die damit zu tun haben werden gelöscht
tag @e[type=minecraft:item,nbt={tag:{gleisbaumaschine:"v2gegenstand"} } ] add EtiGleisB.2Alle
kill @e[tag=EtiGleisB.2Alle]
