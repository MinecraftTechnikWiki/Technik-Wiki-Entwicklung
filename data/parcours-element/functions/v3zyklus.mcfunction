




execute as @e[type=minecraft:armor_stand,tag=EtiParEl.3Bewegen] at @s run teleport @s ^ ^ ^0.1

execute if entity @e[type=minecraft:armor_stand,tag=EtiParEl.3Bewegen] run scoreboard players add @e[tag=EtiParEl.3Block] PZParEl.3Wert 1

execute at @e[type=minecraft:armor_stand,tag=EtiParEl.3Bewegen] as @e[tag=EtiParEl.3Block,scores={PZParEl.3Wert=31..},sort=nearest,limit=1] store success score @s PZParEl.3Wert run teleport @s ~ ~ ~





execute as @e[type=minecraft:armor_stand,tag=EtiParEl.3Erstellen] at @s run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiParEl.3Alle","EtiParEl.3Beginn"],Passengers:[{id:"minecraft:shulker",Silent:true,NoAI:true,Tags:["EtiParEl.3Alle"],DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:false},{Id:10b,Amplifier:10b,Duration:2147483647,ShowParticles:false}]},{id:"minecraft:falling_block",Time:-2147483648,BlockState:{Name:"minecraft:green_wool"},Tags:["EtiParEl.3Alle"]} ] }

execute as @e[type=minecraft:armor_stand,tag=EtiParEl.3Erstellen] at @s run summon minecraft:armor_stand ^1 ^ ^ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiParEl.3Alle","EtiParEl.3Block"],Passengers:[{id:"minecraft:shulker",Silent:true,NoAI:true,Tags:["EtiParEl.3Alle"],DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:false},{Id:10b,Amplifier:10b,Duration:2147483647,ShowParticles:false}]},{id:"minecraft:falling_block",Time:-2147483648,BlockState:{Name:"minecraft:lime_wool"},Tags:["EtiParEl.3Alle"]} ] }

execute if entity @e[type=minecraft:armor_stand,tag=EtiParEl.3Erstellen] run scoreboard players add @e[tag=EtiParEl.3Block] PZParEl.3Wert 10

execute as @e[type=minecraft:armor_stand,tag=EtiParEl.3Erstellen] at @s run summon minecraft:armor_stand ^2 ^ ^ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiParEl.3Alle","EtiParEl.3Block"],Passengers:[{id:"minecraft:shulker",Silent:true,NoAI:true,Tags:["EtiParEl.3Alle"],DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:false},{Id:10b,Amplifier:10b,Duration:2147483647,ShowParticles:false}]},{id:"minecraft:falling_block",Time:-2147483648,BlockState:{Name:"minecraft:lime_wool"},Tags:["EtiParEl.3Alle"]} ] }

execute if entity @e[type=minecraft:armor_stand,tag=EtiParEl.3Erstellen] run scoreboard players add @e[tag=EtiParEl.3Block] PZParEl.3Wert 10

execute as @e[type=minecraft:armor_stand,tag=EtiParEl.3Erstellen] at @s run summon minecraft:armor_stand ^3 ^ ^ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiParEl.3Alle","EtiParEl.3Ende"],Passengers:[{id:"minecraft:shulker",Silent:true,NoAI:true,Tags:["EtiParEl.3Alle"],DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:false},{Id:10b,Amplifier:10b,Duration:2147483647,ShowParticles:false}]},{id:"minecraft:falling_block",Time:-2147483648,BlockState:{Name:"minecraft:green_wool"},Tags:["EtiParEl.3Alle"]} ] }

kill @e[type=minecraft:armor_stand,tag=EtiParEl.3Erstellen]

execute as @a[nbt={OnGround:true}] at @s unless block ~ ~-1 ~ minecraft:air run tag @e[type=minecraft:armor_stand,tag=EtiParEl.3Beginn,limit=1] add EtiParEl.3Bewegen
