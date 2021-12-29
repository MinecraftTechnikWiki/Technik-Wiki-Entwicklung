
execute if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches 1.. run scoreboard players remove VarGildSMS.1Tick PZGildSMS.1Spiel 1
execute if score VarGildSMS.1Tick PZGildSMS.1Spiel matches 0 if score VarGildSMS.1Zaehler PZGildSMS.1Spiel matches 1.. run scoreboard players remove VarGildSMS.1Zaehler PZGildSMS.1Spiel 1

execute if score VarGildSMS.1Tick PZGildSMS.1Spiel matches 0 at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld] as @a unless entity @s[team=!TMGildSMS.1Rot,team=!TMGildSMS.1Blau] positioned ~-25 ~ ~-25 run title @s[dx=50,dy=50,dz=50] actionbar ["",{"text":"Spielstart in ","color":"gray","bold":true},{"score":{"name":"VarGildSMS.1Zaehler","objective":"PZGildSMS.1Spiel"} }]
execute if score VarGildSMS.1Tick PZGildSMS.1Spiel matches 0 run scoreboard players set VarGildSMS.1Tick PZGildSMS.1Spiel 20
execute if score VarGildSMS.1Tick PZGildSMS.1Spiel matches 0.. store result bossbar gildenschlacht-minispiel:v1lobbyzeit value run scoreboard players get VarGildSMS.1Zaehler PZGildSMS.1Spiel
