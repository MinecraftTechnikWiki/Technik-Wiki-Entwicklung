
scoreboard objectives remove PZAufS.p1Reden
scoreboard objectives remove PZAufS.p1Handel
scoreboard objectives remove PZAufS.p1Klaus

gamemode creative @a[distance=..25,gamemode=!creative]

execute at @e[type=minecraft:villager,tag=EtiAufS.p1Ralf] run fill ~-4 ~ ~-1 ~-6 ~2 ~1 minecraft:air

clear @a minecraft:chest{auftrag-system:"vp1gegenstand"}

kill @e[tag=EtiAufS.p1Alle]

fill ~ ~ ~-50 ~-32 ~29 ~-18 minecraft:air replace
fill ~1 ~ ~-50 ~33 ~29 ~-18 minecraft:air replace
fill ~1 ~ ~-51 ~33 ~29 ~-83 minecraft:air replace
fill ~ ~ ~-51 ~-32 ~29 ~-83 minecraft:air replace

fill ~ ~29 ~-50 ~-32 ~58 ~-18 minecraft:air replace
fill ~1 ~29 ~-50 ~33 ~58 ~-18 minecraft:air replace
fill ~1 ~29 ~-51 ~33 ~58 ~-83 minecraft:air replace
fill ~ ~29 ~-51 ~-32 ~58 ~-83 minecraft:air replace

tag @a[tag=EtiAufS.p1Rosenstrauch] remove EtiAufS.p1Rosenstrauch
tag @a[tag=EtiAufS.p1Waffenbox] remove EtiAufS.p1Waffenbox
tag @a[tag=EtiAufS.p1HandelWaffenbox] remove EtiAufS.p1HandelWaffenbox
tag @a[tag=EtiAufS.p1Grabbox] remove EtiAufS.p1Grabbox
tag @a[tag=EtiAufS.p1HandelGrabbox] remove EtiAufS.p1HandelGrabbox

execute positioned ~-32 ~ ~-83 run kill @e[type=minecraft:item,dx=64,dy=64,dz=64]
