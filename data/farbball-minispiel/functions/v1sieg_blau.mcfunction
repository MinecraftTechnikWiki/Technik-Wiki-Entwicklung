
scoreboard players set VarFarBMi.1Rot PZFarBMi.1Leben 0
scoreboard players operation VarFarBMi.1Rot PZFarBMi.1Leben += @a[team=TMFarBMi.1Rot] PZFarBMi.1Leben
execute if score VarFarBMi.1Rot PZFarBMi.1Leben matches 0 run scoreboard players set @a[scores={PZFarBMi.1Leben=0..}] PZFarBMi.1Leben 0

execute if score VarFarBMi.1Rot PZFarBMi.1Leben matches 0 run tag @a[scores={PZFarBMi.1Leben=0..}] add EtiFarBMi.1Getroffen

execute if score VarFarBMi.1Rot PZFarBMi.1Leben matches 0 run tellraw @a ["",{"text":"[Farbball] ","color":"gold"},{"text":"Das ","color":"dark_green","bold":"true"},{"text":"blaue Team","color":"dark_blue","bold":"true"},{"text":" hat gewonnen!","color":"dark_green","bold":"true"}]

execute if score VarFarBMi.1Rot PZFarBMi.1Leben matches 0 run tag @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Sieg] remove EtiFarBMi.1Sieg
execute if score VarFarBMi.1Rot PZFarBMi.1Leben matches 0 run tag @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Beitreten,tag=EtiFarBMi.1Blau] add EtiFarBMi.1Sieg

execute if score VarFarBMi.1Rot PZFarBMi.1Leben matches 0 run function farbball-minispiel:v1sieg
