# Lässt grüne Partikel bei den Dorfbewohnern, die einen Auftrag für den Spieler haben, entstehen
execute at @e[type=minecraft:villager,tag=EtiAufS.1Alle,tag=EtiAufS.1AuftragVorhanden] run particle minecraft:happy_villager ~ ~1 ~ 0.2 0.2 0.2 0.1 1 force @a[distance=..10]

# Jedesmal wenn man einen Dorfbewohner anklickt, gibt er Sprechlaute von sich
execute at @e[type=minecraft:villager,tag=EtiAufS.1Alle] run playsound minecraft:entity.villager.ambient master @a[distance=..3,scores={PZAufS.1Reden=1..}] ~ ~ ~ 1 0.5 1

# Auftrag 3
execute as @e[type=minecraft:villager,name=Bill,tag=EtiAufS.1Alle] at @s if entity @a[distance=..3,scores={PZAufS.1Reden=1..,PZAufS.1Auftrag=3}] run function auftrag-system:v1auftrag_3
execute as @e[type=minecraft:villager,name=Bill,tag=EtiAufS.1Alle] at @s if entity @a[distance=..3,scores={PZAufS.1Handel=1..,PZAufS.1Auftrag=3}] run function auftrag-system:v1auftrag_3_handel

# Auftrag 2
execute as @e[type=minecraft:villager,name=Jones,tag=EtiAufS.1Alle] at @s if entity @a[distance=..3,scores={PZAufS.1Reden=1..,PZAufS.1Auftrag=2}] run function auftrag-system:v1auftrag_2
execute as @e[type=minecraft:villager,name=Bill,tag=EtiAufS.1Alle] at @s if entity @a[distance=..3,scores={PZAufS.1Reden=1..,PZAufS.1Auftrag=2}] run function auftrag-system:v1auftrag_2_bill

# Auftrag 1
execute as @e[type=minecraft:villager,name=Jones,tag=EtiAufS.1Alle] at @s if entity @a[distance=..3,scores={PZAufS.1Reden=1..,PZAufS.1Auftrag=1}] run function auftrag-system:v1auftrag_1

# Wenn der Spieler mit einem Dorfbewohner geredet hat, wird sein entsprechender Punktestand zurück gesetzt
scoreboard players reset @a[scores={PZAufS.1Reden=1..}] PZAufS.1Reden
