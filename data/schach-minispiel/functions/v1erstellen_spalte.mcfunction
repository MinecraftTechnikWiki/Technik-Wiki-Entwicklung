
summon minecraft:area_effect_cloud ~ ~ ~ {NoGravity:true,Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiSchMS.1Alle","EtiSchMS.1Feld"]}

scoreboard players add VarSchMS.1AktuelleFeldSpalte PZSchMS.1Brett 1

scoreboard players operation VarSchMS.1FeldZeilenUmbruch PZSchMS.1Brett = VarSchMS.1AktuelleFeldZeile PZSchMS.1Brett
scoreboard players operation VarSchMS.1FeldZeilenUmbruch PZSchMS.1Brett %= KonstSchMS.1ZWEI PZSchMS.1Brett

scoreboard players operation VarSchMS.1FeldFarbe PZSchMS.1Brett = VarSchMS.1AktuelleFeldSpalte PZSchMS.1Brett
execute if score VarSchMS.1FeldZeilenUmbruch PZSchMS.1Brett matches 1 run scoreboard players add VarSchMS.1FeldFarbe PZSchMS.1Brett 1
scoreboard players operation VarSchMS.1FeldFarbe PZSchMS.1Brett %= KonstSchMS.1ZWEI PZSchMS.1Brett

execute if score VarSchMS.1FeldFarbe PZSchMS.1Brett matches 1 unless score VarSchMS.1Variante PZSchMS.1Brett matches 1 run fill ~ ~ ~ ~2 ~ ~2 minecraft:black_concrete replace
execute if score VarSchMS.1FeldFarbe PZSchMS.1Brett matches 0 unless score VarSchMS.1Variante PZSchMS.1Brett matches 1 run fill ~ ~ ~ ~2 ~ ~2 minecraft:white_concrete replace

execute if score VarSchMS.1FeldFarbe PZSchMS.1Brett matches 0 if score VarSchMS.1Variante PZSchMS.1Brett matches 1 run fill ~ ~ ~ ~2 ~ ~2 minecraft:black_concrete replace
execute if score VarSchMS.1FeldFarbe PZSchMS.1Brett matches 1 if score VarSchMS.1Variante PZSchMS.1Brett matches 1 run fill ~ ~ ~ ~2 ~ ~2 minecraft:white_concrete replace

execute if score VarSchMS.1AktuelleFeldSpalte PZSchMS.1Brett < VarSchMS.1EckenPosition PZSchMS.1Brett if score VarSchMS.1AktuelleFeldZeile PZSchMS.1Brett < VarSchMS.1EckenPosition PZSchMS.1Brett run fill ~ ~ ~ ~2 ~ ~2 minecraft:air replace

execute if score VarSchMS.1AktuelleFeldSpalte PZSchMS.1Brett >= VarSchMS.1EckenUndFigurenPosition PZSchMS.1Brett if score VarSchMS.1AktuelleFeldZeile PZSchMS.1Brett < VarSchMS.1EckenPosition PZSchMS.1Brett run fill ~ ~ ~ ~2 ~ ~2 minecraft:air replace

execute if score VarSchMS.1AktuelleFeldSpalte PZSchMS.1Brett < VarSchMS.1EckenPosition PZSchMS.1Brett if score VarSchMS.1AktuelleFeldZeile PZSchMS.1Brett >= VarSchMS.1EckenUndFigurenPosition PZSchMS.1Brett run fill ~ ~ ~ ~2 ~ ~2 minecraft:air replace

execute if score VarSchMS.1AktuelleFeldSpalte PZSchMS.1Brett >= VarSchMS.1EckenUndFigurenPosition PZSchMS.1Brett if score VarSchMS.1AktuelleFeldZeile PZSchMS.1Brett >= VarSchMS.1EckenUndFigurenPosition PZSchMS.1Brett run fill ~ ~ ~ ~2 ~ ~2 minecraft:air replace

execute if score VarSchMS.1AktuelleFeldSpalte PZSchMS.1Brett < VarSchMS.1FeldSpalte PZSchMS.1Brett positioned ~ ~ ~3 run function schach-minispiel:v1erstellen_spalte
