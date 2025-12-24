
execute if entity @s[gamemode=!creative] run tellraw @a[tag=EtiBoSplMS.1Spielen] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" ist aus dem Spiel ausgeschieden!",color:"red",bold:true}]

execute if entity @s[gamemode=creative] run tellraw @a[tag=EtiBoSplMS.1Spielen] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" ist ausgeschieden aufgrund von Betrügen!",color:"red",bold:true}]

gamemode spectator @s

tag @s add EtiBoSplMS.1Verloren
