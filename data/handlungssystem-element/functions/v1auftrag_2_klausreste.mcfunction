
scoreboard players add @s PZHanSE.1Klaus 1
data merge entity @s[scores={PZHanSE.1Klaus=1}] {PickupDelay:120s}

execute at @s[scores={PZHanSE.1Klaus=1..120}] run particle minecraft:cloud ~ ~1 ~ 0 1 0 0 1

execute at @s[scores={PZHanSE.1Klaus=120}] align xz run summon minecraft:villager ~0.5 ~ ~0.5 {Profession:3,CustomNameVisible:true,CustomName:"{\"text\":\"Klaus\"}",Tags:["EtiHanSE.1Alle","EtiHanSE.1Klaus"],Offers:{Recipes:[]},Attributes:[{Name:"generic.movementSpeed",Base:"0f"}]}

kill @s[scores={PZHanSE.1Klaus=120..}]
