
kill @e[tag=EtiSamS.2KeinSammelEi]

execute as @a[scores={PZSamS.2Wurf=1..}] at @s if entity @e[distance=..2,type=minecraft:item,tag=EtiSamS.2SammelEi,sort=nearest,limit=1] run tag @s add EtiSamS.2SammelEiZuNah
execute at @a[tag=EtiSamS.2SammelEiZuNah,scores={PZSamS.2Wurf=1..}] if entity @e[distance=..2,type=minecraft:item,tag=EtiSamS.2SammelEi,sort=nearest,limit=1] run kill @e[distance=..2,type=minecraft:item,tag=!EtiSamS.2SammelEi,sort=nearest,limit=1]
execute as @a[tag=EtiSamS.2SammelEiZuNah,scores={PZSamS.2Wurf=1..}] at @s if entity @e[type=minecraft:item,tag=EtiSamS.2SammelEi,distance=..2,sort=nearest,limit=1] run tellraw @s ["Sammel-System.2 ",{"text":"Dieses Sammel-Ei wurde von ","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecraft:item,tag=EtiSamS.2EiNummer,distance=..2,sort=nearest,limit=1]","objective":"PZSamS.2Anz"} },{"text":" Spielern entdeckt","bold":true,"color":"yellow"} ]
execute as @a[tag=!EtiSamS.2SammelEiZuNah,scores={PZSamS.2Wurf=1..}] at @s run function sammel-system:v2erstellen
tag @a[tag=EtiSamS.2SammelEiZuNah,scores={PZSamS.2Wurf=1..}] remove EtiSamS.2SammelEiZuNah
scoreboard players set @a[scores={PZSamS.2Wurf=1..}] PZSamS.2Wurf 0

execute as @p[tag=!EtiSamS.2Nummer] store result score @s PZSamS.2Nr run scoreboard players add #VarSamS.2SpielerNummer PZSamS.2Nr 1
tag @p[tag=!EtiSamS.2Nummer] add EtiSamS.2Nummer

execute as @e[type=minecraft:item,tag=EtiSamS.2SammelEi] at @s run function sammel-system:v2sammeln

execute at @e[type=minecraft:item,tag=EtiSamS.2SammelEi] as @p[distance=..2,tag=!EtiSamS.2MaxEierGefunden] if score @s PZSamS.2Anz = #VarSamS.2Max PZSamS.2Anz run tellraw @a ["Sammel-System.2: ",{"text":"Der Spieler ","bold":true},{"selector":"@s"},{"text":" hat alle ","bold":true},{"score":{"name":"#VarSamS.2Max","objective":"PZSamS.2Anz"} },{"text":" Sammel-Eier gefunden!","bold":true} ]
execute at @e[type=minecraft:item,tag=EtiSamS.2SammelEi] as @p[distance=..2,tag=!EtiSamS.2MaxEierGefunden] if score @s PZSamS.2Anz = #VarSamS.2Max PZSamS.2Anz run tag @s add EtiSamS.2MaxEierGefunden

execute as @a[tag=EtiSamS.2BeimEi] at @s unless entity @e[distance=..2,type=minecraft:item,tag=EtiSamS.2SammelEi] run tag @s remove EtiSamS.2BeimEi
