
execute at @a[tag=!EtiSprS.2Sprache] run summon minecraft:rabbit ~ 0 ~ {Invulnerable:true,NoGravity:true,Tags:["EtiSprS.2Alle"],DeathLootTable:"minecraft:empty"}
scoreboard players set @a[tag=!EtiSprS.2Sprache] PZSprS.2Sprache 0

execute as @a[tag=!EtiSprS.2Sprache] at @s positioned ~ 0 ~ if entity @e[distance=..1,type=minecraft:rabbit,tag=EtiSprS.2Alle] run function sprachen-sensor:v2sprache

tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=0..}] ["Sprachen-Sensor.2: "]

tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=0}] ["",{"text":"Die Sprache konnte leider nicht erkannt werden","color":"red","bold":true} ]
tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=1}] ["",{"text":"Diese Welt wird in deutscher Sprache gespielt","bold":true} ]
tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=2}] ["",{"text":"This world is played in English","bold":true} ]
tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=3}] ["",{"text":"Ce monde se joue en français","bold":true} ]
tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=4}] ["",{"text":"Este mundo se juega en español","bold":true} ]
tellraw @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=5}] ["",{"text":"Questo mondo è suonato in italiano","bold":true} ]

kill @e[tag=EtiSprS.2Alle]
tag @a[tag=!EtiSprS.2Sprache,scores={PZSprS.2Sprache=0..}] add EtiSprS.2Sprache
