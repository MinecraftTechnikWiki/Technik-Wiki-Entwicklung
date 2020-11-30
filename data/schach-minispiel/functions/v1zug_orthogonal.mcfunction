
function schach-minispiel:v1spielzug_anzeigen

execute positioned ^-3 ^ ^ if entity @e[distance=..2,tag=EtiSchMS.1Figur,tag=!EtiSchMS.1MoeglicherZug] positioned ^3 ^2 ^ run kill @e[distance=..2,tag=EtiSchMS.1ZugAuswahl]

execute positioned ^-3 ^ ^ unless entity @e[distance=..2,tag=EtiSchMS.1Figur,tag=!EtiSchMS.1MoeglicherZug] positioned ^6 ^ ^ if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1zug_orthogonal
