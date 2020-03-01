
execute as @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine] at @s unless entity @e[distance=2..20,type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine] as @p[distance=..10,tag=EtiKanaBM.1SpielerAngel,scores={PZKanaBM.1Wert=11}] rotated ~180 0 run function kanalbaumaschine:v1material
execute at @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine] if entity @e[distance=2..20,type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine] run tellraw @p[distance=..10,tag=EtiKanaBM.1SpielerAngel,scores={PZKanaBM.1Wert=11}] ["Kanalbaumaschine.1: ",{"text":"Es befindet sich eine weitere Kanalbaumaschine in der Nähe, daher wurde der Bauvorgang abgebrochen. Entferne eine Kanalbaumaschine mit der Angel um weiter bauen zu können.","bold":true}]


execute as @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Erstellen] at @s unless entity @e[distance=..20,type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine] run function kanalbaumaschine:v1erstellen
execute as @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Erstellen] at @s if entity @e[distance=..20,type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine] run function kanalbaumaschine:v1entfernen


execute as @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine] at @s if entity @p[distance=..10] rotated ~ 0 run function kanalbaumaschine:v1ausrichtung


execute at @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine] if entity @e[distance=..2,type=minecraft:fishing_bobber] run function kanalbaumaschine:v1entfernen


execute at @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine] run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Tempomat,name="wahr",sort=nearest,limit=1] PZKanaBM.1Wert 1
execute at @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine] run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Tempomat,name="wahr",scores={PZKanaBM.1Wert=4..},sort=nearest,limit=1] PZKanaBM.1Wert 0
execute at @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Baumaschine] at @e[type=minecraft:armor_stand,tag=EtiKanaBM.1Tempomat,name="wahr",scores={PZKanaBM.1Wert=1},sort=nearest,limit=1] run scoreboard players set @p[distance=..10] PZKanaBM.1Wert 11
