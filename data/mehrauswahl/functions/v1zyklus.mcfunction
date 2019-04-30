
execute at @e[type=minecraft:armor_stand,tag=EtiMehrA.1Erstellen] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Small:true,Invisible:true,Marker:true,Tags:["EtiMehrA.1Alle"],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b} ] ,Passengers:[{id:"minecraft:villager",NoAI:true,Silent:true,Invulnerable:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"Schaltfläche\",\"bold\":true}",Offers:{Recipes:[]},Tags:["EtiMehrA.1Alle"],ActiveEffects:[{Id:14b,Amplifier:0b,Ambient:false,ShowParticles:false,Duration:2147483647} ] } ] }
kill @e[type=minecraft:armor_stand,tag=EtiMehrA.1Erstellen]

execute as @e[type=minecraft:armor_stand,tag=EtiMehrA.1Alle] at @s run teleport @s ~ ~ ~ facing entity @p[distance=..5] eyes

execute at @a[scores={PZMehrA.1Klick=1..}] positioned ^ ^ ^2 run tag @e[distance=..2,type=minecraft:armor_stand,tag=EtiMehrA.1Alle,sort=nearest,limit=1] add EtiMehrA.1Angeklickt
execute as @a[scores={PZMehrA.1Klick=1..}] at @s positioned ^ ^ ^2 if entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiMehrA.1Angeklickt,sort=nearest,limit=1] run tellraw @s ["Mehrauswahl.1: ",{"text":"Der Schalter wurde aktiviert (Rechtsklick)","bold":true} ]

execute at @e[type=minecraft:armor_stand,tag=EtiMehrA.1Angeklickt] run particle minecraft:block minecraft:white_concrete ~ ~1.1 ~ 0 0 0 0.1 1 normal @a[distance=..25]
effect give @e[type=minecraft:armor_stand,tag=EtiMehrA.1Angeklickt] minecraft:glowing 1 1 false
scoreboard players set @a[scores={PZMehrA.1Klick=1..}] PZMehrA.1Klick 0

execute as @e[type=minecraft:villager,tag=EtiMehrA.1Alle] store result score @s PZMehrA.1Klick run data get entity @s Health 100
execute as @e[type=minecraft:villager,tag=EtiMehrA.1Alle,scores={PZMehrA.1Klick=0..1999}] at @s at @a[distance=..3] positioned ^ ^ ^2 if entity @s[distance=..2] run tellraw @a[distance=..3] ["Mehrauswahl.1: ",{"text":" Der Schalter wurde deaktiviert (Linksklick)","bold":true}]
execute as @e[type=minecraft:villager,tag=EtiMehrA.1Alle,scores={PZMehrA.1Klick=0..1999}] at @s at @a[distance=..3] positioned ^ ^ ^2 run effect clear @e[distance=..2,type=minecraft:armor_stand,tag=EtiMehrA.1Angeklickt,sort=nearest,limit=1]
execute as @e[type=minecraft:villager,tag=EtiMehrA.1Alle,scores={PZMehrA.1Klick=0..1999}] at @s at @a[distance=..3] positioned ^ ^ ^2 run tag @e[distance=..2,type=minecraft:armor_stand,tag=EtiMehrA.1Angeklickt,sort=nearest,limit=1] remove EtiMehrA.1Angeklickt
execute as @e[type=minecraft:villager,tag=EtiMehrA.1Alle,scores={PZMehrA.1Klick=0..1999}] run data merge entity @s {Health:20.0f}
