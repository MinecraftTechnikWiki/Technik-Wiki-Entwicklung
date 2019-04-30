
execute at @e[type=minecraft:armor_stand,tag=EtiZielA.1Erstellen] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Small:true,Invisible:true,Marker:true,Tags:["EtiZielA.1Alle"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b} ] ,Passengers:[{id:"minecraft:villager",NoAI:true,Silent:true,Invulnerable:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"Schaltfläche\",\"bold\":true}",Offers:{Recipes:[]},Tags:["EtiZielA.1Alle"],ActiveEffects:[{Id:14b,Amplifier:0b,Ambient:false,ShowParticles:false,Duration:2147483647} ] } ] }
kill @e[type=minecraft:armor_stand,tag=EtiZielA.1Erstellen]

execute as @e[type=minecraft:armor_stand,tag=EtiZielA.1Alle] at @s run teleport @s ~ ~ ~ facing entity @p[distance=..5] eyes

execute at @a[scores={PZZielA.1Klick=1..}] positioned ^ ^ ^2 if entity @e[distance=..2,type=minecraft:villager,tag=EtiZielA.1Alle] run effect clear @e[type=minecraft:armor_stand,tag=EtiZielA.1Angeklickt]
execute at @a[scores={PZZielA.1Klick=1..}] positioned ^ ^ ^2 if entity @e[distance=..2,type=minecraft:villager,tag=EtiZielA.1Alle] run tag @e[type=minecraft:armor_stand,tag=EtiZielA.1Angeklickt] remove EtiZielA.1Angeklickt
execute at @a[scores={PZZielA.1Klick=1..}] positioned ^ ^ ^2 run tag @e[distance=..2,type=minecraft:armor_stand,tag=EtiZielA.1Alle,sort=nearest,limit=1] add EtiZielA.1Angeklickt
execute as @a[scores={PZZielA.1Klick=1..}] at @s positioned ^ ^ ^2 if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiZielA.1Angeklickt,sort=nearest,limit=1] run tellraw @s ["Zielauswahl.1: ",{"text":"Der Schalter wurde aktiviert (Rechtsklick)","bold":true} ]

execute at @e[type=minecraft:armor_stand,tag=EtiZielA.1Angeklickt] run particle minecraft:block minecraft:white_concrete ~ ~1.1 ~ 0 0 0 0.1 1 normal @a[distance=..25]
effect give @e[type=minecraft:armor_stand,tag=EtiZielA.1Angeklickt] minecraft:glowing 1 1 false
scoreboard players set @a[scores={PZZielA.1Klick=1..}] PZZielA.1Klick 0
