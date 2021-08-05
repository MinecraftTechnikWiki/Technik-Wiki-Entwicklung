
setblock ~ ~ ~ minecraft:oak_fence replace

scoreboard players add VarStBrSy.1AktuelleGroesse PZStBrSy.1Ausl 1
execute if score VarStBrSy.1AktuelleGroesse PZStBrSy.1Ausl < VarStBrSy.1Groesse PZStBrSy.1Ausl positioned ^ ^ ^1 run function steinbruch-system:v1erstellen_zaun
