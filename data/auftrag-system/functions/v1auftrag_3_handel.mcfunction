# Wenn der Spieler mit Bill den Handel abgeschlossen hat, wird Bill seinen Handel wieder einstellen und dem Spieler seine Belohnung geben
execute if entity @a[distance=..3,tag=EtiAufS.1BillZaunHergestellt,scores={PZAufS.1Handel=1..}] run data merge entity @s {Offers:{Recipes:[] } }
tellraw @a[distance=..3,tag=EtiAufS.1BillZaunHergestellt,scores={PZAufS.1Handel=1..}] ["",{"text":"[1/1]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Prima, jetzt kann ich meinen Bereich einzäunen.","color":"gray"}]
execute if entity @a[distance=..3,tag=EtiAufS.1BillZaunHergestellt,scores={PZAufS.1Handel=1..}] run tag @s[tag=EtiAufS.1AuftragVorhanden] remove EtiAufS.1AuftragVorhanden
playsound minecraft:entity.player.levelup master @a[distance=..3,tag=EtiAufS.1BillZaunHergestellt,scores={PZAufS.1Handel=1..}] ~ ~ ~ 1 0.5 1
playsound minecraft:entity.villager.yes master @a[distance=..3,tag=EtiAufS.1BillZaunHergestellt,scores={PZAufS.1Handel=1..}] ~ ~ ~ 1 0.5 1

# Wenn der Spieler dem Dorfbewohner Bill die Auftragsmaterialien gegeben hat, werden die entsprechenden Punktestand-Ziele angepasst
scoreboard players set @a[distance=..3,tag=EtiAufS.1BillZaunHergestellt,scores={PZAufS.1Handel=1..}] PZAufS.1Auftrag 4
scoreboard players set @a[distance=..3,tag=EtiAufS.1BillZaunHergestellt,scores={PZAufS.1Handel=1..}] PZAufS.1Nachr 0
scoreboard players set @a[distance=..3,tag=EtiAufS.1BillZaunHergestellt,scores={PZAufS.1Handel=1..}] PZAufS.1Handel 0

# Die Etiketten für das Herstellen der Auftragsmaterialien werden entfernt
tag @a[distance=..3,tag=EtiAufS.1BillZaunHergestellt,scores={PZAufS.1Nachr=0}] remove EtiAufS.1BillZaunHerstellen
tag @a[distance=..3,tag=EtiAufS.1BillZaunHergestellt,scores={PZAufS.1Nachr=0}] remove EtiAufS.1BillZaunHergestellt
