#say bauer
execute if entity @e[distance=..2,scores={PZRSchMS.1Spielz=0}] positioned ^ ^-1 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke unless entity @e[distance=..2,tag=EtiRSchMS.1Figur] positioned ^ ^ ^5 unless entity @e[distance=..2,tag=EtiRSchMS.1Figur] if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen

execute positioned ^ ^-1 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke unless entity @e[distance=..2,tag=EtiRSchMS.1Figur] run function raumschach-minispiel:v1spielzug_anzeigen

execute positioned ~ ~7 ~ if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke unless entity @e[distance=..2,tag=EtiRSchMS.1Figur] run function raumschach-minispiel:v1spielzug_anzeigen

execute positioned ~ ~-9 ~ if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke unless entity @e[distance=..2,tag=EtiRSchMS.1Figur] run function raumschach-minispiel:v1spielzug_anzeigen

execute positioned ^5 ^-1 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke positioned ~-0.5 ~ ~-0.5 unless score @e[dx=1,dy=4,dz=1,tag=EtiRSchMS.1Anklickbar,sort=nearest,limit=1] PZRSchMS.1Farbe = @e[tag=EtiRSchMS.1Anklickbar,tag=EtiRSchMS.1MoeglicherZug,sort=nearest,limit=1] PZRSchMS.1Farbe positioned ~0.5 ~ ~0.5 run function raumschach-minispiel:v1spielzug_anzeigen
execute positioned ^-5 ^-1 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke positioned ~-0.5 ~ ~-0.5 unless score @e[dx=1,dy=4,dz=1,tag=EtiRSchMS.1Anklickbar,sort=nearest,limit=1] PZRSchMS.1Farbe = @e[tag=EtiRSchMS.1Anklickbar,tag=EtiRSchMS.1MoeglicherZug,sort=nearest,limit=1] PZRSchMS.1Farbe positioned ~0.5 ~ ~0.5 run function raumschach-minispiel:v1spielzug_anzeigen

execute positioned ^ ^7 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke positioned ~-0.5 ~ ~-0.5 unless score @e[dx=1,dy=4,dz=1,tag=EtiRSchMS.1Anklickbar,sort=nearest,limit=1] PZRSchMS.1Farbe = @e[tag=EtiRSchMS.1Anklickbar,tag=EtiRSchMS.1MoeglicherZug,sort=nearest,limit=1] PZRSchMS.1Farbe positioned ~0.5 ~ ~0.5 run function raumschach-minispiel:v1spielzug_anzeigen
execute positioned ^ ^-9 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke positioned ~-0.5 ~ ~-0.5 unless score @e[dx=1,dy=4,dz=1,tag=EtiRSchMS.1Anklickbar,sort=nearest,limit=1] PZRSchMS.1Farbe = @e[tag=EtiRSchMS.1Anklickbar,tag=EtiRSchMS.1MoeglicherZug,sort=nearest,limit=1] PZRSchMS.1Farbe positioned ~0.5 ~ ~0.5 run function raumschach-minispiel:v1spielzug_anzeigen

execute positioned ^5 ^-1 ^ unless score @e[distance=..2,tag=EtiRSchMS.1Bauer,tag=!EtiRSchMS.1BauerDoppelZug,scores={PZRSchMS.1Spielz=2},sort=nearest,limit=1] PZRSchMS.1Farbe = @e[tag=EtiRSchMS.1Anklickbar,tag=EtiRSchMS.1MoeglicherZug,sort=nearest,limit=1] PZRSchMS.1Farbe positioned ^ ^ ^5 run function raumschach-minispiel:v1spielzug_anzeigen
execute positioned ^-5 ^-1 ^ unless score @e[distance=..2,tag=EtiRSchMS.1Bauer,tag=!EtiRSchMS.1BauerDoppelZug,scores={PZRSchMS.1Spielz=2},sort=nearest,limit=1] PZRSchMS.1Farbe = @e[tag=EtiRSchMS.1Anklickbar,tag=EtiRSchMS.1MoeglicherZug,sort=nearest,limit=1] PZRSchMS.1Farbe positioned ^ ^ ^5 run function raumschach-minispiel:v1spielzug_anzeigen

execute if entity @e[distance=..2,scores={PZRSchMS.1Spielz=6..}] positioned as @e[tag=EtiRSchMS.1ZugAuswahl,tag=EtiRSchMS.1BodenZugAuswahl,sort=furthest,limit=3] if block ^ ^-3 ^-20 #raumschach-minispiel:v1schachbloecke unless block ^ ^-3 ^-25 #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1zug_bauer_wandlung
