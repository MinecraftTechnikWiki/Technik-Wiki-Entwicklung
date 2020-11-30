
scoreboard players set #PBLebenRot PBLeben 0
scoreboard players operation #PBLebenRot PBLeben += @a[team=PBTeamRot] PBLeben
execute if score #PBLebenRot PBLeben matches 0 run scoreboard players set @a[scores={PBLeben=0..}] PBLeben 0

execute if score #PBLebenRot PBLeben matches 0 run tag @a[scores={PBLeben=0..}] add PaintballGetroffen

execute if score #PBLebenRot PBLeben matches 0 run tellraw @a ["",{"text":"[Paintball] ","color":"gold"},{"text":"Das ","color":"dark_green","bold":"true"},{"text":"blaue Team","color":"dark_blue","bold":"true"},{"text":" hat gewonnen!","color":"dark_green","bold":"true"}]

execute if score #PBLebenRot PBLeben matches 0 run tag @e[type=minecraft:armor_stand,tag=EtiFarbB.1Sieg] remove EtiFarbB.1Sieg
execute if score #PBLebenRot PBLeben matches 0 run tag @e[type=minecraft:armor_stand,tag=PaintballTeamBeitreten,tag=PaintballTeamBlau] add EtiFarbB.1Sieg

execute if score #PBLebenRot PBLeben matches 0 run function farbball-minispiel:v1sieg
