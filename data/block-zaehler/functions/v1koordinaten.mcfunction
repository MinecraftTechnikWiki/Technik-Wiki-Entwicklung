
execute store result score VarBlZal.1X PZBlZal.1Wert run data get storage block-zaehler:v1daten "EigBlZal.1Position".X
execute store result score VarBlZal.1Y PZBlZal.1Wert run data get storage block-zaehler:v1daten "EigBlZal.1Position".Y
execute store result score VarBlZal.1Z PZBlZal.1Wert run data get storage block-zaehler:v1daten "EigBlZal.1Position".Z

execute store result score VarBlZal.1DX PZBlZal.1Wert run data get storage block-zaehler:v1daten "EigBlZal.1Position".DX
execute store result score VarBlZal.1DY PZBlZal.1Wert run data get storage block-zaehler:v1daten "EigBlZal.1Position".DY
execute store result score VarBlZal.1DZ PZBlZal.1Wert run data get storage block-zaehler:v1daten "EigBlZal.1Position".DZ

scoreboard players set VarBlZal.1Bereich PZBlZal.1Wert 1
execute if score VarBlZal.1X PZBlZal.1Wert = VarBlZal.1DX PZBlZal.1Wert run scoreboard players set VarBlZal.1Bereich PZBlZal.1Wert 0
execute if score VarBlZal.1Y PZBlZal.1Wert = VarBlZal.1DY PZBlZal.1Wert run scoreboard players set VarBlZal.1Bereich PZBlZal.1Wert 0
execute if score VarBlZal.1Z PZBlZal.1Wert = VarBlZal.1DZ PZBlZal.1Wert run scoreboard players set VarBlZal.1Bereich PZBlZal.1Wert 0
execute if score VarBlZal.1Bereich PZBlZal.1Wert matches 0 run tellraw @s [{"text":"Der Bereich in dem Blöcke gezählt werden sollen, ist zu klein!","color":"red","bold":true}]
execute if score VarBlZal.1Bereich PZBlZal.1Wert matches 0 run return 0

execute if score VarBlZal.1X PZBlZal.1Wert > VarBlZal.1DX PZBlZal.1Wert run scoreboard players operation VarBlZal.1X PZBlZal.1Wert >< VarBlZal.1DX PZBlZal.1Wert
execute if score VarBlZal.1Y PZBlZal.1Wert > VarBlZal.1DY PZBlZal.1Wert run scoreboard players operation VarBlZal.1Y PZBlZal.1Wert >< VarBlZal.1DY PZBlZal.1Wert
execute if score VarBlZal.1Z PZBlZal.1Wert > VarBlZal.1DZ PZBlZal.1Wert run scoreboard players operation VarBlZal.1Z PZBlZal.1Wert >< VarBlZal.1DZ PZBlZal.1Wert

execute store result entity @e[type=minecraft:marker,tag=EtiBlZal.1Start,limit=1] Pos[0] double 1 store result storage block-zaehler:v1daten "EigBlZal.1Position".X int 1 run scoreboard players get VarBlZal.1X PZBlZal.1Wert
execute store result entity @e[type=minecraft:marker,tag=EtiBlZal.1Start,limit=1] Pos[1] double 1 store result storage block-zaehler:v1daten "EigBlZal.1Position".Y int 1 run scoreboard players get VarBlZal.1Y PZBlZal.1Wert
execute store result entity @e[type=minecraft:marker,tag=EtiBlZal.1Start,limit=1] Pos[2] double 1 store result storage block-zaehler:v1daten "EigBlZal.1Position".Z int 1 run scoreboard players get VarBlZal.1Z PZBlZal.1Wert

#execute store result entity @e[type=minecraft:marker,tag=EtiBlZal.1Ende,limit=1] Pos[0] double 1 store result storage block-zaehler:v1daten "EigBlZal.1Position".DX int 1 run scoreboard players get VarBlZal.1DX PZBlZal.1Wert
#execute store result entity @e[type=minecraft:marker,tag=EtiBlZal.1Ende,limit=1] Pos[1] double 1 store result storage block-zaehler:v1daten "EigBlZal.1Position".DY int 1 run scoreboard players get VarBlZal.1DY PZBlZal.1Wert
#execute store result entity @e[type=minecraft:marker,tag=EtiBlZal.1Ende,limit=1] Pos[2] double 1 store result storage block-zaehler:v1daten "EigBlZal.1Position".DZ int 1 run scoreboard players get VarBlZal.1DZ PZBlZal.1Wert

execute store result storage block-zaehler:v1daten "EigBlZal.1Position".DX int 1 run scoreboard players get VarBlZal.1DX PZBlZal.1Wert
execute store result storage block-zaehler:v1daten "EigBlZal.1Position".DY int 1 run scoreboard players get VarBlZal.1DY PZBlZal.1Wert
execute store result storage block-zaehler:v1daten "EigBlZal.1Position".DZ int 1 run scoreboard players get VarBlZal.1DZ PZBlZal.1Wert

execute store result entity @e[type=minecraft:marker,tag=EtiBlZal.1Ende,limit=1] Pos[0] double 1 run scoreboard players add VarBlZal.1DX PZBlZal.1Wert 1
execute store result entity @e[type=minecraft:marker,tag=EtiBlZal.1Ende,limit=1] Pos[1] double 1 run scoreboard players add VarBlZal.1DY PZBlZal.1Wert 1
execute store result entity @e[type=minecraft:marker,tag=EtiBlZal.1Ende,limit=1] Pos[2] double 1 run scoreboard players add VarBlZal.1DZ PZBlZal.1Wert 1

tag @e[type=minecraft:marker,tag=EtiBlZal.1Position,limit=2] add EtiBlZal.1Koordinaten

function block-zaehler:v1position with storage block-zaehler:v1daten "EigBlZal.1Position"
