
scoreboard objectives remove PZStraB.1Schl
scoreboard objectives remove PZStraB.1Brenn
scoreboard objectives remove PZStraB.1Beton
scoreboard objectives remove PZStraB.1Quarz

gamemode creative @a[distance=..25,gamemode=!creative]

clear @a minecraft:hopper{strassenbaumaschine:"v1gegenstand"}
clear @a minecraft:observer{strassenbaumaschine:"v1gegenstand"}
clear @a minecraft:dispenser{strassenbaumaschine:"v1gegenstand"}
clear @a minecraft:iron_ingot{strassenbaumaschine:"v1gegenstand"}
clear @a minecraft:saddle{strassenbaumaschine:"v1gegenstand"}
clear @a minecraft:diamond_pickaxe{strassenbaumaschine:"v1gegenstand"}

clear @a minecraft:armor_stand{strassenbaumaschine:"v1gegenstand"}
clear @a minecraft:wooden_sword{strassenbaumaschine:"v1gegenstand"}

clear @a minecraft:coal{strassenbaumaschine:"v1gegenstand"}
clear @a minecraft:gray_concrete{strassenbaumaschine:"v1gegenstand"}
clear @a minecraft:smooth_quartz{strassenbaumaschine:"v1gegenstand"}

tag @e[type=minecraft:item,nbt={strassenbaumaschine:"v1gegenstand"}] add EtiStraB.1Alle
kill @e[tag=EtiStraB.1Alle]
