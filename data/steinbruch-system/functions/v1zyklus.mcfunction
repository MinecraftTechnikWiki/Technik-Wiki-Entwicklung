
tag @a[nbt={SelectedItem:{tag:{EigStBrSy.1Bohrer:true} } }] add EtiStBrSy.1Ausgewaehlt

scoreboard players set @a[tag=EtiStBrSy.1Ausgewaehlt,tag=!EtiStBrSy.1Auswahl] PZStBrSy.1Ausl -99

execute as @a[tag=EtiStBrSy.1Ausgewaehlt] unless entity @s[scores={PZStBrSy.1Ausl=0}] run function steinbruch-system:v1ausloeser

tag @a[tag=EtiStBrSy.1Ausgewaehlt,tag=!EtiStBrSy.1Auswahl] add EtiStBrSy.1Auswahl
tag @a[tag=!EtiStBrSy.1Ausgewaehlt,tag=EtiStBrSy.1Auswahl] remove EtiStBrSy.1Auswahl

tag @a[tag=EtiStBrSy.1Ausgewaehlt] remove EtiStBrSy.1Ausgewaehlt

execute as @e[type=minecraft:armor_stand,tag=EtiStBrSy.1Erstellen] at @s run function steinbruch-system:v1erstellen

scoreboard players add VarStBrSy.1Tick PZStBrSy.1Ausl 1
execute if score VarStBrSy.1Tick PZStBrSy.1Ausl matches 200.. at @e[type=minecraft:armor_stand,tag=EtiStBrSy.1Bohrer] positioned ~ ~-1 ~ unless block ~ ~ ~ minecraft:bedrock run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:air destroy
execute if score VarStBrSy.1Tick PZStBrSy.1Ausl matches 200.. as @e[type=minecraft:armor_stand,tag=EtiStBrSy.1Bohrer] at @s if block ~ ~-1 ~ minecraft:sandstone run kill @s
execute if score VarStBrSy.1Tick PZStBrSy.1Ausl matches 200.. as @e[type=minecraft:armor_stand,tag=EtiStBrSy.1Bohrer] at @s unless block ~ ~-1 ~ minecraft:sandstone run teleport @s ~ ~-1 ~
execute if score VarStBrSy.1Tick PZStBrSy.1Ausl matches 200.. run scoreboard players set VarStBrSy.1Tick PZStBrSy.1Ausl 0
