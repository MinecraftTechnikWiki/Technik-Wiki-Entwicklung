
tag @s remove EtiSchwB.1Erstellen

execute if block ^ ^5 ^20 minecraft:magenta_glazed_terracotta if block ^ ^5 ^24 minecraft:magenta_glazed_terracotta run summon minecraft:armor_stand ^ ^ ^20 {Invisible:true,NoGravity:true,ShowArms:true,Pose:{LeftArm:[90.0f,0.0f,0.0f],RightArm:[90.0f,0.0f,0.0f]},Tags:["EtiSchwB.1Alle","EtiSchwB.1Schwebebahn","EtiSchwB.1ZugMitte"]}
execute if block ^ ^5 ^20 minecraft:magenta_glazed_terracotta if block ^ ^5 ^24 minecraft:magenta_glazed_terracotta run summon minecraft:armor_stand ^ ^ ^24 {Invisible:true,NoGravity:true,ShowArms:true,Pose:{LeftArm:[90.0f,0.0f,0.0f],RightArm:[90.0f,0.0f,0.0f]},Tags:["EtiSchwB.1Alle","EtiSchwB.1Schwebebahn","EtiSchwB.1ZugAnfang"]}

execute unless block ^ ^5 ^20 minecraft:magenta_glazed_terracotta unless block ^ ^5 ^24 minecraft:magenta_glazed_terracotta run tellraw @a[distance=..10] ["Schwebebahn.1: ",{"text":"Das Schwebebahngleis ist an dieser Stelle zu kurz!","color":"red","bold":true}]
execute unless block ^ ^5 ^20 minecraft:magenta_glazed_terracotta unless block ^ ^5 ^24 minecraft:magenta_glazed_terracotta run kill @s
