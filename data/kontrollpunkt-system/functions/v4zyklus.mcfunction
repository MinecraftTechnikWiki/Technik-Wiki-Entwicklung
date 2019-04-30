
execute as @p[distance=..50,tag=!EtiKontPS.4Nummer] store result score @s PZKontPS.4Nr run scoreboard players add #VarKontPS.4SpielerNummer PZKontPS.4Nr 1
tag @p[distance=..50,tag=!EtiKontPS.4Nummer,scores={PZKontPS.4Nr=1..}] add EtiKontPS.4Nummer

execute as @a[tag=EtiKontPS.4Nummer] at @s if block ~ ~-1 ~ minecraft:diamond_block as @e[type=minecraft:armor_stand,scores={PZKontPS.4Nr=1..}] if score @s PZKontPS.4Nr = @p PZKontPS.4Nr run teleport @p @s
execute as @a[tag=EtiKontPS.4Nummer] at @s if block ~ ~-1 ~ minecraft:gold_block as @e[distance=..2,type=minecraft:armor_stand,scores={PZKontPS.4Nr=1..}] if score @s PZKontPS.4Nr = @p PZKontPS.4Nr run teleport @s @p
execute as @a[tag=EtiKontPS.4Nummer] at @s if block ~ ~-1 ~ minecraft:gold_block unless entity @e[distance=..2,type=minecraft:armor_stand,scores={PZKontPS.4Nr=1..}] run tag @s add EtiKontPS.4Kontrollpunkt
execute as @a[tag=EtiKontPS.4Nummer,tag=!EtiKontPS.4Kontrollpunkt] at @s if block ~ ~-1 ~ minecraft:gold_block as @e[distance=..2,type=minecraft:armor_stand,scores={PZKontPS.4Nr=1..}] unless score @s PZKontPS.4Nr = @p PZKontPS.4Nr run tag @p add EtiKontPS.4Kontrollpunkt
execute as @a[tag=EtiKontPS.4Nummer,tag=EtiKontPS.4Kontrollpunkt] at @s as @e[distance=..2,type=minecraft:armor_stand,scores={PZKontPS.4Nr=1..}] if score @s PZKontPS.4Nr = @p PZKontPS.4Nr run tag @p remove EtiKontPS.4Kontrollpunkt

execute at @a[tag=EtiKontPS.4Kontrollpunkt] as @e[type=minecraft:armor_stand,scores={PZKontPS.4Nr=1..}] if score @s PZKontPS.4Nr = @p PZKontPS.4Nr run kill @s

execute at @a[tag=EtiKontPS.4Kontrollpunkt] run summon minecraft:armor_stand ~ ~ ~ {Invisible:true,NoGravity:true,Marker:true,CustomNameVisible:true,CustomName:"{\"text\":\"Kontrollpunkt\",\"color\":\"aqua\",\"bold\":true}",Tags:["EtiKontPS.4Nummer","EtiKontPS.4Alle"] }
execute as @a[tag=EtiKontPS.4Kontrollpunkt] at @s run scoreboard players operation @e[distance=..2,type=minecraft:armor_stand,tag=EtiKontPS.4Nummer,sort=nearest,limit=1] PZKontPS.4Nr = @s PZKontPS.4Nr
tag @e[type=minecraft:armor_stand,tag=EtiKontPS.4Nummer] remove EtiKontPS.4Nummer
tag @a[tag=EtiKontPS.4Kontrollpunkt] remove EtiKontPS.4Kontrollpunkt
