# Wenn der Spieler in der Lore sich in eine beliebige Richtung bewegen will, so wird deren Bewegung benutzt und in den Copiloten übertragen.
execute if entity @p[tag=EtiFlugz.2Steuer] store result entity @e[type=minecraft:villager,tag=EtiFlugz.2PilotenSteuer,limit=1,sort=nearest] Motion[0] double 0.00175 run data get entity @s Motion[0] 10000
execute if entity @p[tag=EtiFlugz.2Steuer] store result entity @e[type=minecraft:villager,tag=EtiFlugz.2PilotenSteuer,limit=1,sort=nearest] Motion[2] double 0.00175 run data get entity @s Motion[2] 10000

# Wenn der Spieler in der Lore sitzt, wird der Copilot von der Rotation genauso ausgerichtet wie der Spieler. Anschließend wird der Spieler 30 Meter genau hinter ihm in seiner Blickrichtung teleportiert. So erhält der Spieler die dritte-Person-Ansicht.
execute as @e[type=minecraft:villager,tag=EtiFlugz.2PilotenSteuer,sort=nearest,limit=1] positioned as @s rotated as @p[team=TMFlugz.2Pilot] run teleport @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=EtiFlugz.2Halter,sort=nearest,limit=1] at @e[type=minecraft:villager,tag=EtiFlugz.2PilotenSteuer,sort=nearest,limit=1] run teleport @s ^ ^0.5 ^-30
