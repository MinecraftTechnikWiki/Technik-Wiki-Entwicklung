
execute positioned ^6 ^1 ^ if block ~ ~ ~ #schach-minispiel:v1schachbloecke unless entity @e[distance=..2,tag=EtiSchMS.1Figur] positioned ^3 ^ ^ if entity @e[distance=..2,tag=EtiSchMS.1MoeglicherZug,tag=EtiSchMS.1Koenig] positioned ^-6 ^ ^ if block ~ ~ ~ #schach-minispiel:v1schachbloecke unless entity @e[distance=..2,tag=EtiSchMS.1Figur] run tag @s add EtiSchMS.1KoenigDoppelZug
execute if entity @s[tag=EtiSchMS.1KoenigDoppelZug] positioned ^3 ^0.35 ^ run function schach-minispiel:v1spielzug_anzeigen
