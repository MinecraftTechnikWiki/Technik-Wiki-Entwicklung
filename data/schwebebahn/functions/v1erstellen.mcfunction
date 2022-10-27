
teleport @s ~ ~ ~ ~ ~

execute if block ~ ~6 ~ minecraft:magenta_glazed_terracotta run tag @s remove EtiSchwB.1Erstellen
execute if entity @s[tag=EtiSchwB.1Erstellen] run tellraw @a[distance=..10] ["Schwebebahn.1:\n",{"text":"Kein Schwebebahngleis über dem Rüstungsständer gefunden!","color":"red","bold":true}]

execute if block ~ ~6 ~ minecraft:magenta_glazed_terracotta if block ^ ^6 ^20 minecraft:magenta_glazed_terracotta if block ^ ^6 ^24 minecraft:magenta_glazed_terracotta run tag @s add EtiSchwB.1Bahn

execute if entity @s[tag=EtiSchwB.1Bahn] run summon minecraft:armor_stand ^ ^ ^20 {Invisible:true,NoGravity:true,ShowArms:true,Pose:{LeftArm:[90.0f,0.0f,0.0f],RightArm:[90.0f,0.0f,0.0f]},Tags:["EtiSchwB.1Alle","EtiSchwB.1Bahn","EtiSchwB.1ZugMitte"]}
execute if entity @s[tag=EtiSchwB.1Bahn] run summon minecraft:armor_stand ^ ^ ^24 {Invisible:true,NoGravity:true,ShowArms:true,Pose:{LeftArm:[90.0f,0.0f,0.0f],RightArm:[90.0f,0.0f,0.0f]},Tags:["EtiSchwB.1Alle","EtiSchwB.1Bahn","EtiSchwB.1ZugAnfang"]}

execute if entity @s[tag=!EtiSchwB.1Erstellen,tag=!EtiSchwB.1Bahn] run tellraw @a[distance=..10] ["Schwebebahn.1:\n",{"text":"Das Schwebebahngleis ist an dieser Stelle zu kurz!","color":"red","bold":true}]

kill @s[tag=!EtiSchwB.1Bahn]
