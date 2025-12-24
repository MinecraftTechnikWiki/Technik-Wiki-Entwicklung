

execute if score VarPaintBMS.1Beenden PZPaintBMS.1Wert matches 16 if score VarPaintBMS.1Befristet PZPaintBMS.1Wert matches ..599 if score VarPaintBMS.1Team1 PZPaintBMS.1Wert matches 0 if score VarPaintBMS.1Team2 PZPaintBMS.1Wert matches 1.. run tellraw @a[tag=EtiPaintBMS.1Spielen] ["Paintball-Minispiel.1:\n",{storage:"paintball-minispiel:v1daten",nbt:'"EigPaintBMS.1Name"',interpret:true},{text:"Die blaue Gilde bestehend aus ",color:"blue",bold:true},{selector:"@a[team=TMPaintBMS.1Team2]",color:"blue",bold:true},{text:" hat das Spiel gewonnen!",color:"gold",bold:true}]

execute if score VarPaintBMS.1Beenden PZPaintBMS.1Wert matches 16 if score VarPaintBMS.1Befristet PZPaintBMS.1Wert matches ..599 if score VarPaintBMS.1Team2 PZPaintBMS.1Wert matches 0 if score VarPaintBMS.1Team1 PZPaintBMS.1Wert matches 1.. run tellraw @a[tag=EtiPaintBMS.1Spielen] ["Paintball-Minispiel.1:\n",{storage:"paintball-minispiel:v1daten",nbt:'"EigPaintBMS.1Name"',interpret:true},{text:"Die rote Gilde bestehend aus ",color:"red",bold:true},{selector:"@a[team=TMPaintBMS.1Team1]",color:"red",bold:true},{text:" hat das Spiel gewonnen!",color:"gold",bold:true}]

execute if score VarPaintBMS.1Beenden PZPaintBMS.1Wert matches 16 if score VarPaintBMS.1Befristet PZPaintBMS.1Wert matches ..599 if score VarPaintBMS.1Team1 PZPaintBMS.1Wert matches 0 if score VarPaintBMS.1Team2 PZPaintBMS.1Wert matches 0 run tellraw @a[tag=EtiPaintBMS.1Spielen] ["Paintball-Minispiel.1:\n",{storage:"paintball-minispiel:v1daten",nbt:'"EigPaintBMS.1Name"',interpret:true},{text:"Unentschieden!",color:"gold",bold:true}]

execute if score VarPaintBMS.1Beenden PZPaintBMS.1Wert matches 16 if score VarPaintBMS.1Befristet PZPaintBMS.1Wert matches 600.. run tellraw @a[tag=EtiPaintBMS.1Spielen] ["Paintball-Minispiel.1:\n",{storage:"paintball-minispiel:v1daten",nbt:'"EigPaintBMS.1Name"',interpret:true},{text:"Zeit ist abgelaufen!",color:"red",bold:true}]

execute if score VarPaintBMS.1Beenden PZPaintBMS.1Wert matches 16 if score VarPaintBMS.1Befristet PZPaintBMS.1Wert matches 600.. run playsound minecraft:entity.player.levelup master @p[tag=EtiPaintBMS.1Spielen,tag=!EtiPaintBMS.1Verloren] ~ ~ ~

execute if score VarPaintBMS.1Beenden PZPaintBMS.1Wert matches 16 if score VarPaintBMS.1Befristet PZPaintBMS.1Wert matches 600.. run playsound minecraft:entity.wither.death master @a[tag=EtiPaintBMS.1Spielen,tag=EtiPaintBMS.1Verloren] ~ ~ ~

execute if score VarPaintBMS.1Beenden PZPaintBMS.1Wert matches 16 if score VarPaintBMS.1Befristet PZPaintBMS.1Wert matches 600.. unless entity @a[tag=EtiPaintBMS.1Spielen,tag=!EtiPaintBMS.1Verloren] run playsound minecraft:block.note_block.bell master @a[tag=EtiPaintBMS.1Spielen] ~ ~ ~ 3 0

execute at @n[type=minecraft:marker,tag=EtiPaintBMS.1Spielfeld] run clear @a[distance=..100,tag=EtiPaintBMS.1Spielen] minecraft:golden_shovel[minecraft:custom_data~{EigPaintBMS.1Alle:true}]

execute store result score VarPaintBMS.1IstNull PZPaintBMS.1Wert run scoreboard players remove VarPaintBMS.1Beenden PZPaintBMS.1Wert 1
scoreboard players operation VarPaintBMS.1IstNull PZPaintBMS.1Wert %= KonstPaintBMS.1FUENF PZPaintBMS.1Wert

execute if score VarPaintBMS.1Beenden PZPaintBMS.1Wert matches 1.. run return run execute if score VarPaintBMS.1IstNull PZPaintBMS.1Wert matches 0 run tellraw @a[tag=EtiPaintBMS.1Spielen] ["Paintball-Minispiel.1:\n",{storage:"paintball-minispiel:v1daten",nbt:'"EigPaintBMS.1Name"',interpret:true},{text:"Spiel endet in ",color:"yellow",bold:true},{score:{name:"VarPaintBMS.1Beenden",objective:"PZPaintBMS.1Wert"},color:"dark_purple",bold:true},{text:" Sekunden!",bold:true}]

scoreboard players set VarPaintBMS.1Spielen PZPaintBMS.1Wert 0

title @a[tag=EtiPaintBMS.1Spielen] title ["",{text:"Spiel vorbei!",color:"red",bold:true}]

bossbar set paintball-minispiel:v1team1 players
bossbar set paintball-minispiel:v1team2 players

bossbar set paintball-minispiel:v1team1anzahl players
bossbar set paintball-minispiel:v1team2anzahl players

execute as @a[tag=EtiPaintBMS.1Spielen] run function paintball-minispiel:v1beitreten
