
tag @s[tag=middle] remove middle

scoreboard players add @s[tag=forward] distance 1
scoreboard players remove @s[tag=backward] distance 1

execute if entity @e[distance=..0.1,type=minecraft:armor_stand,tag=center,sort=nearest,limit=1] run tag @s[tag=!middle] add middle
scoreboard players remove @s[tag=middle] distance 1
tag @s[tag=middle] remove forward

execute if entity @s[tag=backward,scores={distance=0}] rotated as @s run teleport @s ~ ~ ~ ~-90 ~
tag @s[tag=backward,scores={distance=0}] remove backward
execute if entity @s[tag=backward,scores={distance=1..}] positioned ^ ^ ^-0.2 run function rotation:rotieren

execute if entity @s[tag=forward] positioned ^ ^ ^0.2 run function rotation:rotieren

tag @s[tag=middle] add backward
execute if entity @s[tag=middle] rotated ~-90 ~ positioned ^ ^ ^-0.2 run function rotation:rotieren
