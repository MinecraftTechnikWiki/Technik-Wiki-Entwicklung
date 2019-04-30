
execute if entity @e[distance=..2,scores={PZSchMS.1Spielz=0}] positioned ^ ^ ^3 unless entity @e[distance=..2,tag=EtiSchMS.1Alle] positioned ^ ^-1 ^3 unless entity @e[distance=..2,tag=EtiSchMS.1Alle] if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1spielzug_anzeigen

execute positioned ^ ^-1 ^3 if block ~ ~ ~ #schach-minispiel:v1schachbloecke unless entity @e[distance=..2,tag=EtiSchMS.1Alle] run function schach-minispiel:v1spielzug_anzeigen

execute positioned ^3 ^-1 ^3 if block ~ ~ ~ #schach-minispiel:v1schachbloecke positioned ~-0.5 ~ ~-0.5 unless score @e[dx=1,dy=4,dz=1,tag=EtiSchMS.1Anklickbar,sort=nearest,limit=1] PZSchMS.1Farbe = @e[tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1MoeglicherZug,sort=nearest,limit=1] PZSchMS.1Farbe positioned ~0.5 ~ ~0.5 run function schach-minispiel:v1spielzug_anzeigen
execute positioned ^-3 ^-1 ^3 if block ~ ~ ~ #schach-minispiel:v1schachbloecke positioned ~-0.5 ~ ~-0.5 unless score @e[dx=1,dy=4,dz=1,tag=EtiSchMS.1Anklickbar,sort=nearest,limit=1] PZSchMS.1Farbe = @e[tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1MoeglicherZug,sort=nearest,limit=1] PZSchMS.1Farbe positioned ~0.5 ~ ~0.5 run function schach-minispiel:v1spielzug_anzeigen

execute positioned ^3 ^-1 ^ unless score @e[distance=..2,tag=EtiSchMS.1Bauer,tag=!EtiSchMS.1BauerDoppelZug,scores={PZSchMS.1Spielz=2},sort=nearest,limit=1] PZSchMS.1Farbe = @e[tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1MoeglicherZug,sort=nearest,limit=1] PZSchMS.1Farbe positioned ^ ^ ^3 run function schach-minispiel:v1spielzug_anzeigen
execute positioned ^-3 ^-1 ^ unless score @e[distance=..2,tag=EtiSchMS.1Bauer,tag=!EtiSchMS.1BauerDoppelZug,scores={PZSchMS.1Spielz=2},sort=nearest,limit=1] PZSchMS.1Farbe = @e[tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1MoeglicherZug,sort=nearest,limit=1] PZSchMS.1Farbe positioned ^ ^ ^3 run function schach-minispiel:v1spielzug_anzeigen
