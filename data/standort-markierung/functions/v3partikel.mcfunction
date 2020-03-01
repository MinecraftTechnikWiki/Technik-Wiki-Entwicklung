
particle minecraft:dust 255 0 1 1 ~ ~ ~ 0 0 0 0.1 1 force @a[distance=..50]

scoreboard players add VarStaMa.3Laenge PZStaMa.3Wert 1
#tellraw @a ["",{"score":{"name":"VarStaMa.3Laenge","objective":"PZStaMa.3Wert"}}, " ",{"score":{"name":"VarStaMa.3Variable","objective":"PZStaMa.3Wert"}}]

execute if score VarStaMa.3Laenge PZStaMa.3Wert < VarStaMa.3Variable PZStaMa.3Wert positioned ^ ^ ^1 run function standort-markierung:v3partikel


#execute if entity @p[distance=..15] run setblock ~ ~ ~ minecraft:stone replace
#particle minecraft:dust 255 0 1 1 ~ ~ ~ 0 0 0 0.1 10 force @a[distance=..25]
#scoreboard players remove VarStaMa.3Abstand PZStaMa.3Wert 1
#execute if score VarStaMa.3Abstand PZStaMa.3Wert >= VarStaMa.3Variable PZStaMa.3Wert positioned ^-1 ^ ^ run function standort-markierung:v3partikel
