
execute if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches 1.. run scoreboard players remove #VarMiniSS.1TickCountdown PZMiniSS.1Spiel 1
execute if score #VarMiniSS.1TickCountdown PZMiniSS.1Spiel matches 0 if score #VarMiniSS.1Countdown PZMiniSS.1Spiel matches 1.. run scoreboard players remove #VarMiniSS.1Countdown PZMiniSS.1Spiel 1
#execute if score #VarMiniSS.1TickCountdown PZMiniSS.1Spiel matches 0 at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] as @a unless entity @s[team=!TMMiniSS.1Rot,team=!TMMiniSS.1Blau] positioned ~-25 ~ ~-25 run tellraw @s[dx=50,dy=50,dz=50] ["Minispiel-System.1: ",{"text":"Spielstart in ","color":"gray","bold":true},{"score":{"name":"#VarMiniSS.1Countdown","objective":"PZMiniSS.1Spiel"} }]
execute if score #VarMiniSS.1TickCountdown PZMiniSS.1Spiel matches 0 at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] as @a unless entity @s[team=!TMMiniSS.1Rot,team=!TMMiniSS.1Blau] positioned ~-25 ~ ~-25 run title @s[dx=50,dy=50,dz=50] actionbar ["",{"text":"Spielstart in ","color":"gray","bold":true},{"score":{"name":"#VarMiniSS.1Countdown","objective":"PZMiniSS.1Spiel"} }]
execute if score #VarMiniSS.1TickCountdown PZMiniSS.1Spiel matches 0 run scoreboard players set #VarMiniSS.1TickCountdown PZMiniSS.1Spiel 20
execute if score #VarMiniSS.1TickCountdown PZMiniSS.1Spiel matches 0.. store result bossbar minispiel-system:v1lobbyzeit value run scoreboard players get #VarMiniSS.1Countdown PZMiniSS.1Spiel

#execute at @e[type=minecraft:armor_stand,tag=EtiMiniSS.1Spielfeld] run tellraw @a[distance=..50]
