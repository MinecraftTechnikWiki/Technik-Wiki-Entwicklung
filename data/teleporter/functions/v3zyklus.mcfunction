
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] at @s if block ~ ~ ~ minecraft:air run tag @s remove EtiTeleP.3Teleporter
execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle,tag=!EtiTeleP.3Teleporter] run setblock ~ ~ ~ minecraft:structure_block{ignoreEntities:true,posX:-2,posY:0,sizeX:5,posZ:-2,sizeY:7,sizeZ:4,mode:"LOAD",name:"teleporter:v3portal"} replace
execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle,tag=!EtiTeleP.3Teleporter] run setblock ~1 ~ ~ minecraft:redstone_block replace
tag @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle,tag=!EtiTeleP.3Teleporter] add EtiTeleP.3Teleporter
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle,tag=!EtiTeleP.3PortalNummer,sort=nearest,limit=1] store result score @s PZTeleP.3Nr run scoreboard players add #VarTeleP.3Nummer PZTeleP.3Nr 1
tag @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle,tag=!EtiTeleP.3PortalNummer,sort=nearest,limit=1] add EtiTeleP.3PortalNummer

execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle] run particle minecraft:portal ~ ~1 ~ 0 1 0 0.7 35 force @a[distance=..15]

execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle] run gamemode adventure @a[distance=..3,gamemode=spectator,scores={PZTeleP.3Nr=-99}]
execute as @a[tag=EtiTeleP.3Nachricht] at @s unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiTeleP.3Alle] run tag @s remove EtiTeleP.3Nachricht
execute as @a[scores={PZTeleP.3Nr=-99}] at @s unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiTeleP.3Alle] run scoreboard players reset @s PZTeleP.3Nr

execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle] at @s run scoreboard players operation @a[distance=..2,gamemode=spectator,scores={PZTeleP.3Nr=-2}] PZTeleP.3Nr = @s PZTeleP.3Nr
execute if entity @p[gamemode=spectator,scores={PZTeleP.3Nr=1..}] store result score #VarTeleP.3Anzahl PZTeleP.3Nr if entity @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle]
scoreboard players add @a[gamemode=spectator,scores={PZTeleP.3Nr=1..}] PZTeleP.3Nr 1
execute as @a[gamemode=spectator,scores={PZTeleP.3Nr=1..}] if score @s PZTeleP.3Nr > #VarTeleP.3Anzahl PZTeleP.3Nr run scoreboard players set @s PZTeleP.3Nr 1
execute as @a[gamemode=spectator,scores={PZTeleP.3Nr=1..}] at @s as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle] if score @s PZTeleP.3Nr = @p PZTeleP.3Nr run teleport @p @s

execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle] at @s run scoreboard players set @a[distance=..2,gamemode=spectator,scores={PZTeleP.3Nr=1..}] PZTeleP.3Nr 0

execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle] as @a[distance=..2,gamemode=!spectator] unless score @s PZTeleP.3Nr matches -99 run gamemode spectator @s
execute as @a[gamemode=spectator] at @s at @e[distance=..2,type=minecraft:armor_stand,tag=EtiTeleP.3Alle,sort=nearest,limit=1] run teleport @s ~ ~1 ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle] at @s if entity @p[distance=..2,gamemode=spectator] run teleport @s ~ ~ ~ ~1 ~

execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle] run scoreboard players enable @a[distance=..2,gamemode=spectator,tag=!EtiTeleP.3Nachricht] PZTeleP.3Nr
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle] at @s run tellraw @a[distance=..2,gamemode=spectator,tag=!EtiTeleP.3Nachricht] ["Teleporter.3:\n",{"text":"Drücke 'T' um in die Chatleiste zu gelangen\n","bold":true},{"text":" [x]","color":"red","hoverEvent":{"action":"show_text","value":{"text":"Klicke hier um hier zu bleiben"} },"clickEvent":{"action":"run_command","value":"/trigger PZTeleP.3Nr set -99"} },{"text":" Teleporter-Auswahl ","color":"gold","bold":true},{"score":{"name":"@s","objective":"PZTeleP.3Nr"},"color":"red"},{"text":" [→]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Klicke für den nächsten Teleporter"} },"clickEvent":{"action":"run_command","value":"/trigger PZTeleP.3Nr set -1"} }]

execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle] at @s run tag @a[distance=..2,gamemode=spectator,tag=!EtiTeleP.3Nachricht] add EtiTeleP.3Nachricht
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle] at @s run tag @a[distance=..2,gamemode=spectator,tag=EtiTeleP.3Nachricht,scores={PZTeleP.3Nr=-1}] remove EtiTeleP.3Nachricht
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Alle] at @s run scoreboard players set @a[distance=..2,gamemode=spectator,tag=!EtiTeleP.3Nachricht,scores={PZTeleP.3Nr=-1}] PZTeleP.3Nr -2
