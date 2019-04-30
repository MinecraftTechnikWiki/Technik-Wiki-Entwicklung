
execute if block ~ ~ ~1 minecraft:air if block ~ ~ ~2 minecraft:command_block run teleport @s ~ ~ ~2
execute if block ~-1 ~ ~ minecraft:air if block ~-2 ~ ~ minecraft:command_block run teleport @s ~-2 ~ ~
execute if block ~ ~ ~-1 minecraft:air if block ~ ~ ~-2 minecraft:command_block run teleport @s ~ ~ ~-2
execute if block ~1 ~ ~ minecraft:air if block ~2 ~ ~ minecraft:command_block run teleport @s ~2 ~ ~

setblock ~ ~ ~ minecraft:air replace
