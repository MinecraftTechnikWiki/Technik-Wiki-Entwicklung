
execute unless score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches -2..-1 at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Lobbyportal] if entity @p[distance=..2] run function minispiel-system:v1lobbyportal

clear @a[scores={PZMiniSS.1Tod=1..}]
execute as @a[scores={PZMiniSS.1Tod=1..}] run tellraw @a ["Minispiel-System.1: ",{"text":"[","color":"dark_gray"},{"text":"Gildenschlacht","color":"gray","bold":true},{"text":"]","color":"dark_gray"},{"text":" Spieler ","bold":true},{"selector":"@s"},{"text":" ist ausgeschieden.","bold":true} ]
scoreboard players set @a[scores={PZMiniSS.1Tod=1..}] PZMiniSS.1Verl 1
scoreboard players set @a[scores={PZMiniSS.1Tod=1..}] PZMiniSS.1Tod 0

execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] as @a unless entity @s[team=!TMMiniSS.1Rot,team=!TMMiniSS.1Blau] positioned ~-25 ~ ~-25 unless entity @s[dx=50,dy=50,dz=50] run scoreboard players set @s PZMiniSS.1Verl 1

execute at @a[scores={PZMiniSS.1Verl=1..}] run kill @e[distance=..3,type=minecraft:item,nbt={Item:{tag:{display:{Lore:["Minispiel-System.1"]} } } }]
team leave @a[scores={PZMiniSS.1Verl=1..}]
execute if entity @p[scores={PZMiniSS.1Verl=1..}] run bossbar set minispiel-system:v1teamrot players @a[team=TMMiniSS.1Rot]
execute if entity @p[scores={PZMiniSS.1Verl=1..}] run bossbar set minispiel-system:v1teamblau players @a[team=TMMiniSS.1Blau]
clear @a[scores={PZMiniSS.1Verl=1..}]
gamemode creative @a[scores={PZMiniSS.1Verl=1..}]
tellraw @a[scores={PZMiniSS.1Verl=1..}] ["Minispiel-System.1: ",{"text":"[","color":"dark_gray"},{"text":"Gildenschlacht","color":"gray","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Lobby verlassen","bold":true}]
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Lobbyportal] run teleport @a[scores={PZMiniSS.1Verl=1..}] ~ ~ ~-5
scoreboard players set @a[scores={PZMiniSS.1Verl=1..}] PZMiniSS.1Verl 0

execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Lobbyportal] run particle minecraft:portal ~ ~1 ~ 0 1 0 0.7 35 force @a[distance=..15]
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] store result score #VarMiniSS.1SpielerAnzahl PZMiniSS.1Spiel positioned ~-25 ~ ~-25 if entity @a[dx=50,dy=50,dz=50]

bossbar set minispiel-system:v1lobbyzeit players
#execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] as @a unless entity @s[team=!TMMiniSS.1Rot,team=!TMMiniSS.1Blau] positioned ~-25 ~ ~-25 run bossbar set minispiel-system:v1lobbyzeit players @s[dx=50,dy=50,dz=50]
execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] positioned ~-25 ~ ~-25 run bossbar set minispiel-system:v1lobbyzeit players @a[dx=50,dy=50,dz=50]

execute unless score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches -2..-1 if score #VarMiniSS.1SpielerAnzahl PZMiniSS.1Spiel matches 2.. run function minispiel-system:v1countdown

#execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches 0 run function minispiel-system:v1spielstart
execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches 0 at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] positioned ~-25 ~ ~-25 as @a[dx=50,dy=50,dz=50] unless entity @s[team=!TMMiniSS.1Rot,team=!TMMiniSS.1Blau] at @s run function minispiel-system:v1spielstart


execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches -2..-1 store result score #VarMiniSS.1GildeRot PZMiniSS.1Spiel if entity @a[team=TMMiniSS.1Rot]
execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches -2..-1 store result score #VarMiniSS.1GildeBlau PZMiniSS.1Spiel if entity @a[team=TMMiniSS.1Blau]

execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches -2..-1 if score #VarMiniSS.1GildeRot PZMiniSS.1Spiel matches 0 run tellraw @a[distance=..50] ["Minispiel-System.1: ",{"text":"[","color":"dark_gray"},{"text":"Gildenschlacht","color":"gray","bold":true},{"text":"]","color":"dark_gray"},{"text":" Die Gilde ","bold":true},{"selector":"@a[team=TMMiniSS.1Blau]"},{"text":" hat das Spiel gewonnen!","bold":true} ]
execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches -2..-1 if score #VarMiniSS.1GildeRot PZMiniSS.1Spiel matches 0 run tellraw @a[distance=..50] ["Minispiel-System.1: ",{"text":"[","color":"dark_gray"},{"text":"Gildenschlacht","color":"gray","bold":true},{"text":"]","color":"dark_gray"},{"text":" Die Gilde ","bold":true},{"selector":"@a[team=TMMiniSS.1Rot]"},{"text":" hat das Spiel gewonnen!","bold":true} ]

#execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches ..0 if score #VarMiniSS.1GildeRot PZMiniSS.1Spiel matches 0 at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] store result score #VarMiniSS.1SpielerAnzahl PZMiniSS.1Spiel positioned ~-25 ~ ~-25 run scoreboard players set @a[dx=50,dy=50,dz=50] PZMiniSS.1Verl 1
#execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches ..0 if score #VarMiniSS.1GildeBlau PZMiniSS.1Spiel matches 0 at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] store result score #VarMiniSS.1SpielerAnzahl PZMiniSS.1Spiel positioned ~-25 ~ ~-25 run scoreboard players set @a[dx=50,dy=50,dz=50] PZMiniSS.1Verl 1

execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches -2..-1 run bossbar set minispiel-system:v1teamrot players @a[team=TMMiniSS.1Rot]
execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches -2..-1 run bossbar set minispiel-system:v1teamblau players @a[team=TMMiniSS.1Blau]
execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches -2..-1 store result bossbar minispiel-system:v1teamrot value if entity @a[team=TMMiniSS.1Rot]
execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches -2..-1 store result bossbar minispiel-system:v1teamblau value if entity @a[team=TMMiniSS.1Blau]

execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches ..-1 if score #VarMiniSS.1GildeRot PZMiniSS.1Spiel matches 0 run scoreboard players remove #VarMiniSS.1Countdown PZMiniSS.1Spiel 1
execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches ..-1 if score #VarMiniSS.1GildeBlau PZMiniSS.1Spiel matches 0 run scoreboard players remove #VarMiniSS.1Countdown PZMiniSS.1Spiel 1

execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches ..-31 if score #VarMiniSS.1GildeRot PZMiniSS.1Spiel matches 0 run scoreboard players set @a[team=TMMiniSS.1Rot] PZMiniSS.1Verl 1
execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches ..-31 if score #VarMiniSS.1GildeRot PZMiniSS.1Spiel matches 0 run scoreboard players set @a[team=TMMiniSS.1Blau] PZMiniSS.1Verl 1

execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches ..-31 if score #VarMiniSS.1GildeRot PZMiniSS.1Spiel matches 0 run scoreboard players set #VarMiniSS.1Countdown PZMiniSS.1Spiel 30
execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches ..-31 if score #VarMiniSS.1GildeBlau PZMiniSS.1Spiel matches 0 run scoreboard players set #VarMiniSS.1Countdown PZMiniSS.1Spiel 30
