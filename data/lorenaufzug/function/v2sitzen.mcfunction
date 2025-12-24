
#scoreboard players set @s PZLoAuf.2Wert 0
#execute if block ~ ~-1 ~ minecraft:ladder run scoreboard players set @s PZLoAuf.2Wert -1
#execute if block ~ ~ ~ #minecraft:rails if block ~ ~1 ~ minecraft:ladder run scoreboard players set @s PZLoAuf.2Wert -2

#execute if block ~ ~-1 ~ minecraft:ladder run tag @s add EtiLoAuf.2Runter
#execute if block ~ ~ ~ #minecraft:rails run tag @s remove EtiLoAuf.2Runter

#execute store success score @s PZLoAuf.2Wert if block ~-1 ~-1 ~ minecraft:ladder
#execute store success score @s[scores={PZLoAuf.2Wert=0}] PZLoAuf.2Wert if block ~1 ~-1 ~ minecraft:ladder
#execute store success score @s[scores={PZLoAuf.2Wert=0}] PZLoAuf.2Wert if block ~ ~-1 ~-1 minecraft:ladder
#execute store success score @s[scores={PZLoAuf.2Wert=0}] PZLoAuf.2Wert if block ~ ~-1 ~1 minecraft:ladder

#execute if block ~ ~ ~ #minecraft:rails run tag @s[scores={PZLoAuf.2Wert=1}] add EtiLoAuf.2NachUnten

execute if entity @s[tag=!EtiLoAuf.2Runter] if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:ladder run tag @s add EtiLoAuf.2NachUnten

tag @s[tag=EtiLoAuf.2NachUnten] add EtiLoAuf.2Fahren
tag @s[tag=EtiLoAuf.2NachUnten,tag=!EtiLoAuf.2Hoch] add EtiLoAuf.2Runter

scoreboard players set @s PZLoAuf.2Wert 0

execute at @s[tag=EtiLoAuf.2NachUnten,tag=EtiLoAuf.2Hoch] if block ~ ~ ~1 #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 1
execute at @s[tag=EtiLoAuf.2NachUnten,tag=EtiLoAuf.2Hoch] if block ~ ~ ~-1 #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 2
execute at @s[tag=EtiLoAuf.2NachUnten,tag=EtiLoAuf.2Hoch] if block ~1 ~ ~ #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 3
execute at @s[tag=EtiLoAuf.2NachUnten,tag=EtiLoAuf.2Hoch] if block ~-1 ~ ~ #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 4
execute if entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=1..4}] on vehicle run kill @s

execute if entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=1}] on vehicle at @s run teleport @s ~ ~ ~1
execute if entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=2}] on vehicle at @s run teleport @s ~ ~ ~-1
execute if entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=3}] on vehicle at @s run teleport @s ~1 ~ ~
execute if entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=4}] on vehicle at @s run teleport @s ~-1 ~ ~

#execute at @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=3}] run say teleport @s ~1 ~ ~

data merge entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=1}] {Motion:[0.0d,0.5d,2.0d]}
data merge entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=2}] {Motion:[0.0d,0.5d,-2.0d]}
data merge entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=3}] {Motion:[2.0d,0.5d,0.0d]}
data merge entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=4}] {Motion:[-2.0d,0.5d,0.0d]}

tag @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=1..4}] remove EtiLoAuf.2Fahren

#execute if entity @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=1..4}] run say huiopop

tag @s[tag=EtiLoAuf.2NachUnten,tag=EtiLoAuf.2Hoch] remove EtiLoAuf.2Hoch

tag @s[tag=EtiLoAuf.2NachUnten] remove EtiLoAuf.2NachUnten

execute if entity @s[tag=!EtiLoAuf.2Hoch] if block ~ ~1 ~ minecraft:ladder if block ~ ~ ~ #minecraft:rails run tag @s add EtiLoAuf.2NachOben

execute store success score @s PZLoAuf.2Wert if block ~ ~ ~ #minecraft:rails[shape=ascending_east]
execute store success score @s[scores={PZLoAuf.2Wert=0}] PZLoAuf.2Wert if block ~ ~ ~ #minecraft:rails[shape=ascending_north]
execute store success score @s[scores={PZLoAuf.2Wert=0}] PZLoAuf.2Wert if block ~ ~ ~ #minecraft:rails[shape=ascending_west]
execute store success score @s[scores={PZLoAuf.2Wert=0}] PZLoAuf.2Wert if block ~ ~ ~ #minecraft:rails[shape=ascending_south]

tag @s[tag=EtiLoAuf.2NachOben,tag=!EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=1}] add EtiLoAuf.2Fahren
tag @s[tag=EtiLoAuf.2NachOben,tag=!EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=1}] add EtiLoAuf.2Hoch

execute at @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=1}] if block ~ ~ ~1 #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 1
execute at @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=1}] if block ~ ~ ~-1 #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 2
execute at @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=1}] if block ~1 ~ ~ #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 3
execute at @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=1}] if block ~-1 ~ ~ #minecraft:rails run scoreboard players set @s PZLoAuf.2Wert 4

execute if entity @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=1}] on vehicle at @s run teleport @s ~ ~ ~1
execute if entity @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=2}] on vehicle at @s run teleport @s ~ ~ ~-1
execute if entity @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=3}] on vehicle at @s run teleport @s ~1 ~ ~
execute if entity @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=4}] on vehicle at @s run teleport @s ~-1 ~ ~

#execute at @s[tag=EtiLoAuf.2Hoch,scores={PZLoAuf.2Wert=3}] run say teleport @s ~1 ~ ~

data merge entity @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=1}] {Motion:[0.0d,0.5d,2.0d]}
data merge entity @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=2}] {Motion:[0.0d,0.5d,-2.0d]}
data merge entity @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=3}] {Motion:[2.0d,0.5d,0.0d]}
data merge entity @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=4}] {Motion:[-2.0d,0.5d,0.0d]}

execute store success score @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=1..4}] PZLoAuf.2Wert run tag @s remove EtiLoAuf.2Fahren

#scoreboard players set @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=1..4}] PZLoAuf.2Wert 1

tag @s[tag=EtiLoAuf.2NachOben,tag=EtiLoAuf.2Runter,scores={PZLoAuf.2Wert=1}] remove EtiLoAuf.2Runter

tag @s[tag=EtiLoAuf.2NachOben,scores={PZLoAuf.2Wert=1}] remove EtiLoAuf.2NachOben

#execute if block ~ ~ ~ #minecraft:rails[shape=ascending_east] if block ~ ~1 ~ minecraft:ladder run tag @s add EtiLoAuf.2Hoch

#execute if entity @s[tag=EtiLoAuf.2Runter,tag=EtiLoAuf.2Hoch] run say uff
#execute if entity @s[tag=EtiLoAuf.2Runter] run say runter
#execute if entity @s[tag=EtiLoAuf.2Hoch] run say hoch

execute if entity @s[tag=EtiLoAuf.2Fahren] unless entity @n[distance=..1,type=minecraft:interaction,tag=EtiLoAuf.2Sitzen] run summon minecraft:interaction ~ ~ ~ {Tags:["EtiLoAuf.2Alle","EtiLoAuf.2Sitzen"]}
ride @s[tag=EtiLoAuf.2Fahren] mount @n[distance=..1,type=minecraft:interaction,tag=EtiLoAuf.2Sitzen]
execute if entity @s[tag=!EtiLoAuf.2Fahren] on vehicle run kill @s

data modify entity @n[distance=..1,type=minecraft:interaction,tag=EtiLoAuf.2Sitzen] Tags append from entity @s Tags[]

scoreboard players set VarLoAuf.2Fahren PZLoAuf.2Wert 0
execute if entity @s[tag=EtiLoAuf.2Fahren] on vehicle at @s run function lorenaufzug:v2fahren

#execute unless entity @s[x_rotation=-30..30] run say function lorenaufzug:v2fahren
#execute if entity @s[scores={PZLoAuf.2Wert=-2..-1}] run function lorenaufzug:v2fahren

#execute if block ~ ~-1 ~ minecraft:ladder run teleport @s ~ ~ ~ ~ 90
#execute if block ~ ~ ~ #minecraft:rails if block ~ ~1 ~ minecraft:ladder run teleport @s ~ ~ ~ ~ -90

#execute if block ~ ~-1 ~ minecraft:ladder run tag @s add EtiLoAuf.2Runter
#execute if block ~ ~ ~ #minecraft:rails run tag @s remove EtiLoAuf.2Runter
#execute if block ~ ~ ~ #minecraft:rails if block ~ ~1 ~ minecraft:ladder run tag @s add EtiLoAuf.2Hoch

#execute if block ~ ~-1 ~ minecraft:ladder run say tag @s add EtiLoAuf.2Runter
#execute if block ~ ~ ~ #minecraft:rails run say tag @s remove EtiLoAuf.2Runter
#execute if block ~ ~ ~ #minecraft:rails if block ~ ~1 ~ minecraft:ladder run say tag @s add EtiLoAuf.2Hoch

#tellraw @p "\n\n\n\n\n\nstart"

#execute store result score VarSchGl.2XRichtung PZLoAuf.2Wert run data get entity @s Motion[0] 3
#execute store result score VarSchGl.2ZRichtung PZLoAuf.2Wert run data get entity @s Motion[2] 3

#execute if score VarSchGl.2XRichtung PZSchGl.2Wert matches 1.. at @s if block ~1 ~ ~ #minecraft:rails run teleport @s ~1 ~ ~
#execute if score VarSchGl.2XRichtung PZSchGl.2Wert matches ..-1 at @s if block ~-1 ~ ~ #minecraft:rails run teleport @s ~-1 ~ ~

#execute store result score @s PZLoAuf.2Wert run data get entity @s Motion[0] 100

#tellraw @p ["x: ",{score:{name:"@s",objective:"PZLoAuf.2Wert"} },"motion: ",{entity:"@s",nbt:"Motion[0]"}]

#execute if block ~1 ~ ~ #minecraft:rails run teleport @s[scores={PZLoAuf.2Wert=1..}] ~ ~ ~ 270 0
#execute if block ~-1 ~ ~ #minecraft:rails run teleport @s[scores={PZLoAuf.2Wert=..-1}] ~ ~ ~ 90 0

#execute if block ~1 ~ ~ #minecraft:rails if entity @s[scores={PZLoAuf.2Wert=1..}] run say ~1 ~ ~
#execute if block ~-1 ~ ~ #minecraft:rails if entity @s[scores={PZLoAuf.2Wert=..-1}] run say ~-1 ~ ~

#execute if block ~2 ~ ~ #minecraft:rails run teleport @s ~2 ~ ~
#execute if block ~-2 ~ ~ #minecraft:rails run teleport @s ~-2 ~ ~

#execute store result score @s PZLoAuf.2Wert run data get entity @s Motion[2] 100

#tellraw @p ["z: ",{score:{name:"@s",objective:"PZLoAuf.2Wert"} },"motion: ",{entity:"@s",nbt:"Motion[2]"}]

#execute if block ~ ~ ~1 #minecraft:rails run teleport @s[scores={PZLoAuf.2Wert=1..}] ~ ~ ~ 0 0
#execute if block ~ ~ ~-1 #minecraft:rails run teleport @s[scores={PZLoAuf.2Wert=..-1}] ~ ~ ~ 180 0

#execute if block ~ ~ ~1 #minecraft:rails if entity @s[scores={PZLoAuf.2Wert=1..}] run say ~ ~ ~1
#execute if block ~ ~ ~-1 #minecraft:rails if entity @s[scores={PZLoAuf.2Wert=..-1}] run say ~ ~ ~-1

#tellraw @p [" rotation: ",{entity:"@s",nbt:"Motion"}]

#execute at @s if block ^ ^ ^1 #minecraft:rails if block ^ ^1 ^1 minecraft:ladder run teleport @s ~ ~ ~ ~ -90
#execute at @s if block ^ ^-1 ^1 #minecraft:rails if block ^ ^-2 ^2 minecraft:ladder run teleport @s ~ ~ ~ ~ 90

#execute at @s if block ^ ^ ^1 #minecraft:rails if block ^ ^1 ^1 minecraft:ladder run say teleport @s ~ ~ ~ ~ -90
#execute at @s if block ^ ^-1 ^1 #minecraft:rails if block ^ ^-2 ^2 minecraft:ladder run say teleport @s ~ ~ ~ ~ 90

#execute at @s run setblock ^ ^2 ^2 stone

#execute at @s if block ^ ^ ^1 #minecraft:rails if block ^ ^1 ^1 minecraft:ladder run tag @s add EtiLoAuf.2Hoch
#execute at @s if block ^ ^-1 ^1 #minecraft:rails if block ^ ^-2 ^2 minecraft:ladder run tag @s add EtiLoAuf.2Runter

#execute if block ~ ~ ~2 #minecraft:rails run teleport @s ~ ~ ~2
#execute if block ~ ~ ~-2 #minecraft:rails run teleport @s ~ ~ ~-2

#execute store result score VarLoAuf.2HochRunter PZLoAuf.2Wert unless entity @s[tag=!EtiLoAuf.2Hoch,tag=!EtiLoAuf.2Runter]
