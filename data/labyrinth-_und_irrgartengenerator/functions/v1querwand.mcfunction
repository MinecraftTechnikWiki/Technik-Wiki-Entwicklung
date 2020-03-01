# Von der Position der Wand-Rüstungsständer wird der aktuelle Gang blockiert und gleichzeitig werden Zwischenwege eingebaut.
fill ^1 ^1 ^ ^1 ^2 ^-2 minecraft:air replace
fill ^-1 ^1 ^ ^-1 ^2 ^-2 minecraft:air replace
fill ^ ^1 ^ ^ ^2 ^-2 minecraft:quartz_block replace

# Der Wand-Rüstungsständer wird sechs Meter von seiner Blickrichtung nach hinten teleportiert.
teleport @s ^ ^ ^-6 ~ ~
