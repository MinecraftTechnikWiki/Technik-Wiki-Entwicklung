
scoreboard players add @s PZAufS.p1Klaus 1
data merge entity @s[scores={PZAufS.p1Klaus=1}] {PickupDelay:120s}

execute at @s[scores={PZAufS.p1Klaus=1..120}] run particle minecraft:cloud ~ ~1 ~ 0 1 0 0 1

execute at @s[scores={PZAufS.p1Klaus=120}] run setblock ~1 ~ ~ minecraft:smithing_table replace

execute at @s[scores={PZAufS.p1Klaus=120}] align xz run summon minecraft:villager ~0.5 ~ ~0.5 {Profession:3,CustomNameVisible:true,CustomName:'{"text":"Klaus"}',Tags:["EtiAufS.p1Alle","EtiAufS.p1Klaus"],VillagerData:{level:2147483647},Offers:{Recipes:[]},Attributes:[{Name:"generic.movementSpeed",Base:"0f"}]}

kill @s[scores={PZAufS.p1Klaus=120..}]
