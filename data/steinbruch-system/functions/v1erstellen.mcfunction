
execute if entity @s[tag=EtiStBrSy.1Erstellen] run scoreboard players set VarStBrSy.1Zahl PZStBrSy.1Ausl 0
tag @s[tag=EtiStBrSy.1Erstellen] remove EtiStBrSy.1Erstellen

scoreboard players add VarStBrSy.1Zahl PZStBrSy.1Ausl 1

scoreboard players set VarStBrSy.1Abstand PZStBrSy.1Ausl 0
scoreboard players operation VarStBrSy.1AktuelleGroesse PZStBrSy.1Ausl = VarStBrSy.1Groesse PZStBrSy.1Ausl
scoreboard players operation VarStBrSy.1AktuelleGroesse PZStBrSy.1Ausl *= KonstStBrSy.1MINUSEINS PZStBrSy.1Ausl
execute positioned ^1 ^ ^-1 run function steinbruch-system:v1erstellen_abstand

execute if score VarStBrSy.1Zahl PZStBrSy.1Ausl matches 1..3 rotated ~90 0 run function steinbruch-system:v1erstellen
