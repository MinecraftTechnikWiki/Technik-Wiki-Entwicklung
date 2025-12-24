
scoreboard players add VarSchMS.1AktuelleZeilenPosition PZSchMS.1Brett 1

execute unless score VarSchMS.1Rotation PZSchMS.1Brett matches 1 unless score VarSchMS.1Rotation PZSchMS.1Brett matches 3 if score VarSchMS.1AktuelleZeilenPosition PZSchMS.1Brett >= VarSchMS.1FigurenRandPosition PZSchMS.1Brett run function schach-minispiel:v1erstellen_figuren_spalten
execute unless score VarSchMS.1Rotation PZSchMS.1Brett matches 1 unless score VarSchMS.1Rotation PZSchMS.1Brett matches 3 if score VarSchMS.1AktuelleZeilenPosition PZSchMS.1Brett < VarSchMS.1FigurenRandPosition PZSchMS.1Brett positioned ^ ^ ^3 run function schach-minispiel:v1erstellen_figuren_zeilen

execute unless score VarSchMS.1Rotation PZSchMS.1Brett matches 0 unless score VarSchMS.1Rotation PZSchMS.1Brett matches 2 if score VarSchMS.1AktuelleZeilenPosition PZSchMS.1Brett >= VarSchMS.1FigurenRandPosition PZSchMS.1Brett run function schach-minispiel:v1erstellen_figuren_spalten
execute unless score VarSchMS.1Rotation PZSchMS.1Brett matches 0 unless score VarSchMS.1Rotation PZSchMS.1Brett matches 2 if score VarSchMS.1AktuelleZeilenPosition PZSchMS.1Brett < VarSchMS.1FigurenRandPosition PZSchMS.1Brett positioned ^ ^ ^-3 run function schach-minispiel:v1erstellen_figuren_zeilen

execute if score VarSchMS.1AktuelleZeilenPosition PZSchMS.1Brett >= VarSchMS.1FigurenRandPosition PZSchMS.1Brett run scoreboard players set VarSchMS.1AktuelleZeilenPosition PZSchMS.1Brett 0
