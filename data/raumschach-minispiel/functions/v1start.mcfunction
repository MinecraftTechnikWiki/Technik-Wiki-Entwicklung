
scoreboard objectives add PZRSchMS.1Brett trigger ["3D-Schach-Minispiel.1: ",{"text":"Schachbrett und Modus","bold":true}]
scoreboard objectives add PZRSchMS.1Farbe dummy ["3D-Schach-Minispiel.1: ",{"text":"Schach-Farbe","bold":true}]
scoreboard objectives add PZRSchMS.1Spielz dummy ["3D-Schach-Minispiel.1: ",{"text":"Schach-Spielzug","bold":true}]

scoreboard objectives add PZRSchMS.1Zeile dummy ["3D-Schach-Minispiel.1: ",{"text":"Schach-Reihe","bold":true}]
scoreboard objectives add PZRSchMS.1Spalte dummy ["3D-Schach-Minispiel.1: ",{"text":"Schach-Zeile","bold":true}]

scoreboard players set KonstRSchMS.1ZWEI PZRSchMS.1Brett 2
scoreboard players set KonstRSchMS.1SCHWARZ PZRSchMS.1Farbe 1908001
scoreboard players set KonstRSchMS.1TUERKIS PZRSchMS.1Farbe 1481884
scoreboard players set KonstRSchMS.1ORANGE PZRSchMS.1Farbe 16351261
scoreboard players set KonstRSchMS.1HELLGRAU PZRSchMS.1Farbe 7567221

scoreboard players set VarRSchMS.1Horde PZRSchMS.1Brett 0
scoreboard players set VarRSchMS.1Variante PZRSchMS.1Brett 0

data merge storage raumschach-minispiel:v1werte {EigRSchMS.1Variante:'{"text":"Raumschach","color":"blue","bold":true}',EigRSchMS.1Horde:'{"text":"falsch","color":"red","bold":true}'}

give @p[distance=..15] minecraft:armor_stand{EigRSchMS.1Alle:true,EigRSchMS.1RaumSchach:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Raumschach","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um ein 3D-Schachfeld zu"','"erzeugen"']},EntityTag:{Marker:true,Tags:["EtiRSchMS.1Alle","EtiRSchMS.1SchachbrettErstellen"] } }

forceload add ~ ~

difficulty easy
