
execute if score VarSkyWaMS.1Beenden PZSkyWaMS.1Wert matches 16 if score VarSkyWaMS.1Befristet PZSkyWaMS.1Wert matches ..599 if entity @p[tag=EtiSkyWaMS.1Spielen,tag=!EtiSkyWaMS.1Verloren] run tellraw @a[tag=EtiSkyWaMS.1Spielen] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{selector:"@p[tag=EtiSkyWaMS.1Spielen,tag=!EtiSkyWaMS.1Verloren]",color:"green",bold:true},{text:" hat das Spiel gewonnen!",color:"gold",bold:true}]

execute if score VarSkyWaMS.1Beenden PZSkyWaMS.1Wert matches 16 if score VarSkyWaMS.1Befristet PZSkyWaMS.1Wert matches ..599 unless entity @a[tag=EtiSkyWaMS.1Spielen,tag=!EtiSkyWaMS.1Verloren] run tellraw @a[tag=EtiSkyWaMS.1Spielen] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{text:"Unentschieden!",color:"gold",bold:true}]

execute if score VarSkyWaMS.1Beenden PZSkyWaMS.1Wert matches 16 if score VarSkyWaMS.1Befristet PZSkyWaMS.1Wert matches 600.. run tellraw @a[tag=EtiSkyWaMS.1Spielen] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{text:"Zeit ist abgelaufen!",color:"red",bold:true}]

execute if score VarSkyWaMS.1Beenden PZSkyWaMS.1Wert matches 16 if score VarSkyWaMS.1Befristet PZSkyWaMS.1Wert matches 600.. run playsound minecraft:entity.player.levelup master @p[tag=EtiSkyWaMS.1Spielen,tag=!EtiSkyWaMS.1Verloren] ~ ~ ~

execute if score VarSkyWaMS.1Beenden PZSkyWaMS.1Wert matches 16 if score VarSkyWaMS.1Befristet PZSkyWaMS.1Wert matches 600.. run playsound minecraft:entity.wither.death master @a[tag=EtiSkyWaMS.1Spielen,tag=EtiSkyWaMS.1Verloren] ~ ~ ~

execute if score VarSkyWaMS.1Beenden PZSkyWaMS.1Wert matches 16 if score VarSkyWaMS.1Befristet PZSkyWaMS.1Wert matches 600.. unless entity @a[tag=EtiSkyWaMS.1Spielen,tag=!EtiSkyWaMS.1Verloren] run playsound minecraft:block.note_block.bell master @a[tag=EtiSkyWaMS.1Spielen] ~ ~ ~ 3 0

execute at @n[type=minecraft:marker,tag=EtiSkyWaMS.1Spielfeld] run kill @e[distance=..100,type=minecraft:marker,tag=EtiSkyWaMS.1Block]

execute store result score VarSkyWaMS.1IstNull PZSkyWaMS.1Wert run scoreboard players remove VarSkyWaMS.1Beenden PZSkyWaMS.1Wert 1
scoreboard players operation VarSkyWaMS.1IstNull PZSkyWaMS.1Wert %= KonstSkyWaMS.1FUENF PZSkyWaMS.1Wert

execute if score VarSkyWaMS.1Beenden PZSkyWaMS.1Wert matches 1.. run return run execute if score VarSkyWaMS.1IstNull PZSkyWaMS.1Wert matches 0 run tellraw @a[tag=EtiSkyWaMS.1Spielen] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{text:"Spiel endet in ",color:"yellow",bold:true},{score:{name:"VarSkyWaMS.1Beenden",objective:"PZSkyWaMS.1Wert"},color:"dark_purple",bold:true},{text:" Sekunden!",bold:true}]

execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Ebene,sort=nearest,limit=2] run fill ~-22 ~ ~-22 ~22 ~ ~22 minecraft:barrier replace minecraft:structure_void
execute at @e[type=minecraft:marker,tag=EtiSkyWaMS.1Ebene,sort=nearest,limit=2] run fill ~-22 ~1 ~-22 ~22 ~1 ~22 minecraft:red_sand replace minecraft:structure_void

scoreboard players set VarSkyWaMS.1Spielen PZSkyWaMS.1Wert 0

title @a[tag=EtiSkyWaMS.1Spielen] title ["",{text:"Spiel vorbei!",color:"red",bold:true}]

execute as @a[tag=EtiSkyWaMS.1Spielen] run function skywars-minispiel:v1beitreten
