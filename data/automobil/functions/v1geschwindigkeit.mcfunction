
execute store result score @s PZAuto.1Vergl run data get entity @p[distance=..1,tag=EtiAuto.1SitztImAuto] Motion[0] 10000
scoreboard players operation @s PZAuto.1Vergl *= @s PZAuto.1Geschw
execute store result entity @s Motion[0] double 0.00175 run scoreboard players get @s PZAuto.1Vergl

execute store result score @s PZAuto.1Vergl run data get entity @p[distance=..1,tag=EtiAuto.1SitztImAuto] Motion[2] 10000
scoreboard players operation @s PZAuto.1Vergl *= @s PZAuto.1Geschw
execute store result entity @s Motion[2] double 0.00175 run scoreboard players get @s PZAuto.1Vergl
