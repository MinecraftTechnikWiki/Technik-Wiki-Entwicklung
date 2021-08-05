
scoreboard players add VarStBrSy.1Abstand PZStBrSy.1Ausl 1

execute if score VarStBrSy.1Abstand PZStBrSy.1Ausl = VarStBrSy.1Groesse PZStBrSy.1Ausl run function steinbruch-system:v1erstellen_zaun
execute if score VarStBrSy.1Abstand PZStBrSy.1Ausl < VarStBrSy.1Groesse PZStBrSy.1Ausl positioned ^1 ^ ^-1 run function steinbruch-system:v1erstellen_abstand
