
function raumschach-minispiel:v1spielzug_anzeigen

execute positioned ^-5 ^ ^-8 if entity @e[distance=..2,tag=EtiRSchMS.1Figur,tag=!EtiRSchMS.1MoeglicherZug] positioned ^5 ^ ^8 positioned ~ ~2 ~ run kill @e[distance=..2,tag=EtiRSchMS.1ZugAuswahl]

execute positioned ^-5 ^ ^-8 unless entity @e[distance=..2,tag=EtiRSchMS.1Figur,tag=!EtiRSchMS.1MoeglicherZug] positioned ^10 ^ ^16 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1zug_diagonal_y
