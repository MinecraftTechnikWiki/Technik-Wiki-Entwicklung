
scoreboard objectives add PZZonMa.3Betritt minecraft.custom:minecraft.leave_game ["Zonen-Markierung.3: ",{"text":"Spiel verlassen"}]
summon minecraft:armor_stand ~-20 ~ ~10 {Small:true,Marker:true,CustomNameVisible:true,CustomName:'{"text":"Werkbankhausen","color":"aqua","bold":true}',Tags:["EtiZonMa.3Alle"],ArmorItems:[{},{},{},{id:"minecraft:crafting_table",Count:1b} ] }
summon minecraft:armor_stand ~-20 ~ ~-10 {Small:true,Marker:true,CustomNameVisible:true,CustomName:'{"text":"Braustandhausen","color":"gold","bold":true}',Tags:["EtiZonMa.3Alle"],ArmorItems:[{},{},{},{id:"minecraft:brewing_stand",Count:1b} ] }
execute at @e[type=minecraft:armor_stand,tag=EtiZonMa.3Alle] run fill ~-7 ~ ~-7 ~8 ~ ~8 minecraft:smooth_stone_slab replace minecraft:air
execute at @e[type=minecraft:armor_stand,tag=EtiZonMa.3Alle] run fill ~-6 ~ ~-6 ~7 ~ ~7 minecraft:air replace minecraft:smooth_stone_slab
