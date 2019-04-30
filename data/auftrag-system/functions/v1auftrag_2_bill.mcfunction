# Wenn der Spieler Bill gefunden hat und anspricht, so gibt er die Anweisung, Jones anzusprechen
tellraw @a[distance=..3,tag=EtiAufS.1BillSuchen,scores={PZAufS.1Reden=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Was? Jones hat dich geschickt um zu wissen wo ich bin? Sag ihm es geht mir gut.","color":"yellow","bold":false}]

# Den jenigen den der Spieler nun ansprechen soll erhält das Etikett und der Spieler erhält das Etikett, dass er Bill gefunden hat
execute if entity @a[distance=..3,tag=EtiAufS.1BillSuchen,tag=!EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..}] run tag @e[type=minecraft:villager,name=Jones,tag=!EtiAufS.1AuftragVorhanden] add EtiAufS.1AuftragVorhanden
execute if entity @a[distance=..3,tag=EtiAufS.1BillSuchen,tag=!EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..}] run tag @s[tag=EtiAufS.1AuftragVorhanden] remove EtiAufS.1AuftragVorhanden
tag @a[distance=..3,tag=EtiAufS.1BillSuchen,tag=!EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..}] add EtiAufS.1BillGefunden
tag @a[distance=..3,tag=EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..}] remove EtiAufS.1BillSuchen
