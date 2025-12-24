
execute if entity @e[distance=..2,scores={PZSchMS.1Spielz=0}] positioned ^ ^-1 ^3 if block ~ ~ ~ #schach-minispiel:v1schachbloecke unless entity @e[distance=..2,tag=EtiSchMS.1Figur] positioned ^ ^ ^3 unless entity @e[distance=..2,tag=EtiSchMS.1Figur] if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1spielzug_anzeigen

execute positioned ^ ^-1 ^3 if block ~ ~ ~ #schach-minispiel:v1schachbloecke unless entity @e[distance=..2,tag=EtiSchMS.1Figur] run function schach-minispiel:v1spielzug_anzeigen

execute positioned ^3 ^-1 ^3 if block ~ ~ ~ #schach-minispiel:v1schachbloecke positioned ~-0.5 ~ ~-0.5 unless score @n[dx=1,dy=4,dz=1,tag=EtiSchMS.1Anklickbar] PZSchMS.1Farbe = @n[tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1MoeglicherZug] PZSchMS.1Farbe positioned ~0.5 ~ ~0.5 run function schach-minispiel:v1spielzug_anzeigen
execute positioned ^-3 ^-1 ^3 if block ~ ~ ~ #schach-minispiel:v1schachbloecke positioned ~-0.5 ~ ~-0.5 unless score @n[dx=1,dy=4,dz=1,tag=EtiSchMS.1Anklickbar] PZSchMS.1Farbe = @n[tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1MoeglicherZug] PZSchMS.1Farbe positioned ~0.5 ~ ~0.5 run function schach-minispiel:v1spielzug_anzeigen

execute positioned ^3 ^-1 ^ unless score @n[distance=..2,tag=EtiSchMS.1Bauer,tag=!EtiSchMS.1BauerDoppelZug,scores={PZSchMS.1Spielz=2}] PZSchMS.1Farbe = @n[tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1MoeglicherZug] PZSchMS.1Farbe positioned ^ ^ ^3 run function schach-minispiel:v1spielzug_anzeigen
execute positioned ^-3 ^-1 ^ unless score @n[distance=..2,tag=EtiSchMS.1Bauer,tag=!EtiSchMS.1BauerDoppelZug,scores={PZSchMS.1Spielz=2}] PZSchMS.1Farbe = @n[tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1MoeglicherZug] PZSchMS.1Farbe positioned ^ ^ ^3 run function schach-minispiel:v1spielzug_anzeigen

execute positioned as @e[tag=EtiSchMS.1ZugAuswahl,tag=EtiSchMS.1BodenZugAuswahl,sort=furthest,limit=3] if block ^ ^-3 ^-21 #schach-minispiel:v1schachbloecke unless block ^ ^-3 ^-24 #schach-minispiel:v1schachbloecke run function schach-minispiel:v1zug_bauer_wandlung
