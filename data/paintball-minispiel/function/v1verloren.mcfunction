
clear @s

execute if entity @s[gamemode=!creative] run tellraw @a[tag=EtiPaintBMS.1Spielen] ["Paintball-Minispiel.1:\n",{storage:"paintball-minispiel:v1daten",nbt:'"EigPaintBMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" ist aus dem Spiel ausgeschieden!",color:"red",bold:true}]

execute if entity @s[gamemode=creative] run tellraw @a[tag=EtiPaintBMS.1Spielen] ["Paintball-Minispiel.1:\n",{storage:"paintball-minispiel:v1daten",nbt:'"EigPaintBMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" ist ausgeschieden aufgrund von Betrügen!",color:"red",bold:true}]

gamemode spectator @s

tag @s add EtiPaintBMS.1Verloren
