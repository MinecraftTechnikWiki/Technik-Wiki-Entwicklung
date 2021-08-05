
scoreboard objectives remove PZManSV.1Wert

team remove TMManSV.1Team1
team remove TMManSV.1Team2

replaceitem entity @a[nbt={Inventory:[{tag:{EigManSV.1Alle:true}}]}] armor.head minecraft:air

execute at @e[type=minecraft:armor_stand,tag=EtiManSV.1Plattform] run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:air replace minecraft:gray_concrete

kill @e[tag=EtiManSV.1Alle]
