
execute if entity @s[gamemode=!creative] run tellraw @a[tag=EtiSkyWaMS.1Spielen] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" ist aus dem Spiel ausgeschieden!",color:"red",bold:true}]

execute if entity @s[gamemode=creative] run tellraw @a[tag=EtiSkyWaMS.1Spielen] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" ist ausgeschieden aufgrund von Betrügen!",color:"red",bold:true}]

gamemode spectator @s

tag @s add EtiSkyWaMS.1Verloren
