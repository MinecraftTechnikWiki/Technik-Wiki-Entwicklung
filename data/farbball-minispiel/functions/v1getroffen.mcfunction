
clear @s minecraft:snowball
scoreboard players remove @s[scores={PZFarBMi.1Leben=0..}] PZFarBMi.1Leben 1
execute if entity @s[scores={PZFarBMi.1Leben=-1..}] run particle minecraft:angry_villager ~-0.2 ~ ~-0.2 0.2 1 0.2 2 10
tellraw @s[scores={PZFarBMi.1Leben=-1}] ["",{"text":"[Farbball] ","color":"gold"},{"text":"Du bist ausgeschieden.","color":"dark_green"}]

tellraw @s[scores={PZFarBMi.1Leben=0..}] ["",{"text":"[Farbball] ","color":"gold"},{"text":"Du hast noch ","color":"dark_green"},{"score":{"name":"@s","objective":"PZFarBMi.1Leben"},"color":"gold"},{"text":" verbleibende Leben.","color":"dark_green"}]

execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Startpunkt,tag=EtiFarBMi.1Rot,sort=nearest,limit=1] run spreadplayers ~ ~ 1 3 false @s[team=TMFarBMi.1Rot,scores={PZFarBMi.1Leben=0..}]
execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Startpunkt,tag=EtiFarBMi.1Blau,sort=nearest,limit=1] run spreadplayers ~ ~ 1 3 false @a[team=TMFarBMi.1Blau,scores={PZFarBMi.1Leben=0..}]

teleport @s[team=TMFarBMi.1Rot,scores={PZFarBMi.1Leben=..-1}] @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Beitreten,tag=EtiFarBMi.1Rot,sort=nearest,limit=1]
teleport @a[team=TMFarBMi.1Blau,scores={PZFarBMi.1Leben=..-1}] @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Beitreten,tag=EtiFarBMi.1Blau,sort=nearest,limit=1]

execute at @s[scores={PZFarBMi.1Leben=0..}] run summon minecraft:item ~ ~ ~ {PickupDelay:0s,Item:{id:"minecraft:snowball",Count:64b,tag:{EigFarBMi.1Alle:true,Enchantments:[{id:-1}],display:{"Name":'{"text":"Farbball"}'} } } }

scoreboard players set @s[scores={PZFarBMi.1Leben=..-1}] PZFarBMi.1Leben 0
tag @s remove EtiFarBMi.1Getroffen
