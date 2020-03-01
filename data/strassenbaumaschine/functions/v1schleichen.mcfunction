
execute if entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Strassenbaumaschine,scores={PZStraB.1Brenn=1..}] run tag @s[nbt={OnGround:true,SelectedItem:{id:"minecraft:wooden_sword",tag:{strassenbaumaschine:"v1gegenstand"} } }] add EtiStraB.1Strasse

execute if entity @s[tag=EtiStraB.1Strasse] run scoreboard players add @e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Strassenbaumaschine,sort=nearest,limit=1] PZStraB.1Schl 1

title @s[tag=EtiStraB.1Strasse] actionbar ["",{"text":"Straßenlänge: ","bold":true},{"score":{"name":"@e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Strassenbaumaschine,sort=nearest,limit=1]","objective":"PZStraB.1Schl"} }]

tag @s[tag=EtiStraB.1Strasse] remove EtiStraB.1Strasse

execute if entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Strassenbaumaschine] run tag @s[nbt={OnGround:true,SelectedItem:{id:"minecraft:coal"} }] add EtiStraB.1Brennstoff

execute if entity @s[tag=EtiStraB.1Brennstoff] run function strassenbaumaschine:v1material

scoreboard players add @s[tag=EtiStraB.1Brennstoff] PZStraB.1Brenn 1
clear @s[tag=EtiStraB.1Brennstoff,scores={PZStraB.1Brenn=1}] minecraft:coal 1
scoreboard players set @s[tag=EtiStraB.1Brennstoff,scores={PZStraB.1Brenn=12..}] PZStraB.1Brenn 0

execute if entity @s[tag=EtiStraB.1Brennstoff] run scoreboard players add @e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Strassenbaumaschine,sort=nearest,limit=1] PZStraB.1Brenn 1

title @s[tag=EtiStraB.1Brennstoff] actionbar ["",{"text":"Brennstoff: ","bold":true},{"score":{"name":"@e[distance=..5,type=minecraft:armor_stand,tag=EtiStraB.1Strassenbaumaschine,sort=nearest,limit=1]","objective":"PZStraB.1Brenn"} }]

tag @s[tag=EtiStraB.1Brennstoff] remove EtiStraB.1Brennstoff

scoreboard players set @a[scores={PZStraB.1Schl=1..}] PZStraB.1Schl 0
