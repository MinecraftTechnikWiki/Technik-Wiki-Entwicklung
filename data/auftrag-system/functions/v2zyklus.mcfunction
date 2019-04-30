# Lässt grüne Partikel bei den Dorfbewohnern, die einen Auftrag für den Spieler haben, entstehen
execute at @e[type=minecraft:villager,tag=EtiAufS.2Alle,tag=EtiAufS.2AuftragVorhanden] run particle minecraft:happy_villager ~ ~1 ~ 0.2 0.2 0.2 0.1 1 force @a[distance=..10]

# Jedesmal wenn man einen Dorfbewohner anklickt, gibt er Sprechlaute von sich
execute at @e[type=minecraft:villager,tag=EtiAufS.2Alle] run playsound minecraft:entity.villager.ambient master @a[distance=..3,scores={PZAufS.2Reden=1..}] ~ ~ ~ 1 0.5 1

# nur einer kann den Auftrag annehmen
# der Auftrag läuft nach einer Zeit aus

# Auftrag 1
execute as @e[type=minecraft:villager,name=Alfred,tag=EtiAufS.2Alle,tag=EtiAufS.2AuftragVorhanden] at @s if entity @a[distance=..3,scores={PZAufS.2Reden=1..}] run function auftrag-system:v2auftrag_alfred

# Wenn der Spieler mit einem Dorfbewohner geredet hat, wird sein entsprechender Punktestand zurück gesetzt
scoreboard players reset @a[scores={PZAufS.2Reden=1..}] PZAufS.2Reden
