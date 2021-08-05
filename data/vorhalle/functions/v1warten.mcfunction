
scoreboard players add VarVorH.1Warten PZVorH.1Wert 1
execute if score VarVorH.1Warten PZVorH.1Wert matches 600.. run title @a[distance=..15] title ["",{"text":"Warte auf Spieler","color":"yellow","bold":true}]
execute if score VarVorH.1Warten PZVorH.1Wert matches 600.. run title @a[distance=..15] subtitle ["",{"text":"Mindestanzahl == ","color":"gray","bold":true},{"score":{"name":"VarVorH.1Min","objective":"PZVorH.1Wert"},"color":"dark_purple","bold":true}]
execute if score VarVorH.1Warten PZVorH.1Wert matches 600.. run scoreboard players set VarVorH.1Warten PZVorH.1Wert 0

execute if entity @s[tag=EtiVorH.1Zaehler] run scoreboard players set VarVorH.1Warten PZVorH.1Wert 0
execute if entity @s[tag=EtiVorH.1Zaehler] run title @a[distance=..15] title ["",{"text":"Zu wenig Spieler","color":"red","bold":true}]
execute if entity @s[tag=EtiVorH.1Zaehler] run title @a[distance=..15] subtitle ["",{"text":"Countdown abgebrochen","color":"gray","bold":true}]
