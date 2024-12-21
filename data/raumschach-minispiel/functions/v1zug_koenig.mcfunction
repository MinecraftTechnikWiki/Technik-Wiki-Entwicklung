
execute positioned ^5 ^-1 ^ if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~90 ~ positioned ^5 ^-1 ^ if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~180 ~ positioned ^5 ^-1 ^ if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~270 ~ positioned ^5 ^-1 ^ if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen

execute positioned ^5 ^-1 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~90 ~ positioned ^5 ^-1 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~180 ~ positioned ^5 ^-1 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~270 ~ positioned ^5 ^-1 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen

execute positioned ~ ~7 ~ if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute positioned ~ ~-9 ~ if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen

execute positioned ^ ^7 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~90 ~ positioned ^ ^7 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~180 ~ positioned ^ ^7 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~270 ~ positioned ^ ^7 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen

execute positioned ^ ^-9 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~90 ~ positioned ^ ^-9 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~180 ~ positioned ^ ^-9 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen
execute rotated ~270 ~ positioned ^ ^-9 ^5 if block ~ ~ ~ #raumschach-minispiel:v1schachbloecke run function raumschach-minispiel:v1spielzug_anzeigen

summon minecraft:armor_stand ^ ^4 ^ {Invisible:true,NoGravity:true,Tags:["EtiRSchMS.1Alle","EtiRSchMS.1ZugAuswahl","EtiRSchMS.1BodenZugAuswahl","EtiRSchMS.1KoenigAufgeben"],Passengers:[{id:"minecraft:falling_block",NoGravity:true,Time:-2147483648,Tags:["EtiRSchMS.1Alle","EtiRSchMS.1ZugAuswahl","EtiRSchMS.1KoenigAufgeben"],BlockState:{Name:"minecraft:red_concrete"} },{id:"minecraft:shulker",NoAI:true,Silent:true,Color:14b,DeathLootTable:"minecraft:empty",CustomNameVisible:true,CustomName:'{"text":"Aufgeben","color":"red","bold":true}',Tags:["EtiRSchMS.1Alle","EtiRSchMS.1ZugAuswahl","EtiRSchMS.1Leuchten","EtiRSchMS.1KoenigAufgeben"]}]}
