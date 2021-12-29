
execute as @a unless entity @s[team=!TMFarBMi.1Blau,team=!TMFarBMi.1Rot] run effect clear @s

execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Beitreten,tag=EtiFarBMi.1Rot] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:red_concrete replace minecraft:pink_concrete
execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Beitreten,tag=EtiFarBMi.1Blau] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:blue_concrete replace minecraft:light_blue_concrete

execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Beitreten,tag=EtiFarBMi.1Rot] run tag @a[team=TMFarBMi.1Rot] add EtiFarBMi.1Warten
execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Beitreten,tag=EtiFarBMi.1Blau] run tag @a[team=TMFarBMi.1Blau] add EtiFarBMi.1Warten

execute at @e[type=minecraft:armor_stand,tag=EtiFarBMi.1Sieg] run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4,Flicker:true,Trail:true,Colors:[I;255,16711680,16776960],FadeColors:[I;255,16711680,16776960]},{Type:1,Colors:[I;16711680,16776960],FadeColors:[I;255,16711680] } ] } } } }
