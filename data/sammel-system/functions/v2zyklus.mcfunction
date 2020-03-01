# Falls der Spieler die Spawn-Eier nicht gedroppt hat, sondern mit einem Rechtsklick die Kreatur erzeugt, wird ihm die Nachricht ausgegeben und die Kreatur wird entfernt.
execute at @e[tag=EtiSamS.2KeinSammelEi] run tellraw @a[distance=..5] ["Sammel-System.2: ",{"text":"Droppe die Sammel-Eier mit der Taste Q!","bold":true}]
kill @e[tag=EtiSamS.2KeinSammelEi]

# Wenn der Spieler ein Spawn-Ei droppt, sich aber ein Ei bereits in seiner unmittelbaren Nähe befindet, wird ihm ein Etikett gegeben um dann von ihm aus das geworfene Spawn-Ei zu entfernen. Er erhält daraufhin die Daten, wie viele Spieler bisher das Sammel-Ei gefunden haben.
execute as @a[scores={PZSamS.2Wurf=1..}] at @s if entity @e[distance=..2,type=minecraft:item,tag=EtiSamS.2SammelEi,sort=nearest,limit=1] run tag @s add EtiSamS.2SammelEiZuNah
execute at @a[tag=EtiSamS.2SammelEiZuNah,scores={PZSamS.2Wurf=1..}] if entity @e[distance=..2,type=minecraft:item,tag=EtiSamS.2SammelEi,sort=nearest,limit=1] run kill @e[distance=..2,type=minecraft:item,tag=!EtiSamS.2SammelEi,sort=nearest,limit=1]
execute as @a[tag=EtiSamS.2SammelEiZuNah,scores={PZSamS.2Wurf=1..}] at @s if entity @e[type=minecraft:item,tag=EtiSamS.2SammelEi,distance=..2,sort=nearest,limit=1] run tellraw @s ["Sammel-System.2:\n",{"text":"Dieses Sammel-Ei wurde von ","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecraft:item,tag=EtiSamS.2EiNummer,distance=..2,sort=nearest,limit=1]","objective":"PZSamS.2Anz"},"color":"dark_purple","bold":true},{"text":" Spielern entdeckt","bold":true,"color":"yellow"} ]

# Wenn der Spieler nicht zu nah bei einem Sammel-Ei war, wird von ihm aus die Erstellen-Funktion aufgerufen. Danach wird das Etikett, falls er es hat wieder entfernt und sein Wert für das Werfen von Drops wird auf null zurück gesetzt.
execute as @a[tag=!EtiSamS.2SammelEiZuNah,scores={PZSamS.2Wurf=1..}] at @s run function sammel-system:v2erstellen
tag @a[tag=EtiSamS.2SammelEiZuNah,scores={PZSamS.2Wurf=1..}] remove EtiSamS.2SammelEiZuNah
scoreboard players set @a[scores={PZSamS.2Wurf=1..}] PZSamS.2Wurf 0

# Jeder Spieler erhält eine Nummer, wenn er noch keine besitzt und anschließend ein Etikett.
execute as @p[tag=!EtiSamS.2Nummer] store result score @s PZSamS.2Nr run scoreboard players add #VarSamS.2SpielerNummer PZSamS.2Nr 1
tag @p[tag=!EtiSamS.2Nummer] add EtiSamS.2Nummer

# Wenn in der Nähe des Sammel-Eis ein Spieler ist, wird die Sammeln-Funktion aufgerufen.
execute as @e[type=minecraft:item,tag=EtiSamS.2SammelEi] at @s if entity @p[distance=..2] run function sammel-system:v2sammeln

# Wenn in der Nähe eines Sammel-Eis ein Spieler ist, der noch nicht das Etikett für alle Eier besitzt, sich aufhält, aber die maximale Anzahl besitzt, so erhalten alle Spieler die ebenfalls die Eier Sammeln die Nachricht, dass dieser Spieler alle Eier eingesammelt hat. Anschließend erhält er ein Etikett.
execute at @e[type=minecraft:item,tag=EtiSamS.2SammelEi] as @p[distance=..2,tag=!EtiSamS.2MaxEierGefunden] if score @s PZSamS.2Anz = #VarSamS.2Max PZSamS.2Anz run tellraw @a[scores={PZSamS.2Anz=0..}] ["Sammel-System.2:\n",{"text":"Der Spieler ","bold":true},{"selector":"@s"},{"text":" hat alle ","bold":true},{"score":{"name":"#VarSamS.2Max","objective":"PZSamS.2Anz"},"color":"dark_purple","bold":true},{"text":" Sammel-Eier gefunden!","bold":true} ]
execute at @e[type=minecraft:item,tag=EtiSamS.2SammelEi] as @p[distance=..2,tag=!EtiSamS.2MaxEierGefunden] if score @s PZSamS.2Anz = #VarSamS.2Max PZSamS.2Anz run tag @s add EtiSamS.2MaxEierGefunden

# Das durch die Sammeln-Funktion vergebene Etikett wird wieder entfernt, wenn der Spieler nicht mehr beim Ei ist.
execute as @a[tag=EtiSamS.2BeimEi] at @s unless entity @e[distance=..2,type=minecraft:item,tag=EtiSamS.2SammelEi] run tag @s remove EtiSamS.2BeimEi
