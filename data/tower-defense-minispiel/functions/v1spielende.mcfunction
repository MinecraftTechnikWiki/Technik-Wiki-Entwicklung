
execute if score VarTowDefMS.1Beenden PZTowDefMS.1Wert matches 16 as @e[tag=EtiTowDefMS.1Gegner] run data modify entity @s NoAI set value true

execute if score VarTowDefMS.1Beenden PZTowDefMS.1Wert matches 16 if score VarTowDefMS.1Befristet PZTowDefMS.1Wert matches ..599 if score VarTowDefMS.1Team1 PZTowDefMS.1Wert matches 0 if score VarTowDefMS.1Team2 PZTowDefMS.1Wert matches 1.. run tellraw @a[tag=EtiTowDefMS.1Spielen] ["Tower-Defense-Minispiel.1:\n",{"storage":"tower-defense-minispiel:v1daten","nbt":"\"EigTowDefMS.1Name\"","interpret":true},{"text":"Die blaue Gilde bestehend aus ","color":"blue","bold":true},{"selector":"@a[team=TMTowDefMS.1Team2]","color":"blue","bold":true},{"text":" hat das Spiel gewonnen!","color":"gold","bold":true}]

execute if score VarTowDefMS.1Beenden PZTowDefMS.1Wert matches 16 if score VarTowDefMS.1Befristet PZTowDefMS.1Wert matches ..599 if score VarTowDefMS.1Team2 PZTowDefMS.1Wert matches 0 if score VarTowDefMS.1Team1 PZTowDefMS.1Wert matches 1.. run tellraw @a[tag=EtiTowDefMS.1Spielen] ["Tower-Defense-Minispiel.1:\n",{"storage":"tower-defense-minispiel:v1daten","nbt":"\"EigTowDefMS.1Name\"","interpret":true},{"text":"Die rote Gilde bestehend aus ","color":"red","bold":true},{"selector":"@a[team=TMTowDefMS.1Team1]","color":"red","bold":true},{"text":" hat das Spiel gewonnen!","color":"gold","bold":true}]

execute if score VarTowDefMS.1Beenden PZTowDefMS.1Wert matches 16 if score VarTowDefMS.1Befristet PZTowDefMS.1Wert matches ..599 if score VarTowDefMS.1Team1 PZTowDefMS.1Wert matches 0 if score VarTowDefMS.1Team2 PZTowDefMS.1Wert matches 0 run tellraw @a[tag=EtiTowDefMS.1Spielen] ["Tower-Defense-Minispiel.1:\n",{"storage":"tower-defense-minispiel:v1daten","nbt":"\"EigTowDefMS.1Name\"","interpret":true},{"text":"Unentschieden!","color":"gold","bold":true}]

execute if score VarTowDefMS.1Beenden PZTowDefMS.1Wert matches 16 if score VarTowDefMS.1Befristet PZTowDefMS.1Wert matches 600.. run tellraw @a[tag=EtiTowDefMS.1Spielen] ["Tower-Defense-Minispiel.1:\n",{"storage":"tower-defense-minispiel:v1daten","nbt":"\"EigTowDefMS.1Name\"","interpret":true},{"text":"Zeit ist abgelaufen!","color":"red","bold":true}]

execute if score VarTowDefMS.1Beenden PZTowDefMS.1Wert matches 16 if score VarTowDefMS.1Befristet PZTowDefMS.1Wert matches 600.. run playsound minecraft:entity.player.levelup master @p[tag=EtiTowDefMS.1Spielen,tag=!EtiTowDefMS.1Verloren] ~ ~ ~

execute if score VarTowDefMS.1Beenden PZTowDefMS.1Wert matches 16 if score VarTowDefMS.1Befristet PZTowDefMS.1Wert matches 600.. run playsound minecraft:entity.wither.death master @a[tag=EtiTowDefMS.1Spielen,tag=EtiTowDefMS.1Verloren] ~ ~ ~

execute if score VarTowDefMS.1Beenden PZTowDefMS.1Wert matches 16 if score VarTowDefMS.1Befristet PZTowDefMS.1Wert matches 600.. unless entity @a[tag=EtiTowDefMS.1Spielen,tag=!EtiTowDefMS.1Verloren] run playsound minecraft:block.note_block.bell master @a[tag=EtiTowDefMS.1Spielen] ~ ~ ~ 3 0

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Spielfeld,sort=nearest,limit=1] run clear @a[distance=..100,tag=EtiTowDefMS.1Spielen] minecraft:golden_shovel[minecraft:custom_data~{EigTowDefMS.1Alle:true}]

execute store result score VarTowDefMS.1IstNull PZTowDefMS.1Wert run scoreboard players remove VarTowDefMS.1Beenden PZTowDefMS.1Wert 1
scoreboard players operation VarTowDefMS.1IstNull PZTowDefMS.1Wert %= KonstTowDefMS.1FUENF PZTowDefMS.1Wert

execute if score VarTowDefMS.1Beenden PZTowDefMS.1Wert matches 1.. run return run execute if score VarTowDefMS.1IstNull PZTowDefMS.1Wert matches 0 run tellraw @a[tag=EtiTowDefMS.1Spielen] ["Tower-Defense-Minispiel.1:\n",{"storage":"tower-defense-minispiel:v1daten","nbt":"\"EigTowDefMS.1Name\"","interpret":true},{"text":"Spiel endet in ","color":"yellow","bold":true},{"score":{"name":"VarTowDefMS.1Beenden","objective":"PZTowDefMS.1Wert"},"color":"dark_purple","bold":true},{"text":" Sekunden!","bold":true}]

scoreboard players set VarTowDefMS.1Spielen PZTowDefMS.1Wert 0

title @a[tag=EtiTowDefMS.1Spielen] title ["",{"text":"Spiel vorbei!","color":"red","bold":true}]

bossbar set tower-defense-minispiel:v1team1 players
bossbar set tower-defense-minispiel:v1team2 players

bossbar set tower-defense-minispiel:v1team1gegner players
bossbar set tower-defense-minispiel:v1team2gegner players

execute at @e[type=minecraft:marker,tag=EtiTowDefMS.1Turm] run fill ~-1 ~ ~-1 ~1 ~6 ~1 minecraft:air replace

kill @e[tag=EtiTowDefMS.1Entfernen]


kill @e[tag=EtiTowDefMS.1Gegner]
kill @e[type=minecraft:item_display,tag=EtiTowDefMS.1Geschoss]
kill @e[type=minecraft:item_display,tag=EtiTowDefMS.1Schuetze]
kill @e[type=minecraft:text_display,tag=EtiTowDefMS.1Aufladen]
kill @e[type=minecraft:marker,tag=EtiTowDefMS.1Turm]

execute as @a[tag=EtiTowDefMS.1Spielen] run function tower-defense-minispiel:v1beitreten
