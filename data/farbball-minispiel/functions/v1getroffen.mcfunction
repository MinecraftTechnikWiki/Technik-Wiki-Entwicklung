
clear @s minecraft:snowball
scoreboard players remove @s[scores={PBLeben=0..}] PBLeben 1
execute if entity @s[scores={PBLeben=-1..}] run particle angry_villager ~-0.2 ~ ~-0.2 0.2 1 0.2 2 10
tellraw @s[scores={PBLeben=-1}] ["",{"text":"[Paintball] ","color":"gold"},{"text":"Du bist ausgeschieden.","color":"dark_green"}]

tellraw @s[scores={PBLeben=0..}] ["",{"text":"[Paintball] ","color":"gold"},{"text":"Du hast noch ","color":"dark_green"},{"score":{"name":"@s","objective":"PBLeben"},"color":"gold"},{"text":" verbleibende Leben.","color":"dark_green"}]

execute at @e[type=minecraft:armor_stand,tag=PaintballTeamStartpunkt,tag=PaintballTeamRot,sort=nearest,limit=1] run spreadplayers ~ ~ 1 3 false @s[team=PBTeamRot,scores={PBLeben=0..}]
execute at @e[type=minecraft:armor_stand,tag=PaintballTeamStartpunkt,tag=PaintballTeamBlau,sort=nearest,limit=1] run spreadplayers ~ ~ 1 3 false @a[team=PBTeamBlau,scores={PBLeben=0..}]

teleport @s[team=PBTeamRot,scores={PBLeben=..-1}] @e[type=minecraft:armor_stand,tag=PaintballTeamBeitreten,tag=PaintballTeamRot,sort=nearest,limit=1]
teleport @a[team=PBTeamBlau,scores={PBLeben=..-1}] @e[type=minecraft:armor_stand,tag=PaintballTeamBeitreten,tag=PaintballTeamBlau,sort=nearest,limit=1]

execute at @s[scores={PBLeben=0..}] run summon minecraft:item ~ ~ ~ {PickupDelay:0s,Item:{id:"minecraft:snowball",Count:64b,tag:{Enchantments:[{id:-1}],display:{"Name":'{"text":"Paintball"}'}}}}

scoreboard players set @s[scores={PBLeben=..-1}] PBLeben 0
tag @s remove PaintballGetroffen
