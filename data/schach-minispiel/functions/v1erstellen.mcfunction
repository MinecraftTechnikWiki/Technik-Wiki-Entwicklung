
execute at @e[type=minecraft:area_effect_cloud,tag=EtiSchMS.1Feld] run fill ~ ~ ~ ~2 ~1 ~2 minecraft:air replace

execute as @e[tag=EtiSchMS.1Alle] at @s run teleport @s ~ -255 ~
kill @e[tag=EtiSchMS.1Alle]
scoreboard players set @a PZSchMS.1Brett 0

execute if score VarSchMS.1Variante PZSchMS.1Brett matches 0 run scoreboard players set VarSchMS.1Groesse PZSchMS.1Brett 8
execute if score VarSchMS.1Variante PZSchMS.1Brett matches 1 run scoreboard players set VarSchMS.1Groesse PZSchMS.1Brett 14
execute if score VarSchMS.1Variante PZSchMS.1Brett matches 2 run scoreboard players set VarSchMS.1Groesse PZSchMS.1Brett 12

scoreboard players operation VarSchMS.1HordeReihe PZSchMS.1Brett = VarSchMS.1Horde PZSchMS.1Brett

execute store result score VarSchMS.1FeldZeile PZSchMS.1Brett run scoreboard players operation VarSchMS.1FeldSpalte PZSchMS.1Brett = VarSchMS.1Groesse PZSchMS.1Brett

scoreboard players operation VarSchMS.1EckenPosition PZSchMS.1Brett = VarSchMS.1Groesse PZSchMS.1Brett
scoreboard players operation VarSchMS.1EckenPosition PZSchMS.1Brett -= KonstSchMS.1ACHT PZSchMS.1Brett
scoreboard players operation VarSchMS.1EckenPosition PZSchMS.1Brett /= KonstSchMS.1ZWEI PZSchMS.1Brett
scoreboard players add VarSchMS.1EckenPosition PZSchMS.1Brett 1

scoreboard players operation VarSchMS.1EckenUndFigurenPosition PZSchMS.1Brett = VarSchMS.1EckenPosition PZSchMS.1Brett
scoreboard players operation VarSchMS.1EckenUndFigurenPosition PZSchMS.1Brett += KonstSchMS.1ACHT PZSchMS.1Brett

scoreboard players set VarSchMS.1AktuelleFeldZeile PZSchMS.1Brett 0

function schach-minispiel:v1erstellen_zeile
function schach-minispiel:v1erstellen_figuren
