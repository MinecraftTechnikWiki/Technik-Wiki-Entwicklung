
execute if score VarGildSMS.1Beenden PZGildSMS.1Wert matches 16 if score VarGildSMS.1Befristet PZGildSMS.1Wert matches ..599 if score VarGildSMS.1Team1 PZGildSMS.1Wert matches 0 if score VarGildSMS.1Team2 PZGildSMS.1Wert matches 1.. run tellraw @a[tag=EtiGildSMS.1Spielen] ["Gildenschlacht-Minispiel.1:\n",{"storage":"gildenschlacht-minispiel:v1daten","nbt":"\"EigGildSMS.1Name\"","interpret":true},{"text":"Die blaue Gilde bestehend aus ","color":"blue","bold":true},{"selector":"@a[team=TMGildSMS.1Team2]","color":"blue","bold":true},{"text":" hat das Spiel gewonnen!","color":"gold","bold":true}]

execute if score VarGildSMS.1Beenden PZGildSMS.1Wert matches 16 if score VarGildSMS.1Befristet PZGildSMS.1Wert matches ..599 if score VarGildSMS.1Team2 PZGildSMS.1Wert matches 0 if score VarGildSMS.1Team1 PZGildSMS.1Wert matches 1.. run tellraw @a[tag=EtiGildSMS.1Spielen] ["Gildenschlacht-Minispiel.1:\n",{"storage":"gildenschlacht-minispiel:v1daten","nbt":"\"EigGildSMS.1Name\"","interpret":true},{"text":"Die rote Gilde bestehend aus ","color":"red","bold":true},{"selector":"@a[team=TMGildSMS.1Team1]","color":"red","bold":true},{"text":" hat das Spiel gewonnen!","color":"gold","bold":true}]

execute if score VarGildSMS.1Beenden PZGildSMS.1Wert matches 16 if score VarGildSMS.1Befristet PZGildSMS.1Wert matches ..599 if score VarGildSMS.1Team1 PZGildSMS.1Wert matches 0 if score VarGildSMS.1Team2 PZGildSMS.1Wert matches 0 run tellraw @a[tag=EtiGildSMS.1Spielen] ["Gildenschlacht-Minispiel.1:\n",{"storage":"gildenschlacht-minispiel:v1daten","nbt":"\"EigGildSMS.1Name\"","interpret":true},{"text":"Unentschieden!","color":"gold","bold":true}]

execute if score VarGildSMS.1Beenden PZGildSMS.1Wert matches 16 if score VarGildSMS.1Befristet PZGildSMS.1Wert matches 600.. run tellraw @a[tag=EtiGildSMS.1Spielen] ["Gildenschlacht-Minispiel.1:\n",{"storage":"gildenschlacht-minispiel:v1daten","nbt":"\"EigGildSMS.1Name\"","interpret":true},{"text":"Zeit ist abgelaufen!","color":"red","bold":true}]

execute if score VarGildSMS.1Beenden PZGildSMS.1Wert matches 16 if score VarGildSMS.1Befristet PZGildSMS.1Wert matches 600.. run playsound minecraft:entity.player.levelup master @p[tag=EtiGildSMS.1Spielen,tag=!EtiGildSMS.1Verloren] ~ ~ ~

execute if score VarGildSMS.1Beenden PZGildSMS.1Wert matches 16 if score VarGildSMS.1Befristet PZGildSMS.1Wert matches 600.. run playsound minecraft:entity.wither.death master @a[tag=EtiGildSMS.1Spielen,tag=EtiGildSMS.1Verloren] ~ ~ ~

execute if score VarGildSMS.1Beenden PZGildSMS.1Wert matches 16 if score VarGildSMS.1Befristet PZGildSMS.1Wert matches 600.. if score VarGildSMS.1Team1 PZGildSMS.1Wert matches 0 if score VarGildSMS.1Team2 PZGildSMS.1Wert matches 0 run playsound minecraft:block.note_block.bell master @a[tag=EtiGildSMS.1Spielen] ~ ~ ~ 3 0

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run effect give @a[distance=..100,tag=EtiGildSMS.1Spielen] minecraft:resistance infinite 10 true
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Spielfeld,sort=nearest,limit=1] run effect give @a[distance=..100,tag=EtiGildSMS.1Spielen] minecraft:instant_health infinite 10 true

execute store result score VarGildSMS.1IstNull PZGildSMS.1Wert run scoreboard players remove VarGildSMS.1Beenden PZGildSMS.1Wert 1
scoreboard players operation VarGildSMS.1IstNull PZGildSMS.1Wert %= KonstGildSMS.1FUENF PZGildSMS.1Wert

execute if score VarGildSMS.1Beenden PZGildSMS.1Wert matches 1.. run return run execute if score VarGildSMS.1IstNull PZGildSMS.1Wert matches 0 run tellraw @a[tag=EtiGildSMS.1Spielen] ["Gildenschlacht-Minispiel.1:\n",{"storage":"gildenschlacht-minispiel:v1daten","nbt":"\"EigGildSMS.1Name\"","interpret":true},{"text":"Spiel endet in ","color":"yellow","bold":true},{"score":{"name":"VarGildSMS.1Beenden","objective":"PZGildSMS.1Wert"},"color":"dark_purple","bold":true},{"text":" Sekunden!","bold":true}]

execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Beute,sort=nearest,limit=6] run data remove block ~ ~ ~ Items
execute at @e[type=minecraft:marker,tag=EtiGildSMS.1Beute,sort=nearest,limit=6] run data modify block ~ ~ ~ LootTable set value "gildenschlacht-minispiel:v1beute"

scoreboard players set VarGildSMS.1Spielen PZGildSMS.1Wert 0

title @a[tag=EtiGildSMS.1Spielen] title ["",{"text":"Spiel vorbei!","color":"red","bold":true}]

bossbar set gildenschlacht-minispiel:v1team1 players
bossbar set gildenschlacht-minispiel:v1team2 players

bossbar set gildenschlacht-minispiel:v1team1anzahl players
bossbar set gildenschlacht-minispiel:v1team2anzahl players

execute as @a[tag=EtiGildSMS.1Spielen] run function gildenschlacht-minispiel:v1beitreten
