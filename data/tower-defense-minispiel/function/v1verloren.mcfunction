
clear @s

execute if entity @s[gamemode=!creative] run tellraw @a[tag=EtiTowDefMS.1Spielen] ["Tower-Defense-Minispiel.1:\n",{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" ist aus dem Spiel ausgeschieden!",color:"red",bold:true}]

execute if entity @s[gamemode=creative] run tellraw @a[tag=EtiTowDefMS.1Spielen] ["Tower-Defense-Minispiel.1:\n",{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" ist ausgeschieden aufgrund von Betrügen!",color:"red",bold:true}]

gamemode spectator @s

tag @s add EtiTowDefMS.1Verloren
