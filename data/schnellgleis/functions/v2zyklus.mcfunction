
execute as @e[type=minecraft:minecart,tag=!EtiSchGl.2Lore] at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run data merge entity @s {CustomNameVisible:true,CustomName:'{"text":"Superlore"}',Tags:["EtiSchGl.2Alle","EtiSchGl.2Lore"]}

scoreboard players remove @e[type=minecraft:minecart,tag=EtiSchGl.2Lore,scores={PZSchGl.2Richt=1..}] PZSchGl.2Richt 1
execute as @e[type=minecraft:minecart,tag=EtiSchGl.2Lore,tag=!EtiSchGL.2Antrieb] at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run scoreboard players add @s PZSchGl.2Richt 1000
execute as @e[type=minecraft:minecart,tag=EtiSchGl.2Lore,tag=!EtiSchGL.2Antrieb] at @s if block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run tag @s add EtiSchGL.2Antrieb
execute as @e[type=minecraft:minecart,tag=EtiSchGl.2Lore,tag=EtiSchGL.2Antrieb] at @s unless block ~ ~-1 ~ minecraft:magenta_glazed_terracotta run tag @s remove EtiSchGL.2Antrieb
execute as @e[type=minecraft:minecart,tag=EtiSchGl.2Lore,scores={PZSchGl.2Richt=1..}] at @s at @p[distance=..1,nbt={RootVehicle:{Entity:{id:"minecraft:minecart"} } }] rotated ~90 0 if block ^1 ^1 ^ #minecraft:rails run teleport @s ^0.5 ^1 ^

execute as @e[type=minecraft:minecart,tag=EtiSchGl.2Lore,scores={PZSchGl.2Richt=1..}] at @s run title @p actionbar ["",{"text":"Antrieb: ","bold":true},{"score":{"name":"@s","objective":"PZSchGl.2Richt"}}]
