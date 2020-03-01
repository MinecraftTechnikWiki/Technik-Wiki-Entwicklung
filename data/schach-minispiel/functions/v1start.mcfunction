scoreboard objectives add PZSchMS.1Brett trigger ["Schach-Minispiel.1: ",{"text":"Schachbrett und Modus","bold":true}]
scoreboard objectives add PZSchMS.1Farbe dummy ["Schach-Minispiel.1: ",{"text":"Schach-Farbe","bold":true}]
scoreboard objectives add PZSchMS.1Spielz dummy ["Schach-Minispiel.1: ",{"text":"Schach-Spielzug","bold":true}]

scoreboard players set KonstSchMS.1ZWEI PZSchMS.1Brett 2
scoreboard players set KonstSchMS.1ACHT PZSchMS.1Brett 8
scoreboard players set KonstSchMS.1SCHWARZ PZSchMS.1Farbe 1908001
scoreboard players set KonstSchMS.1TUERKIS PZSchMS.1Farbe 1481884
scoreboard players set KonstSchMS.1ORANGE PZSchMS.1Farbe 16351261
scoreboard players set KonstSchMS.1HELLGRAU PZSchMS.1Farbe 7567221

scoreboard players set VarSchMS.1Horde PZSchMS.1Brett 0
scoreboard players set VarSchMS.1VierSchach PZSchMS.1Brett 0

difficulty easy

give @p[distance=..15] minecraft:armor_stand{schach-minispiel:"v1gegenstand",display:{Lore:['"Platziere den Rüstungsständer"','"um ein Schachfeld zu"','"erzeugen"']},EntityTag:{Marker:true,Tags:["EtiSchMS.1Alle","EtiSchMS.1SchachbrettErstellen"]}}
