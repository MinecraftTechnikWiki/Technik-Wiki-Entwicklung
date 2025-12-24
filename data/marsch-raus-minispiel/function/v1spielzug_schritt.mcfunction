
execute if block ^ ^-1 ^2 minecraft:black_concrete run tag @s add EtiMADNMS.1Vorwaerts
execute if entity @s[tag=!EtiMADNMS.1Vorwaerts] if block ^2 ^-1 ^ minecraft:black_concrete at @s run teleport @s ~ ~ ~ ~-90 ~
execute if entity @s[tag=!EtiMADNMS.1Vorwaerts] if block ^-2 ^-1 ^ minecraft:black_concrete at @s run teleport @s ~ ~ ~ ~90 ~

execute positioned ^-3 ^ ^ if block ^1 ^-1 ^ minecraft:light_gray_concrete if score @n[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Ziel] PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team positioned ^3 ^ ^3 if score @n[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Startfeld,tag=EtiMADNMS.1Team] PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team at @s run teleport @s ~ ~ ~ ~90 ~

tag @s remove EtiMADNMS.1Vorwaerts

scoreboard players remove @s PZMADNMS.1Drop 1
execute if entity @s[tag=!EtiMADNMS.1SchrittAbrechen,scores={PZMADNMS.1Drop=0..}] if block ^ ^-1 ^2 minecraft:white_concrete if block ^ ^-1 ^3 minecraft:white_concrete run tag @s add EtiMADNMS.1SchrittAbrechen

execute if entity @s[tag=!EtiMADNMS.1SchrittAbrechen,scores={PZMADNMS.1Drop=-1}] if score @n[distance=..1,type=minecraft:armor_stand,tag=EtiMADNMS.1Figur] PZMADNMS.1Team = VarMADNMS.1Farbe PZMADNMS.1Team run tag @s add EtiMADNMS.1SchrittAbrechen

teleport @s[tag=!EtiMADNMS.1SchrittAbrechen,scores={PZMADNMS.1Drop=-1}] ~ ~ ~ ~ ~
execute rotated as @s[tag=!EtiMADNMS.1SchrittAbrechen,scores={PZMADNMS.1Drop=0..}] positioned ^ ^ ^3 run function marsch-raus-minispiel:v1spielzug_schritt

teleport @s[tag=EtiMADNMS.1SchrittAbrechen] ~ ~ ~ ~ ~
