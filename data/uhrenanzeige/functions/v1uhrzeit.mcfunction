
scoreboard players set #VarUhrA.1Tick PZUhrA.1Zeichen 0

scoreboard players add @e[type=minecraft:armor_stand,tag=EtiUhrA.1Sekunden] PZUhrA.1Zeichen 1
execute store success score #VarUhrA.1Erfolg PZUhrA.1Zeichen run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1Sekunden,scores={PZUhrA.1Zeichen=10..}] PZUhrA.1Zeichen 0

execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiUhrA.1SekundenZehner] PZUhrA.1Zeichen 1
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 store success score #VarUhrA.1Erfolg PZUhrA.1Zeichen run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1SekundenZehner,scores={PZUhrA.1Zeichen=6..}] PZUhrA.1Zeichen 0


execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiUhrA.1Minuten] PZUhrA.1Zeichen 1
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 store success score #VarUhrA.1Erfolg PZUhrA.1Zeichen run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1Minuten,scores={PZUhrA.1Zeichen=10..}] PZUhrA.1Zeichen 0

execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiUhrA.1MinutenZehner] PZUhrA.1Zeichen 1
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 store success score #VarUhrA.1Erfolg PZUhrA.1Zeichen run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1MinutenZehner,scores={PZUhrA.1Zeichen=6..}] PZUhrA.1Zeichen 0


execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiUhrA.1Stunden] PZUhrA.1Zeichen 1
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 store success score #VarUhrA.1Erfolg PZUhrA.1Zeichen run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1Stunden,scores={PZUhrA.1Zeichen=10..}] PZUhrA.1Zeichen 0

execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiUhrA.1StundenZehner] PZUhrA.1Zeichen 1
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 store success score #VarUhrA.1Erfolg PZUhrA.1Zeichen run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1StundenZehner,scores={PZUhrA.1Zeichen=6..}] PZUhrA.1Zeichen 0

execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1Sekunden] PZUhrA.1Zeichen 0
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1SekundenZehner] PZUhrA.1Zeichen 0
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1Minuten] PZUhrA.1Zeichen 0
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1MinutenZehner] PZUhrA.1Zeichen 0
execute if score #VarUhrA.1Erfolg PZUhrA.1Zeichen matches 1 run scoreboard players set @e[type=minecraft:armor_stand,tag=EtiUhrA.1Stunden] PZUhrA.1Zeichen 0
