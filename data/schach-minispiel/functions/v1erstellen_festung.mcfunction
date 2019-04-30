
scoreboard players set VarSchMS.1Groesse PZSchMS.1Brett 4
scoreboard players set VarSchMS.1EckenPosition PZSchMS.1Brett 1
scoreboard players set VarSchMS.1EckenUndFigurenPosition PZSchMS.1Brett 8

execute store result score VarSchMS.1FeldZeile PZSchMS.1Brett run scoreboard players operation VarSchMS.1FeldSpalte PZSchMS.1Brett = VarSchMS.1Groesse PZSchMS.1Brett

scoreboard players set VarSchMS.1Rotation PZSchMS.1Brett -1
scoreboard players set VarSchMS.1Farbe PZSchMS.1Farbe -1

scoreboard players set VarSchMS.1FestungSchach PZSchMS.1Brett 1

scoreboard players set VarSchMS.1AktuelleFeldZeile PZSchMS.1Brett 0
execute positioned ~12 ~ ~12 run function schach-minispiel:v1erstellen_zeile
execute align xyz positioned ^-16.5 ^1 ^-16.5 run function schach-minispiel:v1erstellen_festung_figuren

scoreboard players set VarSchMS.1AktuelleFeldZeile PZSchMS.1Brett 0
execute positioned ~-24 ~ ~12 run function schach-minispiel:v1erstellen_zeile
execute rotated 90 0 align xyz positioned ^-16.5 ^1 ^-16.5 run function schach-minispiel:v1erstellen_festung_figuren

scoreboard players set VarSchMS.1AktuelleFeldZeile PZSchMS.1Brett 0
execute positioned ~12 ~ ~-24 run function schach-minispiel:v1erstellen_zeile
execute rotated 180 0 align xyz positioned ^-16.5 ^1 ^-16.5 run function schach-minispiel:v1erstellen_festung_figuren

scoreboard players set VarSchMS.1AktuelleFeldZeile PZSchMS.1Brett 0
execute positioned ~-24 ~ ~-24 run function schach-minispiel:v1erstellen_zeile
execute rotated 270 0 align xyz positioned ^-16.5 ^1 ^-16.5 run function schach-minispiel:v1erstellen_festung_figuren

scoreboard players set VarSchMS.1FestungSchach PZSchMS.1Brett 0
