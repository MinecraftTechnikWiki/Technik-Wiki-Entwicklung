
execute as @e[tag=EtiSchMS.1Turm,scores={PZSchMS.1Spielz=0}] if score @s PZSchMS.1Farbe = @e[tag=EtiSchMS.1Koenig,tag=EtiSchMS.1Anklickbar,scores={PZSchMS.1Spielz=0},sort=nearest,limit=1] PZSchMS.1Farbe run tag @s add EtiSchMS.1KoenigsZugTesten

tag @e[tag=EtiSchMS.1KoenigDoppelZug] remove EtiSchMS.1KoenigDoppelZug
execute as @e[tag=EtiSchMS.1KoenigsZugTesten] at @s at @e[distance=..3,tag=EtiSchMS.1Turm,tag=EtiSchMS.1FigurBoden,sort=nearest,limit=1] run function schach-minispiel:v1zug_koenig_turm
execute as @e[tag=EtiSchMS.1KoenigsZugTesten,tag=!EtiSchMS.1KoenigDoppelZug] at @s at @e[tag=EtiSchMS.1Turm,tag=EtiSchMS.1FigurBoden,sort=nearest,limit=1] positioned ^3 ^ ^ if block ~ ~1 ~ #schach-minispiel:v1schachbloecke unless entity @e[distance=..2,tag=EtiSchMS.1Figur] run function schach-minispiel:v1zug_koenig_turm

execute as @e[tag=EtiSchMS.1KoenigsZugTesten,tag=!EtiSchMS.1KoenigDoppelZug] at @s at @e[tag=EtiSchMS.1Turm,tag=EtiSchMS.1FigurBoden,sort=nearest,limit=1] rotated ~180 ~ run function schach-minispiel:v1zug_koenig_turm
execute as @e[tag=EtiSchMS.1KoenigsZugTesten,tag=!EtiSchMS.1KoenigDoppelZug] at @s at @e[tag=EtiSchMS.1Turm,tag=EtiSchMS.1FigurBoden,sort=nearest,limit=1] rotated ~180 ~ positioned ^3 ^ ^ if block ~ ~1 ~ #schach-minispiel:v1schachbloecke unless entity @e[distance=..2,tag=EtiSchMS.1Figur] run function schach-minispiel:v1zug_koenig_turm

tag @e[tag=EtiSchMS.1KoenigsZugTesten] remove EtiSchMS.1KoenigsZugTesten

execute positioned ^3 ^-1 ^ if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1spielzug_anzeigen
execute rotated ~90 ~ positioned ^3 ^-1 ^ if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1spielzug_anzeigen
execute rotated ~180 ~ positioned ^3 ^-1 ^ if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1spielzug_anzeigen
execute rotated ~270 ~ positioned ^3 ^-1 ^ if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1spielzug_anzeigen

execute positioned ^3 ^-1 ^3 if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1spielzug_anzeigen
execute rotated ~90 ~ positioned ^3 ^-1 ^3 if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1spielzug_anzeigen
execute rotated ~180 ~ positioned ^3 ^-1 ^3 if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1spielzug_anzeigen
execute rotated ~270 ~ positioned ^3 ^-1 ^3 if block ~ ~ ~ #schach-minispiel:v1schachbloecke run function schach-minispiel:v1spielzug_anzeigen

summon minecraft:armor_stand ~ ~6 ~ {Invisible:true,NoGravity:true,Tags:["EtiSchMS.1Alle","EtiSchMS.1ZugAuswahl","EtiSchMS.1BodenZugAuswahl","EtiSchMS.1KoenigAufgeben"],Passengers:[{id:"minecraft:falling_block",NoGravity:true,Time:-2147483648,Tags:["EtiSchMS.1Alle","EtiSchMS.1ZugAuswahl","EtiSchMS.1KoenigAufgeben"],BlockState:{Name:"minecraft:red_concrete"}},{id:"minecraft:shulker",NoAI:true,Silent:true,Color:14b,DeathLootTable:"minecraft:empty",CustomNameVisible:true,CustomName:'{"text":"Aufgeben","color":"red","bold":true}',Tags:["EtiSchMS.1Alle","EtiSchMS.1ZugAuswahl","EtiSchMS.1Leuchten","EtiSchMS.1KoenigAufgeben"]}]}
