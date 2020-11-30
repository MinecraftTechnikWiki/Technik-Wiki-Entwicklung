
tag @p[distance=..15,tag=EtiStrBTBM.1SpielerSitzt] remove EtiStrBTBM.1SpielerSitzt
tag @p[distance=..15,tag=EtiStrBTBM.1SpielerAngel] remove EtiStrBTBM.1SpielerAngel

tag @p[distance=..10,tag=!EtiStrBTBM.1SpielerSitzt,nbt={RootVehicle:{Entity:{Tags:["EtiStrBTBM.1Halter"] } } }] add EtiStrBTBM.1SpielerSitzt
tag @p[distance=..10,tag=EtiStrBTBM.1SpielerSitzt,tag=!EtiStrBTBM.1SpielerAngel,nbt={SelectedItem:{id:"minecraft:fishing_rod",tag:{EigStrBTBM.1Alle:true} } }] add EtiStrBTBM.1SpielerAngel

tag @p[distance=..10,tag=!EtiStrBTBM.1SpielerAngel,tag=EtiStrBTBM.1Nachricht] remove EtiStrBTBM.1Nachricht
execute as @p[distance=..10,tag=EtiStrBTBM.1SpielerAngel] run function strassenbruecken-_und_-tunnelbaumaschine:v1ausloeser

teleport @s ~ ~ ~ facing entity @p[distance=..10,tag=EtiStrBTBM.1SpielerSitzt] feet
execute rotated as @p[distance=..10,tag=EtiStrBTBM.1SpielerAngel] run teleport @s ~ ~ ~ ~180 ~

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Raster,name="wahr",sort=nearest,limit=1] if entity @s[y_rotation=135..-135] run teleport @s ~ ~ ~ 180 0
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Raster,name="wahr",sort=nearest,limit=1] if entity @s[y_rotation=-135..-45] run teleport @s ~ ~ ~ -90 0
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Raster,name="wahr",sort=nearest,limit=1] if entity @s[y_rotation=-45..45] run teleport @s ~ ~ ~ 0 0
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Raster,name="wahr",sort=nearest,limit=1] if entity @s[y_rotation=45..135] run teleport @s ~ ~ ~ 90 0

teleport @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Wasser,sort=nearest,limit=1] ^ ^0.5 ^4 facing entity @p feet
teleport @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Mitte,sort=nearest,limit=1] ^ ^ ^4 facing entity @p feet

execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="falsch"] run function strassenbruecken-_und_-tunnelbaumaschine:v1ausrichtung_einerspur
execute if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiStrBTBM.1Zweierspur,name="wahr"] run function strassenbruecken-_und_-tunnelbaumaschine:v1ausrichtung_zweierspur

teleport @e[type=minecraft:armor_stand,tag=EtiStrBTBM.1Halter,sort=nearest,limit=1] ^ ^2 ^7 facing entity @p feet
