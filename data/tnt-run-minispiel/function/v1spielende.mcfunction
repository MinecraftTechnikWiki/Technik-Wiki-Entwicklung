
execute if score VarTNTRMS.1Beenden PZTNTRMS.1Wert matches 16 if score VarTNTRMS.1Befristet PZTNTRMS.1Wert matches ..599 if entity @p[tag=EtiTNTRMS.1Spielen,tag=!EtiTNTRMS.1Verloren] run tellraw @a[tag=EtiTNTRMS.1Spielen] ["TNT-Run-Minispiel.1:\n",{storage:"tnt-run-minispiel:v1daten",nbt:'"EigTNTRMS.1Name"',interpret:true},{selector:"@p[tag=EtiTNTRMS.1Spielen,tag=!EtiTNTRMS.1Verloren]",color:"green",bold:true},{text:" hat das Spiel gewonnen!",color:"gold",bold:true}]

execute if score VarTNTRMS.1Beenden PZTNTRMS.1Wert matches 16 if score VarTNTRMS.1Befristet PZTNTRMS.1Wert matches ..599 unless entity @a[tag=EtiTNTRMS.1Spielen,tag=!EtiTNTRMS.1Verloren] run tellraw @a[tag=EtiTNTRMS.1Spielen] ["TNT-Run-Minispiel.1:\n",{storage:"tnt-run-minispiel:v1daten",nbt:'"EigTNTRMS.1Name"',interpret:true},{text:"Unentschieden!",color:"gold",bold:true}]

execute if score VarTNTRMS.1Beenden PZTNTRMS.1Wert matches 16 if score VarTNTRMS.1Befristet PZTNTRMS.1Wert matches 600.. run tellraw @a[tag=EtiTNTRMS.1Spielen] ["TNT-Run-Minispiel.1:\n",{storage:"tnt-run-minispiel:v1daten",nbt:'"EigTNTRMS.1Name"',interpret:true},{text:"Zeit ist abgelaufen!",color:"red",bold:true}]

execute if score VarTNTRMS.1Beenden PZTNTRMS.1Wert matches 16 if score VarTNTRMS.1Befristet PZTNTRMS.1Wert matches 600.. run playsound minecraft:entity.player.levelup master @p[tag=EtiTNTRMS.1Spielen,tag=!EtiTNTRMS.1Verloren] ~ ~ ~

execute if score VarTNTRMS.1Beenden PZTNTRMS.1Wert matches 16 if score VarTNTRMS.1Befristet PZTNTRMS.1Wert matches 600.. run playsound minecraft:entity.wither.death master @a[tag=EtiTNTRMS.1Spielen,tag=EtiTNTRMS.1Verloren] ~ ~ ~

execute if score VarTNTRMS.1Beenden PZTNTRMS.1Wert matches 16 if score VarTNTRMS.1Befristet PZTNTRMS.1Wert matches 600.. unless entity @a[tag=EtiTNTRMS.1Spielen,tag=!EtiTNTRMS.1Verloren] run playsound minecraft:block.note_block.bell master @a[tag=EtiTNTRMS.1Spielen] ~ ~ ~ 3 0

execute at @n[type=minecraft:marker,tag=EtiTNTRMS.1Spielfeld] run kill @e[distance=..100,type=minecraft:marker,tag=EtiTNTRMS.1Block]

execute store result score VarTNTRMS.1IstNull PZTNTRMS.1Wert run scoreboard players remove VarTNTRMS.1Beenden PZTNTRMS.1Wert 1
scoreboard players operation VarTNTRMS.1IstNull PZTNTRMS.1Wert %= KonstTNTRMS.1FUENF PZTNTRMS.1Wert

execute if score VarTNTRMS.1Beenden PZTNTRMS.1Wert matches 1.. run return run execute if score VarTNTRMS.1IstNull PZTNTRMS.1Wert matches 0 run tellraw @a[tag=EtiTNTRMS.1Spielen] ["TNT-Run-Minispiel.1:\n",{storage:"tnt-run-minispiel:v1daten",nbt:'"EigTNTRMS.1Name"',interpret:true},{text:"Spiel endet in ",color:"yellow",bold:true},{score:{name:"VarTNTRMS.1Beenden",objective:"PZTNTRMS.1Wert"},color:"dark_purple",bold:true},{text:" Sekunden!",bold:true}]

execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Ebene,sort=nearest,limit=2] run fill ~-22 ~ ~-22 ~22 ~ ~22 minecraft:barrier replace minecraft:structure_void
execute at @e[type=minecraft:marker,tag=EtiTNTRMS.1Ebene,sort=nearest,limit=2] run fill ~-22 ~1 ~-22 ~22 ~1 ~22 minecraft:red_sand replace minecraft:structure_void

scoreboard players set VarTNTRMS.1Spielen PZTNTRMS.1Wert 0

title @a[tag=EtiTNTRMS.1Spielen] title ["",{text:"Spiel vorbei!",color:"red",bold:true}]

execute as @a[tag=EtiTNTRMS.1Spielen] run function tnt-run-minispiel:v1beitreten
