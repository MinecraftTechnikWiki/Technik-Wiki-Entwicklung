
execute as @a unless entity @s[team=!PBTeamBlau,team=!PBTeamRot] run effect clear @s

execute at @e[type=minecraft:armor_stand,tag=PaintballTeamBeitreten,tag=PaintballTeamRot] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:red_concrete replace minecraft:pink_concrete
execute at @e[type=minecraft:armor_stand,tag=PaintballTeamBeitreten,tag=PaintballTeamBlau] run fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 minecraft:blue_concrete replace minecraft:light_blue_concrete

execute at @e[type=minecraft:armor_stand,tag=PaintballTeamBeitreten,tag=PaintballTeamRot] run tag @a[team=PBTeamRot] add PaintballWartebereich
execute at @e[type=minecraft:armor_stand,tag=PaintballTeamBeitreten,tag=PaintballTeamBlau] run tag @a[team=PBTeamBlau] add PaintballWartebereich

execute at @e[type=minecraft:armor_stand,tag=EtiFarbB.1Sieg] run summon minecraft:firework_rocket ~ ~1 ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4,Flicker:true,Trail:true,Colors:[I;255,16711680,16776960],FadeColors:[I;255,16711680,16776960]},{Type:1,Colors:[I;16711680,16776960],FadeColors:[I;255,16711680]}]}}}}
