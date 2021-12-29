
execute as @e[type=minecraft:marker,tag=EtiManSV.1Plattform] at @s store result score @s PZManSV.1Wert positioned ~-5 ~ ~-5 run tag @a[dx=9,dy=9,dz=9] add EtiManSV.1AufPlattform

scoreboard players add VarManSV.1Tick PZManSV.1Wert 1
execute if score VarManSV.1Tick PZManSV.1Wert matches 20.. if entity @e[type=minecraft:marker,tag=EtiManSV.1Plattform,scores={PZManSV.1Wert=0}] run scoreboard players set VarManSV.1Zaehler PZManSV.1Wert 15
execute if score VarManSV.1Tick PZManSV.1Wert matches 20.. if entity @e[type=minecraft:marker,tag=EtiManSV.1Plattform,scores={PZManSV.1Wert=1..}] run scoreboard players remove VarManSV.1Zaehler PZManSV.1Wert 1
execute if score VarManSV.1Tick PZManSV.1Wert matches 20.. run scoreboard players set VarManSV.1Tick PZManSV.1Wert 0

title @a[tag=EtiManSV.1AufPlattform] actionbar ["",{"score":{"name":"VarManSV.1Zaehler","objective":"PZManSV.1Wert"},"color":"dark_purple","bold":true}]

execute if score VarManSV.1Zaehler PZManSV.1Wert matches ..0 as @e[type=minecraft:marker,tag=EtiManSV.1Plattform,scores={PZManSV.1Wert=1..}] at @s run function mannschaftsverteiler:v1mannschaft

item replace entity @a[tag=!EtiManSV.1AufPlattform,nbt={Inventory:[{Slot:103b,tag:{EigManSV.1Alle:true} } ] }] armor.head with minecraft:air
tag @a[tag=EtiManSV.1AufPlattform] remove EtiManSV.1AufPlattform
