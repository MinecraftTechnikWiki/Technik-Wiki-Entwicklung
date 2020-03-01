# Wenn Kohle in der Nähe des Bohrers gedroppt wurde, wird ihr ein Etikett gegeben, damit es schneller identifiziert werden kann
execute as @e[type=minecraft:armor_stand,tag=EtiStBrSy.1Bohrer] at @s run tag @e[distance=..3,type=minecraft:item,tag=!EtiStBrSy.1Kohle,nbt={Item:{id:"minecraft:coal"} }] add EtiStBrSy.1Kohle

# Die Anzahl der Kohlestücke als Wert wird in den Punktestand gespeichert
execute as @e[type=minecraft:armor_stand,tag=EtiStBrSy.1Bohrer] at @s as @e[distance=..3,type=minecraft:item,tag=EtiStBrSy.1Kohle,sort=nearest,limit=1] store result score @s PZStBrSy.1Bohr run data get entity @s Item.Count

# Die Anzahl der Kohle wird mit dem Wert 1000 multipliziert und anschließend auf den Bohrer übertragen
execute as @e[type=minecraft:armor_stand,tag=EtiStBrSy.1Bohrer] at @s if entity @e[distance=..3,type=minecraft:item,tag=EtiStBrSy.1Kohle,sort=nearest,limit=1] store result score @s PZStBrSy.1Bohr run scoreboard players operation @e[distance=..3,type=minecraft:item,tag=EtiStBrSy.1Kohle,sort=nearest,limit=1] PZStBrSy.1Bohr *= KonstStBrSy.1TAUSEND PZStBrSy.1Bohr

# Die in der Nähe des Bohrers gedroppte Kohle wird entfernt
execute as @e[type=minecraft:armor_stand,tag=EtiStBrSy.1Bohrer] at @s run kill @e[distance=..3,type=minecraft:item,tag=EtiStBrSy.1Kohle,sort=nearest,limit=1]

# Wenn der Spieler sich dem Bohrer nähert, und dieser noch einen Bohrwert über null besitzt, wird der Bohrer vorauseilen und in Blickrichtung ein Loch vor ihm graben
execute as @e[type=minecraft:armor_stand,tag=EtiStBrSy.1Bohrer,scores={PZStBrSy.1Bohr=1..}] at @s if entity @p[distance=..6] run fill ^1 ^ ^ ^-1 ^2 ^1 minecraft:air destroy
execute as @e[type=minecraft:armor_stand,tag=EtiStBrSy.1Bohrer,scores={PZStBrSy.1Bohr=1..}] at @s rotated as @p[distance=..6] rotated ~ 0 run teleport @s ^ ^ ^0.5 ~ ~

# Solange der Bohrer einen Wert von mindestens eins hat, werden Partikel angezeigt und jeden Tick wird der Wert um eins reduziert
execute at @e[type=minecraft:armor_stand,tag=EtiStBrSy.1Bohrer,scores={PZStBrSy.1Bohr=1..}] run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.01 10 force @a[distance=..25]
scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiStBrSy.1Bohrer,scores={PZStBrSy.1Bohr=1..}] PZStBrSy.1Bohr 1
