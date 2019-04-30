
scoreboard players add VarSchMS.1AktuelleFeldZeile PZSchMS.1Brett 1
scoreboard players set VarSchMS.1AktuelleFeldSpalte PZSchMS.1Brett 0

execute if score VarSchMS.1AktuelleFeldZeile PZSchMS.1Brett <= VarSchMS.1FeldZeile PZSchMS.1Brett run function schach-minispiel:v1erstellen_spalte
execute if score VarSchMS.1AktuelleFeldZeile PZSchMS.1Brett <= VarSchMS.1FeldZeile PZSchMS.1Brett positioned ~3 ~ ~ run function schach-minispiel:v1erstellen_zeile
