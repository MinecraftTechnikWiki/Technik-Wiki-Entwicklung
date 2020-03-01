# Wenn ein Teleporter in Form eines Rüstunggständers platziert wurde, wird ihm ein Etikett gegeben und dadurch wird die Plattform durch einen Konstruktionsblock geladen
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Plattform] at @s if block ~ ~ ~ minecraft:air run tag @s remove EtiTeleP.3Plattform
execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter,tag=!EtiTeleP.3Plattform] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-2,posY:0,posZ:-2,name:"teleporter:v3portal"} replace
execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter,tag=!EtiTeleP.3Plattform] run setblock ~1 ~ ~ minecraft:redstone_block replace
tag @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter,tag=!EtiTeleP.3Plattform] add EtiTeleP.3Plattform

# Dem Teleporter wird eine Nummer zugewiesen wenn er noch keine bis jetzt besaß
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter,tag=!EtiTeleP.3PortalNummer,sort=nearest,limit=1] store result score @s PZTeleP.3Nr run scoreboard players add #VarTeleP.3Nummer PZTeleP.3Nr 1
tag @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter,tag=!EtiTeleP.3PortalNummer,sort=nearest,limit=1] add EtiTeleP.3PortalNummer

# An der Stelle des Teleporters werden Portal-Partikel erzeugt, die einem Bereich von 15 Metern gesehen werden können
execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] run particle minecraft:portal ~ ~1 ~ 0 1 0 0.7 35 force @a[distance=..15]

# Spieler die am gewünschten Ort sind, klicken auf den Auslöser um den Teleporter zu verlassen und dadurch erhält der Spieler den Punkt -99
execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] run gamemode adventure @a[distance=..3,gamemode=spectator,scores={PZTeleP.3Nr=-99}]
execute as @a[tag=EtiTeleP.3Nachricht] at @s unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] run tag @s remove EtiTeleP.3Nachricht
execute as @a[scores={PZTeleP.3Nr=-99}] at @s unless entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] run scoreboard players reset @s PZTeleP.3Nr

# Spieler mit dem Punkt -2 möchten zum nächsten Teleporter teleportiert werden und der
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] at @s run scoreboard players operation @a[distance=..2,gamemode=spectator,scores={PZTeleP.3Nr=-2}] PZTeleP.3Nr = @s PZTeleP.3Nr
execute if entity @p[gamemode=spectator,scores={PZTeleP.3Nr=1..}] store result score #VarTeleP.3Anzahl PZTeleP.3Nr if entity @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter]
scoreboard players add @a[gamemode=spectator,scores={PZTeleP.3Nr=1..}] PZTeleP.3Nr 1
execute as @a[gamemode=spectator,scores={PZTeleP.3Nr=1..}] if score @s PZTeleP.3Nr > #VarTeleP.3Anzahl PZTeleP.3Nr run scoreboard players set @s PZTeleP.3Nr 1
execute as @a[gamemode=spectator,scores={PZTeleP.3Nr=1..}] at @s as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] if score @s PZTeleP.3Nr = @p PZTeleP.3Nr run teleport @p @s

# Der Auslöse-Punktestand wird für alle Spieler die noch im Zuschauermodus sind auf null zurückgesetzt, falls sie den Auslöser bereits ausgelöst hatten
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] at @s run scoreboard players set @a[distance=..2,gamemode=spectator,scores={PZTeleP.3Nr=1..}] PZTeleP.3Nr 0

# Wenn sich ein Spieler dem Teleporter nähert ohne dass er zuvor durch einen anderen Teleporter im Zuschauermodus dort hingelangte, so wird er in den Zuschauermodus gesetzt
execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] as @a[distance=..2,gamemode=!spectator] unless score @s PZTeleP.3Nr matches -99 run gamemode spectator @s
execute as @a[gamemode=spectator] at @s at @e[distance=..2,type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter,sort=nearest,limit=1] run teleport @s ~ ~1 ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] at @s if entity @p[distance=..2,gamemode=spectator] run teleport @s ~ ~ ~ ~1 ~

# Alle Spieler die sich im Zuschauermodus in der Nähe des Teleporters befinden erhalten die Auslöser-Möglichkeit und die Auswahl-Nachricht
execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] run scoreboard players enable @a[distance=..2,gamemode=spectator,tag=!EtiTeleP.3Nachricht] PZTeleP.3Nr
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] at @s run tellraw @a[distance=..2,gamemode=spectator,tag=!EtiTeleP.3Nachricht] ["Teleporter.3:\n",{"text":"Drücke 'T' um in die Chatleiste zu gelangen\n","bold":true},{"text":" [x]","color":"red","hoverEvent":{"action":"show_text","value":{"text":"Klicke hier um hier zu bleiben"} },"clickEvent":{"action":"run_command","value":"/trigger PZTeleP.3Nr set -99"} },{"text":" Teleporter-Auswahl ","color":"gold","bold":true},{"score":{"name":"@s","objective":"PZTeleP.3Nr"},"color":"dark_purple","bold":true},{"text":" [→]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Klicke für den nächsten Teleporter"} },"clickEvent":{"action":"run_command","value":"/trigger PZTeleP.3Nr set -1"} }]

# Jeder der die Auswahl-Nachricht erhalten hat, erhält auch ein Etikett und dieses wird entfernt, wenn er sich zu einem anderen Teleporter teleportiert hat, damit er wieder eine erhält
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] at @s run tag @a[distance=..2,gamemode=spectator,tag=!EtiTeleP.3Nachricht] add EtiTeleP.3Nachricht
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] at @s run tag @a[distance=..2,gamemode=spectator,tag=EtiTeleP.3Nachricht,scores={PZTeleP.3Nr=-1}] remove EtiTeleP.3Nachricht
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] at @s run scoreboard players set @a[distance=..2,gamemode=spectator,tag=!EtiTeleP.3Nachricht,scores={PZTeleP.3Nr=-1}] PZTeleP.3Nr -2

# Um den Teleporter zu entfernen wirft man einen Teleporter in Form eines Rüstungsständer in die Nähe des Teleporters, so verschwindet er und man erhält ihn in dem Drop
execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] run data merge entity @e[distance=..3,type=minecraft:item,nbt={Item:{id:"minecraft:armor_stand",Count:1b,tag:{teleporter:"v3gegenstand"} } },sort=nearest,limit=1] {Item:{Count:2b},Tags:["EtiTeleP.3Gegenstand"]}
execute at @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] if entity @e[distance=..3,type=minecraft:item,tag=EtiTeleP.3Gegenstand] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace
execute as @e[type=minecraft:armor_stand,tag=EtiTeleP.3Teleporter] at @s if entity @e[distance=..3,type=minecraft:item,tag=EtiTeleP.3Gegenstand] run kill @s
