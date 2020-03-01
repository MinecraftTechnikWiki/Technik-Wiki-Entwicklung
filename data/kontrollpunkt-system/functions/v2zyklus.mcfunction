# Spieler die noch keine Nummer besitzen erhalten die nächst höhere aktuelle Nummer und sie erhalten dafür ein Etikett.
execute as @p[distance=..50,tag=!EtiKontPS.2Nummer] store result score @s PZKontPS.2Nr run scoreboard players add VarKontPS.2SpielerNummer PZKontPS.2Nr 1
tag @p[distance=..50,tag=!EtiKontPS.2Nummer,scores={PZKontPS.2Nr=1..}] add EtiKontPS.2Nummer

# Wenn Spieler auf einen Diamantblock laufen, führen alle Rüstungsständer, die einen Kontrollpunkt darstellen, eine Punkteprüfung aus, ob sie die gleiche Nummer wieder Spieler besitzen. Nur einer kann die gleiche Nummer besitzen und teleportiert so den Spieler zu sich.
execute as @a[tag=EtiKontPS.2Nummer] at @s if block ~ ~-1 ~ minecraft:diamond_block as @e[type=minecraft:armor_stand,tag=EtiKontPS.2Kontrollpunkt,scores={PZKontPS.2Nr=1..}] if score @s PZKontPS.2Nr = @p PZKontPS.2Nr run teleport @p @s

# Falls der Spieler auf einer goldene Wägeplatte mit Quarzblock getreten ist, wird der bisherige Kontrollpunkt-Rüstungsständer des Spielers mit gleicher Nummer zu diesem teleportiert. Falls dieser sich in einem Radius von zwei Metern aufhält.
execute as @a[tag=EtiKontPS.2Nummer] at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate if block ~ ~-1 ~ minecraft:quartz_block as @e[distance=..2,type=minecraft:armor_stand,tag=EtiKontPS.2Kontrollpunkt,scores={PZKontPS.2Nr=1..}] if score @s PZKontPS.2Nr = @p PZKontPS.2Nr run teleport @s @p

# Wenn der Spieler auf eine Wägeplatte mit Quarzblock tritt und sich kein Kontrollpunkt-Rüstungsständer bisher dort aufhält bekommt er ein Etikett.
execute as @a[tag=EtiKontPS.2Nummer] at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate if block ~ ~-1 ~ minecraft:quartz_block unless entity @e[distance=..2,type=minecraft:armor_stand,scores={PZKontPS.2Nr=1..}] run tag @s add EtiKontPS.2BrauchtKontrollpunkt

# Falls der Spieler auf die Wägeplatte mit Quarzblock getreten ist und es sich Rüstungsständer dort aufhielten, wird geprüft ob sie die gleiche Nummer wie der Spieler besitzen. Wenn nur einer davon nicht mit der Nummer übereinstimmt, wird dem Spieler ebenfalls ein Etikett gegeben.
execute as @a[tag=EtiKontPS.2Nummer,tag=!EtiKontPS.2BrauchtKontrollpunkt] at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate if block ~ ~-1 ~ minecraft:quartz_block as @e[distance=..2,type=minecraft:armor_stand,scores={PZKontPS.2Nr=1..}] unless score @s PZKontPS.2Nr = @p PZKontPS.2Nr run tag @p add EtiKontPS.2BrauchtKontrollpunkt

# Falls doch ein Rüstungsständer dabei war der die gleiche Nummer hatte, wird dem Spieler das Etikett wieder entfernt.
execute as @a[tag=EtiKontPS.2Nummer,tag=EtiKontPS.2BrauchtKontrollpunkt] at @s as @e[distance=..2,type=minecraft:armor_stand,scores={PZKontPS.2Nr=1..}] if score @s PZKontPS.2Nr = @p PZKontPS.2Nr run tag @p remove EtiKontPS.2BrauchtKontrollpunkt

# Der Rüstungsständer der die gleiche Nummer besitzt wird entfernt, falls es einen gab und der Spieler einen Kontrollpunkt braucht. Anschließend bekommt der Spieler eine Nachricht.
execute at @a[tag=EtiKontPS.2BrauchtKontrollpunkt] as @e[type=minecraft:armor_stand,scores={PZKontPS.2Nr=1..}] if score @s PZKontPS.2Nr = @p PZKontPS.2Nr run kill @s
title @a[tag=EtiKontPS.2BrauchtKontrollpunkt] actionbar ["",{"text":"Kontrollpunkt gesetzt","color":"aqua","bold":true}]

# An der Position des Spielers wird der neue Kontrollpunkt-Rüstungsständer erzeugt und er bekommt die gleiche Nummer wie dieser und das entsprechende Etikett wird entfernt.
execute at @a[tag=EtiKontPS.2BrauchtKontrollpunkt] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,NoGravity:true,Marker:true,CustomNameVisible:true,CustomName:'{"text":"Kontrollpunkt","color":"aqua","bold":true}',Tags:["EtiKontPS.2Alle","EtiKontPS.2BrauchtNummer","EtiKontPS.2Kontrollpunkt"] }
execute as @a[tag=EtiKontPS.2BrauchtKontrollpunkt] at @s run scoreboard players operation @e[distance=..2,type=minecraft:armor_stand,tag=EtiKontPS.2BrauchtNummer,sort=nearest,limit=1] PZKontPS.2Nr = @s PZKontPS.2Nr
tag @e[type=minecraft:armor_stand,tag=EtiKontPS.2BrauchtNummer] remove EtiKontPS.2BrauchtNummer
tag @a[tag=EtiKontPS.2BrauchtKontrollpunkt] remove EtiKontPS.2BrauchtKontrollpunkt
