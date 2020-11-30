
execute if entity @e[distance=..3,type=minecraft:item,nbt={Item:{tag:{EigEisenB.1Alle:true} } }] run function eisenbahn:v1entfernen

execute if entity @s run function eisenbahn:v1ausrichtung
execute if entity @s if block ^ ^-1 ^-1 minecraft:magenta_glazed_terracotta positioned ^ ^3 ^14 positioned ~-1 ~ ~-1 if entity @p[dx=2,dy=6,dz=2,scores={PZEisenB.1Schl=1..},nbt={OnGround:true}] at @s run function eisenbahn:v1zug_lok
