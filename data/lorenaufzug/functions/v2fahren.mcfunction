#execute if score VarLoAuf.2HochRunter PZLoAuf.2Wert matches 1 store result score @s PZLoAuf.2Wert if block ~ ~ ~ #minecraft:rails

#execute at @s[tag=EtiLoAuf.2Runter] run say runter
#execute at @s[tag=EtiLoAuf.2Hoch] run say hoch

execute if entity @s[tag=EtiLoAuf.2Runter] run teleport @s ~ ~-0.8 ~
execute if entity @s[tag=EtiLoAuf.2Hoch] run teleport @s ~ ~0.5 ~

scoreboard players add VarLoAuf.2Fahren PZLoAuf.2Wert 1
execute if score VarLoAuf.2Fahren PZLoAuf.2Wert matches ..5 at @s if block ~ ~ ~ minecraft:ladder run function lorenaufzug:v2fahren


#execute if entity @s[tag=EtiLoAuf.2Runter] on vehicle at @s run teleport @s ~ ~-0.8 ~
#execute if entity @s[tag=EtiLoAuf.2Hoch] on vehicle at @s run teleport @s ~ ~0.5 ~

#scoreboard players add VarLoAuf.2Fahren PZLoAuf.2Wert 1
#execute if score VarLoAuf.2Fahren PZLoAuf.2Wert matches ..5 if entity @s[tag=EtiLoAuf.2Fahren] on vehicle at @s if block ~ ~ ~ minecraft:ladder on passengers run function lorenaufzug:v2fahren

#execute at @s unless block ~ ~ ~ minecraft:ladder run tag @s remove EtiLoAuf.2Fahren

#execute at @s[scores={PZLoAuf.2Wert=-1}] run teleport @s ~ ~-0.8 ~
#execute at @s[scores={PZLoAuf.2Wert=-2}] run teleport @s ~ ~1 ~

#execute at @s[tag=EtiLoAuf.2Runter] if block ~ ~1 ~ minecraft:ladder run say teleport @s ~ ~-0.8 ~
#execute at @s[tag=EtiLoAuf.2Hoch] if block ~ ~1 ~ minecraft:ladder run say teleport @s ~ ~1 ~

#execute at @s[tag=EtiLoAuf.2Hoch] if block ~ ~ ~1 #minecraft:rails run teleport @s ~ ~ ~1
#execute at @s[tag=EtiLoAuf.2Hoch] if block ~ ~ ~-1 #minecraft:rails run teleport @s ~ ~ ~-1
#execute at @s[tag=EtiLoAuf.2Hoch] if block ~1 ~ ~ #minecraft:rails run teleport @s ~1 ~ ~
#execute at @s[tag=EtiLoAuf.2Hoch] if block ~-1 ~ ~ #minecraft:rails run teleport @s ~-1 ~ ~

#execute at @s[tag=EtiLoAuf.2Hoch] align y if block ~ ~1 ~1 #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 1
#execute at @s[tag=EtiLoAuf.2Hoch] align y if block ~ ~1 ~-1 #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 2
#execute at @s[tag=EtiLoAuf.2Hoch] align y if block ~1 ~1 ~ #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 3
#execute at @s[tag=EtiLoAuf.2Hoch] align y if block ~-1 ~1 ~ #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 4

#execute at @s[scores={PZLoAuf.2Wert=-2}] align y if block ~ ~1 ~1 #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 1
#execute at @s[scores={PZLoAuf.2Wert=-2}] align y if block ~ ~1 ~-1 #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 2
#execute at @s[scores={PZLoAuf.2Wert=-2}] align y if block ~1 ~1 ~ #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 3
#execute at @s[scores={PZLoAuf.2Wert=-2}] align y if block ~-1 ~1 ~ #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 4
#data merge entity @s[scores={PZLoAuf.2Wert=1}] {Motion:[0.0d,0.5d,2.0d]}
#data merge entity @s[scores={PZLoAuf.2Wert=2}] {Motion:[0.0d,0.5d,-2.0d]}
#data merge entity @s[scores={PZLoAuf.2Wert=3}] {Motion:[2.0d,0.5d,0.0d]}
#data merge entity @s[scores={PZLoAuf.2Wert=4}] {Motion:[-2.0d,0.5d,0.0d]}

#execute at @s[tag=EtiLoAuf.2Hoch] align y if block ~-1 ~1 ~ #minecraft:rails run setblock ~-1 ~1 ~ stone

#execute at @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=1}] run teleport @s ~ ~0.8 ~1
#execute at @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=2}] run teleport @s ~ ~0.8 ~-1
#execute at @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=3}] run teleport @s ~1 ~0.8 ~
#execute at @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=4}] run teleport @s ~-1 ~0.8 ~

#data merge entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=1}] {Motion:[0.0d,0.5d,2.0d]}
#data merge entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=2}] {Motion:[0.0d,0.5d,-2.0d]}
#data merge entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=3}] {Motion:[2.0d,0.5d,0.0d]}
#data merge entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=4}] {Motion:[-2.0d,0.5d,0.0d]}

#tag @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=1..4}] remove EtiLoAuf.2Hoch

#tellraw @p ["jump: ",{"score":{"name": "@s","objective": "PZLoAuf.2Wert"} }]

#scoreboard players set @s PZLoAuf.2Wert 0
#execute at @s if block ^ ^ ^1 minecraft:ladder run scoreboard players set @s PZLoAuf.2Wert 2
#execute at @s[scores={PZLoAuf.2Wert=2}] run teleport @s ^ ^ ^1 ~ ~

#execute at @s[scores={PZLoAuf.2Wert=0}] store result score @s PZLoAuf.2Wert if block ^ ^ ^1 #minecraft:rails
#execute at @s[scores={PZLoAuf.2Wert=0}] store result score @s PZLoAuf.2Wert if block ^ ^-1 ^1 #minecraft:rails
#execute at @s[scores={PZLoAuf.2Wert=1}] run teleport @s ^ ^ ^1 ~ 0
#say hi

#execute if score VarLoAuf.2Fahren PZLoAuf.2Wert matches ..5 at @s[scores={PZLoAuf.2Wert=-2..-1}] if block ~ ~ ~ minecraft:ladder run function lorenaufzug:v2fahren
