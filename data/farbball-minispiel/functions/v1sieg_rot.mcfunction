
scoreboard players set #PBLebenBlau PBLeben 0
scoreboard players operation #PBLebenBlau PBLeben += @a[team=PBTeamBlau] PBLeben
execute if score #PBLebenBlau PBLeben matches 0 run scoreboard players set @a[scores={PBLeben=0..}] PBLeben 0

execute if score #PBLebenBlau PBLeben matches 0 run tag @a[scores={PBLeben=0..}] add PaintballGetroffen

execute if score #PBLebenBlau PBLeben matches 0 run tellraw @a ["",{"text":"[Paintball] ","color":"gold"},{"text":"Das ","color":"dark_green","bold":"true"},{"text":"rote Team","color":"dark_red","bold":"true"},{"text":" hat gewonnen!","color":"dark_green","bold":"true"}]

execute if score #PBLebenBlau PBLeben matches 0 run tag @e[type=minecraft:armor_stand,tag=EtiFarbB.1Sieg] remove EtiFarbB.1Sieg
execute if score #PBLebenBlau PBLeben matches 0 run tag @e[type=minecraft:armor_stand,tag=PaintballTeamBeitreten,tag=PaintballTeamRot] add EtiFarbB.1Sieg

execute if score #PBLebenBlau PBLeben matches 0 run function farbball-minispiel:v1sieg
