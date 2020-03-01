# Der Rüstungsständer erhält ein Etikett für sich selbst, sodass er von den anderen unterschieden werden kann
tag @s add EtiObjSt.10Selbst

# Alle Rüstungsständer außer sich selbst wird die Nummer in die Vergleichsnummer gespeichert, damit sie anschließend von dem eigenen Rüstungsständer die Nummer abgezogen werden kann
execute as @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,tag=!EtiObjSt.10Selbst,scores={PZObjSt.10Nr=1..}] run scoreboard players operation @s PZObjSt.10Vergl = @s PZObjSt.10Nr
execute as @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,tag=!EtiObjSt.10Selbst,scores={PZObjSt.10Nr=1..}] run scoreboard players operation @s PZObjSt.10Vergl -= @e[type=minecraft:armor_stand,tag=EtiObjSt.10Alle,tag=EtiObjSt.10Selbst] PZObjSt.10Laenge

# Das Etikett wird wieder entfernt und der Rüstungsständer folgt dem Vorgänger, denn dieser muss den Vergleichswert null besitzen
tag @s remove EtiObjSt.10Selbst
teleport @s ^ ^ ^0.1 facing entity @e[distance=0.4..,sort=nearest,limit=1,type=minecraft:armor_stand,tag=EtiObjSt.10Alle,scores={PZObjSt.10Vergl=0}] feet
