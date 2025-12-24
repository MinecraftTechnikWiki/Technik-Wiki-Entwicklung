
execute if entity @s[gamemode=!creative] run tellraw @a[tag=EtiTNTRMS.1Spielen] ["TNT-Run-Minispiel.1:\n",{storage:"tnt-run-minispiel:v1daten",nbt:'"EigTNTRMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" ist aus dem Spiel ausgeschieden!",color:"red",bold:true}]

execute if entity @s[gamemode=creative] run tellraw @a[tag=EtiTNTRMS.1Spielen] ["TNT-Run-Minispiel.1:\n",{storage:"tnt-run-minispiel:v1daten",nbt:'"EigTNTRMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" ist ausgeschieden aufgrund von Betrügen!",color:"red",bold:true}]

gamemode spectator @s

tag @s add EtiTNTRMS.1Verloren
