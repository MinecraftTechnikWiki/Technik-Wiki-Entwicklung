
scoreboard objectives add PZAufS.p1Reden minecraft.custom:minecraft.talked_to_villager ["Auftrag-System.erweitert.1: ",{"text":"Mit Dorfbewohner sprechen","bold":true}]
scoreboard objectives add PZAufS.p1Handel minecraft.custom:minecraft.traded_with_villager ["Auftrag-System.erweitert.1: ",{"text":"Mit dem Dorfbewohner gehandelt","bold":true}]
scoreboard objectives add PZAufS.p1Klaus dummy ["Auftrag-System.erweitert.1: ",{"text":"Dorfbewohner Klaus","bold":true}]

gamemode adventure @a[distance=..25,gamemode=!adventure]

fill ~ ~ ~-50 ~-32 ~29 ~-18 minecraft:air replace
fill ~1 ~ ~-50 ~33 ~29 ~-18 minecraft:air replace
fill ~1 ~ ~-51 ~33 ~29 ~-83 minecraft:air replace
fill ~ ~ ~-51 ~-32 ~29 ~-83 minecraft:air replace

fill ~ ~29 ~-50 ~-32 ~58 ~-18 minecraft:air replace
fill ~1 ~29 ~-50 ~33 ~58 ~-18 minecraft:air replace
fill ~1 ~29 ~-51 ~33 ~58 ~-83 minecraft:air replace
fill ~ ~29 ~-51 ~-32 ~58 ~-83 minecraft:air replace

setblock ~ ~ ~-50 minecraft:structure_block{mode:"LOAD",ignoreEntities:false,posX:-31,posY:0,posZ:0,name:"auftrag-system:vp1unten_sued_west"}
setblock ~1 ~ ~-50 minecraft:structure_block{mode:"LOAD",ignoreEntities:false,posX:0,posY:0,posZ:0,name:"auftrag-system:vp1unten_sued_ost"}
setblock ~1 ~ ~-51 minecraft:structure_block{mode:"LOAD",ignoreEntities:false,posX:0,posY:0,posZ:-31,name:"auftrag-system:vp1unten_nord_ost"}
setblock ~ ~ ~-51 minecraft:structure_block{mode:"LOAD",ignoreEntities:false,posX:-31,posY:0,posZ:-31,name:"auftrag-system:vp1unten_nord_west"}
fill ~ ~1 ~-50 ~1 ~1 ~-51 minecraft:redstone_block replace

setblock ~ ~32 ~-50 minecraft:structure_block{mode:"LOAD",ignoreEntities:false,posX:-31,posY:0,posZ:0,name:"auftrag-system:vp1oben_sued_west"}
setblock ~1 ~32 ~-50 minecraft:structure_block{mode:"LOAD",ignoreEntities:false,posX:0,posY:0,posZ:0,name:"auftrag-system:vp1oben_sued_ost"}
setblock ~1 ~32 ~-51 minecraft:structure_block{mode:"LOAD",ignoreEntities:false,posX:0,posY:0,posZ:-31,name:"auftrag-system:vp1oben_nord_ost"}
setblock ~ ~32 ~-51 minecraft:structure_block{mode:"LOAD",ignoreEntities:false,posX:-31,posY:0,posZ:-31,name:"auftrag-system:vp1oben_nord_west"}
fill ~ ~33 ~-50 ~1 ~33 ~-51 minecraft:redstone_block replace

summon minecraft:villager ~24 ~22 ~-46 {Silent:true,Invulnerable:true,CanPickUpLoot:false,PersistenceRequired:true,CustomNameVisible:true,CustomName:'{"text":"Ralf"}',Tags:["EtiAufS.p1Alle","EtiAufS.p1Ralf"],VillagerData:{level:2147483647},Profession:2,Offers:{Recipes:[]},Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"} ] }

execute at @e[type=minecraft:villager,tag=EtiAufS.p1Ralf] run fill ~-4 ~ ~-1 ~-6 ~ ~1 minecraft:grass_block replace
execute at @e[type=minecraft:villager,tag=EtiAufS.p1Ralf] run setblock ~-5 ~1 ~ minecraft:rose_bush[half=lower]
execute at @e[type=minecraft:villager,tag=EtiAufS.p1Ralf] run setblock ~-5 ~2 ~ minecraft:rose_bush[half=upper]

title @a[distance=..25] title ["",{"text":"Ein Abenteuer beginnt..."}]
title @a[distance=..25] subtitle ["",{"text":"Finde Ralf den Gärtner","color":"yellow","bold":true}]
effect give @a[distance=..25] minecraft:saturation 10 10
execute as @a[distance=..25] at @e[type=minecraft:villager,tag=EtiAufS.p1Ralf] run teleport @s ~-15 ~-8 ~
