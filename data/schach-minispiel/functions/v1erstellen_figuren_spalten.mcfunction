
scoreboard players add VarSchMS.1AktuelleSpaltenPosition PZSchMS.1Brett 1

execute if score VarSchMS.1AktuelleSpaltenPosition PZSchMS.1Brett >= VarSchMS.1EckenPosition PZSchMS.1Brett if score VarSchMS.1HordeReihe PZSchMS.1Brett matches 0 run function schach-minispiel:v1figur_turm
execute if score VarSchMS.1AktuelleSpaltenPosition PZSchMS.1Brett >= VarSchMS.1EckenPosition PZSchMS.1Brett if score VarSchMS.1HordeReihe PZSchMS.1Brett matches 1 run function schach-minispiel:v1figur_bauer
execute if score VarSchMS.1AktuelleSpaltenPosition PZSchMS.1Brett < VarSchMS.1EckenPosition PZSchMS.1Brett positioned ^3 ^ ^ run function schach-minispiel:v1erstellen_figuren_spalten

execute if score VarSchMS.1AktuelleSpaltenPosition PZSchMS.1Brett >= VarSchMS.1EckenPosition PZSchMS.1Brett run scoreboard players set VarSchMS.1AktuelleSpaltenPosition PZSchMS.1Brett 0
