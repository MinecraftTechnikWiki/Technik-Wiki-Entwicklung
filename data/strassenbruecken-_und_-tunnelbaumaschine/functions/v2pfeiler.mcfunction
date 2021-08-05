
execute if entity @s[scores={PZStrBTBM.2Schl=0}] if block ~ ~ ~ minecraft:water run fill ~1.5 ~ ~1.5 ~-1.5 ~ ~-1.5 minecraft:smooth_stone replace minecraft:air
execute if entity @s[scores={PZStrBTBM.2Schl=0}] if block ~ ~ ~ minecraft:lava run fill ~1.5 ~ ~1.5 ~-1.5 ~ ~-1.5 minecraft:smooth_stone replace minecraft:air
execute if entity @s[scores={PZStrBTBM.2Schl=0}] run fill ~0.5 ~ ~0.5 ~-0.5 ~ ~-0.5 minecraft:smooth_stone replace minecraft:air

execute if entity @s[scores={PZStrBTBM.2Schl=1}] if block ~ ~ ~ minecraft:water run fill ~2.5 ~ ~2.5 ~-2.5 ~ ~-2.5 minecraft:smooth_stone replace minecraft:air
execute if entity @s[scores={PZStrBTBM.2Schl=1}] if block ~ ~ ~ minecraft:lava run fill ~2.5 ~ ~2.5 ~-2.5 ~ ~-2.5 minecraft:smooth_stone replace minecraft:air
execute if entity @s[scores={PZStrBTBM.2Schl=1}] run fill ~1.5 ~ ~1.5 ~-1.5 ~ ~-1.5 minecraft:smooth_stone replace minecraft:air

execute unless block ~ ~-1 ~ minecraft:air unless block ~ ~-1 ~ minecraft:water unless block ~ ~-1 ~ minecraft:lava run kill @s

execute if block ~ ~-1 ~ minecraft:air run teleport @s ~ ~-1 ~
execute if block ~ ~-1 ~ minecraft:water run teleport @s ~ ~-1 ~
execute if block ~ ~-1 ~ minecraft:lava run teleport @s ~ ~-1 ~
