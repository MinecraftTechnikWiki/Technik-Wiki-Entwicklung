
execute if score VarBoSplMS.1Beenden PZBoSplMS.1Wert matches 16 if score VarBoSplMS.1Befristet PZBoSplMS.1Wert matches ..599 if entity @p[tag=EtiBoSplMS.1Spielen,tag=!EtiBoSplMS.1Verloren] run tellraw @a[tag=EtiBoSplMS.1Spielen] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{selector:"@p[tag=EtiBoSplMS.1Spielen,tag=!EtiBoSplMS.1Verloren]",color:"green",bold:true},{text:" hat das Spiel gewonnen!",color:"gold",bold:true}]

execute if score VarBoSplMS.1Beenden PZBoSplMS.1Wert matches 16 if score VarBoSplMS.1Befristet PZBoSplMS.1Wert matches ..599 unless entity @a[tag=EtiBoSplMS.1Spielen,tag=!EtiBoSplMS.1Verloren] run tellraw @a[tag=EtiBoSplMS.1Spielen] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{text:"Unentschieden!",color:"gold",bold:true}]

execute if score VarBoSplMS.1Beenden PZBoSplMS.1Wert matches 16 if score VarBoSplMS.1Befristet PZBoSplMS.1Wert matches 600.. run tellraw @a[tag=EtiBoSplMS.1Spielen] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{text:"Zeit ist abgelaufen!",color:"red",bold:true}]

execute if score VarBoSplMS.1Beenden PZBoSplMS.1Wert matches 16 if score VarBoSplMS.1Befristet PZBoSplMS.1Wert matches 600.. run playsound minecraft:entity.player.levelup master @p[tag=EtiBoSplMS.1Spielen,tag=!EtiBoSplMS.1Verloren] ~ ~ ~

execute if score VarBoSplMS.1Beenden PZBoSplMS.1Wert matches 16 if score VarBoSplMS.1Befristet PZBoSplMS.1Wert matches 600.. run playsound minecraft:entity.wither.death master @a[tag=EtiBoSplMS.1Spielen,tag=EtiBoSplMS.1Verloren] ~ ~ ~

execute if score VarBoSplMS.1Beenden PZBoSplMS.1Wert matches 16 if score VarBoSplMS.1Befristet PZBoSplMS.1Wert matches 600.. unless entity @a[tag=EtiBoSplMS.1Spielen,tag=!EtiBoSplMS.1Verloren] run playsound minecraft:block.note_block.bell master @a[tag=EtiBoSplMS.1Spielen] ~ ~ ~ 3 0

execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] run clear @a[distance=..100,tag=EtiBoSplMS.1Spielen] minecraft:bow[minecraft:custom_data~{EigBoSplMS.1Alle:true}]
execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Spielfeld] run clear @a[distance=..100,tag=EtiBoSplMS.1Spielen] minecraft:arrow[minecraft:custom_data~{EigBoSplMS.1Alle:true}]

execute store result score VarBoSplMS.1IstNull PZBoSplMS.1Wert run scoreboard players remove VarBoSplMS.1Beenden PZBoSplMS.1Wert 1
scoreboard players operation VarBoSplMS.1IstNull PZBoSplMS.1Wert %= KonstBoSplMS.1FUENF PZBoSplMS.1Wert

execute if score VarBoSplMS.1Beenden PZBoSplMS.1Wert matches 1.. run return run execute if score VarBoSplMS.1IstNull PZBoSplMS.1Wert matches 0 run tellraw @a[tag=EtiBoSplMS.1Spielen] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{text:"Spiel endet in ",color:"yellow",bold:true},{score:{name:"VarBoSplMS.1Beenden",objective:"PZBoSplMS.1Wert"},color:"dark_purple",bold:true},{text:" Sekunden!",bold:true}]

execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Ebene] run place template bow-spleef-minispiel:v1ebene ~ ~ ~ none
execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Ebene] run place template bow-spleef-minispiel:v1ebene ~ ~ ~ clockwise_90
execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Ebene] run place template bow-spleef-minispiel:v1ebene ~ ~ ~ 180
execute at @n[type=minecraft:marker,tag=EtiBoSplMS.1Ebene] run place template bow-spleef-minispiel:v1ebene ~ ~ ~ counterclockwise_90

scoreboard players set VarBoSplMS.1Spielen PZBoSplMS.1Wert 0

title @a[tag=EtiBoSplMS.1Spielen] title ["",{text:"Spiel vorbei!",color:"red",bold:true}]

execute as @a[tag=EtiBoSplMS.1Spielen] run function bow-spleef-minispiel:v1beitreten
