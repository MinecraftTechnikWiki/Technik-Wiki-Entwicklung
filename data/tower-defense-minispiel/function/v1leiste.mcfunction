
execute if score VarTowDefMS.1Balken PZTowDefMS.1Leben <= @s PZTowDefMS.1Versuch run data modify storage tower-defense-minispiel:v1daten "EigTowDefMS.1Herz" set value {text:"|",color:"red"}
execute if score VarTowDefMS.1Balken PZTowDefMS.1Leben > @s PZTowDefMS.1Versuch run data modify storage tower-defense-minispiel:v1daten "EigTowDefMS.1Herz" set value {text:"|",color:"gray"}

data modify storage tower-defense-minispiel:v1daten "EigTowDefMS.1Leiste" append from storage tower-defense-minispiel:v1daten "EigTowDefMS.1Herz"

scoreboard players add VarTowDefMS.1Balken PZTowDefMS.1Leben 8
execute if score VarTowDefMS.1Balken PZTowDefMS.1Leben matches ..100 run function tower-defense-minispiel:v1leiste