
execute if entity @s[level=5..,team=TMTowDefMS.1Team1] run scoreboard players add VarTowDefMS.1Punkte1 PZTowDefMS.1Wert 5
execute if entity @s[level=5..,team=TMTowDefMS.1Team2] run scoreboard players add VarTowDefMS.1Punkte2 PZTowDefMS.1Wert 5

execute if entity @s[level=5..,team=TMTowDefMS.1Team1] run tellraw @a[team=TMTowDefMS.1Team1] ["Tower-Defense-Minispiel.1:\n",{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" hat den Punktestand um 5 erhöht!",color:"green",bold:true}]
execute if entity @s[level=5..,team=TMTowDefMS.1Team2] run tellraw @a[team=TMTowDefMS.1Team2] ["Tower-Defense-Minispiel.1:\n",{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Name"',interpret:true},{selector:"@s",color:"green",bold:true},{text:" hat den Punktestand um 5 erhöht!",color:"green",bold:true}]

experience add @s[level=5..] -5 levels

execute if entity @s[team=TMTowDefMS.1Team1] if entity @n[distance=..2,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Wert=1,PZTowDefMS.1Versuch=..0}] run function tower-defense-minispiel:v1verloren
execute if entity @s[team=TMTowDefMS.1Team2] if entity @n[distance=..2,type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Wert=2,PZTowDefMS.1Versuch=..0}] run function tower-defense-minispiel:v1verloren

execute if entity @s[gamemode=creative] run function tower-defense-minispiel:v1verloren

execute if block ~ ~-1 ~ minecraft:orange_concrete run effect give @s minecraft:levitation 1 15 true

