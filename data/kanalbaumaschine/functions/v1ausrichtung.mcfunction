
tag @p[distance=..15,tag=EtiKanaBM.1SpielerSitzt] remove EtiKanaBM.1SpielerSitzt
tag @p[distance=..15,tag=EtiKanaBM.1SpielerAngel] remove EtiKanaBM.1SpielerAngel

tag @p[distance=..10,tag=!EtiKanaBM.1SpielerSitzt,nbt={RootVehicle:{Entity:{Tags:["EtiKanaBM.1Halter"] } } }] add EtiKanaBM.1SpielerSitzt
tag @p[distance=..10,tag=EtiKanaBM.1SpielerSitzt,tag=!EtiKanaBM.1SpielerAngel,nbt={SelectedItem:{id:"minecraft:fishing_rod",tag:{kanalbaumaschine:"v1gegenstand"} } }] add EtiKanaBM.1SpielerAngel

tag @p[distance=..10,tag=!EtiKanaBM.1SpielerAngel,tag=EtiKanaBM.1Nachricht] remove EtiKanaBM.1Nachricht
execute as @p[distance=..10,tag=EtiKanaBM.1SpielerAngel] run function kanalbaumaschine:v1steuern

teleport @s ~ ~ ~ facing entity @p[distance=..10,tag=EtiKanaBM.1SpielerSitzt] feet
execute rotated as @p[distance=..10,tag=EtiKanaBM.1SpielerAngel] run teleport @s ~ ~ ~ ~180 ~

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Raster,name="wahr",sort=nearest,limit=1] if entity @s[y_rotation=135..-135] rotated 180 0 run teleport @s ~ ~ ~ 180 ~
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Raster,name="wahr",sort=nearest,limit=1] if entity @s[y_rotation=-135..-45] rotated -90 0 run teleport @s ~ ~ ~ -90 ~
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Raster,name="wahr",sort=nearest,limit=1] if entity @s[y_rotation=-45..45] rotated 0 0 run teleport @s ~ ~ ~ 0 ~
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Raster,name="wahr",sort=nearest,limit=1] if entity @s[y_rotation=45..135] rotated 90 0 run teleport @s ~ ~ ~ 90 ~

teleport @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Wasser,sort=nearest,limit=1] ^ ^0.5 ^4 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Mitte,sort=nearest,limit=1] ^ ^ ^4 facing entity @p feet

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Zweierspur,name="falsch"] run function kanalbaumaschine:v1ausrichtung_einerspur
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiKanaBM.1Zweierspur,name="wahr"] run function kanalbaumaschine:v1ausrichtung_zweierspur

teleport @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Halter,sort=nearest,limit=1] ^ ^2 ^7 facing entity @p feet
