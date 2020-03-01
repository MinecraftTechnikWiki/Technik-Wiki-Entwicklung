# Das Etikett fürs Bauwerk wird entfernt, wenn sich Luft an der Position des Rüstungsständers befindet
execute as @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station,tag=EtiElyAb.1Bauwerk] at @s if block ~ ~ ~ minecraft:air run tag @s remove EtiElyAb.1Bauwerk

# Wenn der Rüstungsständer platziert wurde, besitzt er noch nicht das Etikett für das Bauwerk. Dementsprechend wird dann ein Konstruktionsblock platziert der auch abhängig nach der Blickrichtung des Spielers das Bauwerk entsprechend platziert
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station,tag=!EtiElyAb.1Bauwerk] if entity @p[distance=..5,y_rotation=135..-135] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:3,posY:0,posZ:3,name:"elytren-abschussrampe:v1station"} replace
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station,tag=!EtiElyAb.1Bauwerk] if entity @p[distance=..5,y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",posX:-3,posY:0,posZ:3,name:"elytren-abschussrampe:v1station"} replace
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station,tag=!EtiElyAb.1Bauwerk] if entity @p[distance=..5,y_rotation=-45..45] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-3,posY:0,posZ:-3,name:"elytren-abschussrampe:v1station"} replace
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station,tag=!EtiElyAb.1Bauwerk] if entity @p[distance=..5,y_rotation=45..135] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_90",posX:3,posY:0,posZ:-3,name:"elytren-abschussrampe:v1station"} replace

# Wurde der Konstruktionsblock platziert, so wird ein Redstone-Block daneben platziert, sodass das Bauwerk errichtet wird. Der Rüstungsständer erhält darauf ein Etikett
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station,tag=!EtiElyAb.1Bauwerk] run setblock ~1 ~ ~ minecraft:redstone_block replace
execute as @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station,tag=!EtiElyAb.1Bauwerk] at @s run tag @s add EtiElyAb.1Bauwerk

# Wenn der Spieler mindestens vier Ticks in der Luft war und doch wieder auf dem Boden ist, wird ihm die Elytren entfernt und er erhält eine Nachricht, die Abfrage erfolgt durch ein Etikett
tag @a[tag=EtiElyAb.1Abflug,scores={PZElyAb.1Luft=4..},nbt={OnGround:true}] add EtiElyAb.1Landung
clear @a[tag=EtiElyAb.1Landung] minecraft:elytra{elytren-abschussrampe:"v1gegenstand"}
title @a[tag=EtiElyAb.1Landung] actionbar ["",{"text":"Da du gelandet bist, wurden deine Elytren entfernt","color":"gold","bold":true}]
scoreboard players set @a[tag=EtiElyAb.1Landung] PZElyAb.1Luft 0
tag @a[tag=EtiElyAb.1Landung] remove EtiElyAb.1Abflug
tag @a[tag=EtiElyAb.1Landung] remove EtiElyAb.1Landung

# An der Position des Rüstungsständers, der im Bauwerk steht, wird abgefragt ob sich Spieler über ihm auf den Teppischen befinden. Wenn das der Fall ist und diese auch nichts im Brustpanzer-Slot liegen haben, erhalten diese Spieler ein entsprechendes Etikett, damit nur noch dieses im weiteren Verlauf abgefragt werden muss
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station] positioned ~ ~2 ~ as @a[distance=..2,tag=!EtiElyAb.1Abflug,nbt=!{Inventory:[{Slot:102b}]}] at @s if block ~ ~-1 ~ minecraft:oak_planks if block ~1 ~-1 ~ minecraft:oak_planks if block ~-1 ~-1 ~ minecraft:oak_planks if blocks ~1 ~-1 ~ ~-1 ~-1 ~ ~-1 ~-1 ~1 all if blocks ~1 ~-1 ~ ~-1 ~-1 ~ ~-1 ~-1 ~-1 all run tag @s add EtiElyAb.1Abflug

# Sobald der Spieler das Etikett besitzt, wird jeden Tick sein Punktestand um eins erhöht um zu messen wie lange er bereits sich in der Luft befindet
scoreboard players add @a[tag=EtiElyAb.1Abflug] PZElyAb.1Luft 1

# Wenn der Spieler sich auf der Abschussrampe befindet und das Etikett besitzt, erhält er die Elytren und einen Schwebekraft-Effekt damit er hochgeschossen wird
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station] positioned ~ ~2 ~ run replaceitem entity @a[distance=..2,tag=EtiElyAb.1Abflug,scores={PZElyAb.1Luft=..4}] armor.chest minecraft:elytra{elytren-abschussrampe:"v1gegenstand",Enchantments:[{id:-1}],display:{Name:'{"text":"Leih-Elytren","color":"yellow","bold":true}',Lore:['"Rückgabe bei Landung"']} }
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station] positioned ~ ~2 ~ run effect give @a[distance=..2,tag=EtiElyAb.1Abflug,scores={PZElyAb.1Luft=..4}] minecraft:levitation 1 100 true

# Während des gesamten Flugs bekommt der Spieler einen Schutz-Effekt, damit er bei harten landen keinen Schaden erhält
effect give @a[tag=EtiElyAb.1Abflug] minecraft:resistance 1 255 true

# Wenn sich in der Nähe des Rüstungsständers neben der Abschussrampe ein gedroppter Rüstungsständer befindet, wird seine Anzahl auf zwei erhöht und erhält zur besseren Erkennung ein Etikett
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station] run data merge entity @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:armor_stand",Count:1b,tag:{elytren-abschussrampe:"v1gegenstand"} } },sort=nearest,limit=1] {Item:{Count:2b},Tags:["EtiElyAb.1Gegenstand"]}

# Wenn ein gedroppter Rüstungsständer in der Nähe liegt, wird das Bauwerk entfernt, die droppenden Teppiche ebenfalls und der Rüstungsständer im Bauwerk auch
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station] if entity @e[distance=..3,type=minecraft:item,tag=EtiElyAb.1Gegenstand] run fill ~-3 ~ ~-3 ~3 ~3 ~3 minecraft:air replace
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station] if entity @e[distance=..3,type=minecraft:item,tag=EtiElyAb.1Gegenstand] run kill @e[distance=..5,type=minecraft:item,nbt={Item:{id:"minecraft:white_carpet"} }]
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station] if entity @e[distance=..3,type=minecraft:item,tag=EtiElyAb.1Gegenstand] run kill @e[distance=..5,type=minecraft:item,nbt={Item:{id:"minecraft:black_carpet"} }]
execute at @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station] if entity @e[distance=..3,type=minecraft:item,tag=EtiElyAb.1Gegenstand] run kill @e[distance=..5,type=minecraft:item,nbt={Item:{id:"minecraft:ladder"} }]
execute as @e[type=minecraft:armor_stand,tag=EtiElyAb.1Station] at @s if entity @e[distance=..3,type=minecraft:item,tag=EtiElyAb.1Gegenstand] run kill @s
