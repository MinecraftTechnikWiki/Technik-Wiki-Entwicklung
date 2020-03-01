# Je nach dem wo sich ein Befehlsblock befindet, wird der Rüstungsständer in diese Richtung teleportiert.
execute if block ~ ~ ~1 minecraft:air if block ~ ~ ~2 minecraft:command_block run teleport @s ~ ~ ~2
execute if block ~-1 ~ ~ minecraft:air if block ~-2 ~ ~ minecraft:command_block run teleport @s ~-2 ~ ~
execute if block ~ ~ ~-1 minecraft:air if block ~ ~ ~-2 minecraft:command_block run teleport @s ~ ~ ~-2
execute if block ~1 ~ ~ minecraft:air if block ~2 ~ ~ minecraft:command_block run teleport @s ~2 ~ ~

# Anschließend wird der Befehlsblock durch Luft ersetzt.
setblock ~ ~ ~ minecraft:air replace
