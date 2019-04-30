
execute run function schach-minispiel:v1spielzug_anzeigen
execute at @e[tag=EtiSchMS.1ZugAuswahl,tag=EtiSchMS.1Leuchten] if score @e[distance=..3,tag=EtiSchMS.1Alle,tag=EtiSchMS.1Anklickbar,sort=nearest,limit=1] PZSchMS.1Farbe = @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1Leuchten,sort=nearest,limit=1] PZSchMS.1Farbe run kill @e[distance=..2,tag=EtiSchMS.1ZugAuswahl]

execute positioned ^-3 ^ ^-3 if entity @e[distance=..2,tag=EtiSchMS.1Figur,tag=!EtiSchMS.1MoeglicherZug] positioned ^3 ^ ^3 run kill @e[distance=..2,tag=EtiSchMS.1ZugAuswahl]

execute positioned ^-3 ^ ^-3 unless entity @e[distance=..2,tag=EtiSchMS.1Figur,tag=!EtiSchMS.1MoeglicherZug] positioned ^6 ^ ^6 if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1zug_laeufer_schritt
