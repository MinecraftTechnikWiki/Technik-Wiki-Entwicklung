
scoreboard objectives remove PZHanSE.1Reden
scoreboard objectives remove PZHanSE.1Handel
scoreboard objectives remove PZHanSE.1Klaus

gamemode creative @a[distance=..25,gamemode=!creative]

execute at @e[type=minecraft:villager,tag=EtiHanSE.1Ralf] run fill ~-4 ~ ~-1 ~-6 ~2 ~1 minecraft:air

kill @e[tag=EtiHanSE.1Alle]

fill ~ ~ ~-50 ~-32 ~29 ~-18 minecraft:air replace
fill ~1 ~ ~-50 ~33 ~29 ~-18 minecraft:air replace
fill ~1 ~ ~-51 ~33 ~29 ~-83 minecraft:air replace
fill ~ ~ ~-51 ~-32 ~29 ~-83 minecraft:air replace

fill ~ ~29 ~-50 ~-32 ~58 ~-18 minecraft:air replace
fill ~1 ~29 ~-50 ~33 ~58 ~-18 minecraft:air replace
fill ~1 ~29 ~-51 ~33 ~58 ~-83 minecraft:air replace
fill ~ ~29 ~-51 ~-32 ~58 ~-83 minecraft:air replace

tag @a[tag=EtiHanSE.1Rosenstrauch] remove EtiHanSE.1Rosenstrauch
tag @a[tag=EtiHanSE.1Waffenbox] remove EtiHanSE.1Waffenbox
tag @a[tag=EtiHanSE.1HandelWaffenbox] remove EtiHanSE.1HandelWaffenbox
tag @a[tag=EtiHanSE.1Grabbox] remove EtiHanSE.1Grabbox
tag @a[tag=EtiHanSE.1HandelGrabbox] remove EtiHanSE.1HandelGrabbox

execute positioned ~-32 ~ ~-83 run kill @e[type=minecraft:item,dx=64,dy=64,dz=64]
