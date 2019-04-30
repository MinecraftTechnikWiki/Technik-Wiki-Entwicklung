# Wenn der Spieler mit dem Dorfbewohner Jones redet, wird sein Punktestand für die Nachricht eingestellt
scoreboard players add @a[distance=..3,scores={PZAufS.1Reden=1..}] PZAufS.1Nachr 1
scoreboard players set @a[distance=..3,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=4..}] PZAufS.1Nachr 1

# Wenn der Spieler mit Bill gesprochen und damit gefunden hat, dann gibt Jones dem Spieler die Belohnung
tellraw @a[distance=..3,tag=EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Danke, dass du nach ihm geschaut hast.","color":"gray"}]
execute if entity @a[distance=..3,tag=EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] run tag @e[type=minecraft:villager,name=Bill,tag=!EtiAufS.1AuftragVorhanden] add EtiAufS.1AuftragVorhanden
execute if entity @a[distance=..3,tag=EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] run tag @s[tag=EtiAufS.1AuftragVorhanden] remove EtiAufS.1AuftragVorhanden
playsound minecraft:entity.player.levelup master @a[distance=..3,tag=EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] ~ ~ ~ 1 0.5 1
experience add @a[distance=..3,tag=EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] 5 points
give @a[distance=..3,tag=EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] minecraft:emerald 1
scoreboard players set @a[distance=..3,tag=EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] PZAufS.1Auftrag 3
scoreboard players set @a[distance=..3,tag=EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] PZAufS.1Nachr 0
tag @a[distance=..3,tag=EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=0}] remove EtiAufS.1BillGefunden

# Nachrichten an den Spieler. Jones gibt den Auftrag Bill zu suchen
tellraw @a[distance=..3,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1}] ["",{"text":"[1/3]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Weißt du wo sich mein Freund","color":"yellow"},{"text":" [Bill] ","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Suche Bill"} } },{"text":"befindet?","color":"yellow"} ]
tellraw @a[distance=..3,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=2}] ["",{"text":"[2/3]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Ich glaube er spielt schon wieder im Wald, bin mir aber nicht sicher.","color":"yellow","bold":false}]
tellraw @a[distance=..3,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=3}] ["",{"text":"[3/3]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Viel mehr Angaben kann ich dir nicht machen, das ist alles was ich weiß.","color":"yellow","bold":false}]

# Wenn der Spieler Jones anklickt, erhält er den Auftrag Bill zu suchen (Etikett)
execute if entity @a[distance=..3,tag=!EtiAufS.1BillSuchen,tag=!EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] run tag @e[type=minecraft:villager,name=Bill,tag=!EtiAufS.1AuftragVorhanden] add EtiAufS.1AuftragVorhanden
execute if entity @a[distance=..3,tag=!EtiAufS.1BillSuchen,tag=!EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] run tag @s[tag=EtiAufS.1AuftragVorhanden] remove EtiAufS.1AuftragVorhanden
tag @a[distance=..3,tag=!EtiAufS.1BillSuchen,tag=!EtiAufS.1BillGefunden,scores={PZAufS.1Reden=1..,PZAufS.1Nachr=1..}] add EtiAufS.1BillSuchen
