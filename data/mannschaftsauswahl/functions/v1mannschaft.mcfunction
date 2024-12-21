# Der Wert des Zählers wird auf 15 gesetzt.
scoreboard players set VarManSA.1Beginnen PZManSA.1Wert 15

team join TMManSA.1Team1 @a[scores={PZManSA.1Wert=1}]
team join TMManSA.1Team2 @a[scores={PZManSA.1Wert=2}]

# Die Spieler erhalten in ihrer Farbe eine Titelnachricht.
title @a[team=TMManSA.1Team1] title ["",{"text":"Mannschaft 1!","color":"red","bold":true}]
title @a[team=TMManSA.1Team2] title ["",{"text":"Mannschaft 2!","color":"blue","bold":true}]

# Alle Spieler werden auf der Plattform verteilt.
spreadplayers ~ ~ 2 4 true @a[tag=EtiManSA.1InWartesaal]
