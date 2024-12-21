
scoreboard players operation VarTowDefMS.1IstNull PZTowDefMS.1Wert = VarTowDefMS.1Beginnen PZTowDefMS.1Wert
scoreboard players operation VarTowDefMS.1IstNull PZTowDefMS.1Wert %= KonstTowDefMS.1FUENF PZTowDefMS.1Wert

execute store success score VarTowDefMS.1Ausgabe PZTowDefMS.1Wert if score VarTowDefMS.1Beginnen PZTowDefMS.1Wert matches 1..5
execute if score VarTowDefMS.1Beginnen PZTowDefMS.1Wert matches 1.. if score VarTowDefMS.1IstNull PZTowDefMS.1Wert matches 0 run scoreboard players set VarTowDefMS.1Ausgabe PZTowDefMS.1Wert 1

execute if score VarTowDefMS.1Ausgabe PZTowDefMS.1Wert matches 1 run tellraw @a[team=TMTowDefMS.1Lobby] ["Tower-Defense-Minispiel.1:\n",{"storage":"tower-defense-minispiel:v1daten","nbt":"\"EigTowDefMS.1Name\"","interpret":true},{"text":"Die Runde beginnt in ","color":"green","bold":true},{"score":{"name":"VarTowDefMS.1Beginnen","objective":"PZTowDefMS.1Wert"},"color":"dark_purple","bold":true},{"text":" Sekunden.","color":"green","bold":true}]

execute if score VarTowDefMS.1Beginnen PZTowDefMS.1Wert matches 11..15 run title @a[team=TMTowDefMS.1Lobby] title ["",{"score":{"name":"VarTowDefMS.1Beginnen","objective":"PZTowDefMS.1Wert"},"color":"green","bold":true}]
execute if score VarTowDefMS.1Beginnen PZTowDefMS.1Wert matches 6..10 run title @a[team=TMTowDefMS.1Lobby] title ["",{"score":{"name":"VarTowDefMS.1Beginnen","objective":"PZTowDefMS.1Wert"},"color":"yellow","bold":true}]
execute if score VarTowDefMS.1Beginnen PZTowDefMS.1Wert matches 1..5 run title @a[team=TMTowDefMS.1Lobby] title ["",{"score":{"name":"VarTowDefMS.1Beginnen","objective":"PZTowDefMS.1Wert"},"color":"red","bold":true}]

execute if score VarTowDefMS.1Beginnen PZTowDefMS.1Wert matches 1..5 run playsound minecraft:block.note_block.chime master @a[team=TMTowDefMS.1Lobby] ~ ~ ~ 1 0.6 1
execute if score VarTowDefMS.1Beginnen PZTowDefMS.1Wert matches 0 run playsound minecraft:block.note_block.chime master @a[team=TMTowDefMS.1Lobby] ~ ~ ~ 1 0.7 1

execute if score VarTowDefMS.1Beginnen PZTowDefMS.1Wert matches 1.. run return run scoreboard players remove VarTowDefMS.1Beginnen PZTowDefMS.1Wert 1

scoreboard players set VarTowDefMS.1Spielende PZTowDefMS.1Wert 0
scoreboard players set VarTowDefMS.1Befristet PZTowDefMS.1Wert 0
scoreboard players set VarTowDefMS.1Zaehlen PZTowDefMS.1Wert 0
scoreboard players set VarTowDefMS.1Spielen PZTowDefMS.1Wert 1
scoreboard players set VarTowDefMS.1Beenden PZTowDefMS.1Wert 16
scoreboard players set VarTowDefMS.1NeueWelle PZTowDefMS.1Wert 15

execute at @s run tag @a[distance=..50,team=TMTowDefMS.1Lobby] add EtiTowDefMS.1Spielen

title @a[tag=EtiTowDefMS.1Spielen] title ["",{"text":"Spiel startet!","color":"blue","bold":true}]

clear @a[tag=EtiTowDefMS.1Spielen]

scoreboard players set @a[tag=EtiTowDefMS.1Spielen] PZTowDefMS.1Versuch 10

team join TMTowDefMS.1Team1 @a[scores={PZTowDefMS.1Wert=1}]
team join TMTowDefMS.1Team2 @a[scores={PZTowDefMS.1Wert=2}]

# Die Spieler erhalten in ihrer Farbe eine Titelnachricht.
title @a[team=TMTowDefMS.1Team1] title ["",{"text":"Mannschaft 1!","color":"red","bold":true}]
title @a[team=TMTowDefMS.1Team2] title ["",{"text":"Mannschaft 2!","color":"blue","bold":true}]

item replace entity @a[team=TMTowDefMS.1Team1] armor.head with minecraft:leather_helmet[minecraft:enchantments={levels:{binding_curse:1} },minecraft:custom_data={EigTowDefMS.1Alle:true},minecraft:dyed_color={rgb:16711680}]
item replace entity @a[team=TMTowDefMS.1Team2] armor.head with minecraft:leather_helmet[minecraft:enchantments={levels:{binding_curse:1} },minecraft:custom_data={EigTowDefMS.1Alle:true},minecraft:dyed_color={rgb:255}]

bossbar set tower-defense-minispiel:v1lobby players @a[team=TMTowDefMS.1Lobby]
bossbar set tower-defense-minispiel:v1lobby name ["",{"text":"Lobby - Spieler anwesend ","bold":true},{"score":{"name":"VarTowDefMS.1Wartende","objective":"PZTowDefMS.1Wert"},"color":"green","bold":true}]

effect clear @a[tag=EtiTowDefMS.1Spielen]
effect give @a[tag=EtiTowDefMS.1Spielen] minecraft:night_vision infinite 1 true
effect give @a[tag=EtiTowDefMS.1Spielen] minecraft:resistance infinite 10 true
effect give @a[tag=EtiTowDefMS.1Spielen] minecraft:saturation infinite 10 true

gamemode adventure @a[tag=EtiTowDefMS.1Spielen]

$execute at @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Wert=1},sort=nearest,limit=1] positioned ^ ^ ^10 run spreadplayers ~ ~ 1 2 under $(Y) false @a[distance=..50,team=TMTowDefMS.1Team1]
$execute at @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,scores={PZTowDefMS.1Wert=2},sort=nearest,limit=1] positioned ^ ^ ^10 run spreadplayers ~ ~ 1 2 under $(Y) false @a[distance=..50,team=TMTowDefMS.1Team2]

give @a[tag=EtiTowDefMS.1Spielen] minecraft:wooden_sword[minecraft:lore=['"Nutze dieses Schwert"','"um beim Tower-Defense alle"','"Gegner im Notfall"','"direkt zu besiegen!"'],minecraft:attribute_modifiers={modifiers:[{amount:-1,name:"Tower-Defense-Minispiel",operation:"add_value",slot:"mainhand",type:"minecraft:generic.attack_damage",uuid:[I;0,0,0,1]}],show_in_tooltip:false},minecraft:enchantments={levels:{"minecraft:efficiency":10,"minecraft:unbreaking":10} },minecraft:unbreakable={show_in_tooltip:false},minecraft:custom_name='{"text":"Tower-Defense-Schwert","bold":true}',minecraft:custom_data={EigTowDefMS.1Alle:true}]

give @a[tag=EtiTowDefMS.1Spielen] minecraft:bow[minecraft:lore=['"Nutze diesen Bogen"','"um beim Tower-Defense alle"','"Gegner im Notfall"','"direkt zu besiegen!"'],minecraft:attribute_modifiers={modifiers:[{amount:-1,name:"Tower-Defense-Minispiel",operation:"add_value",slot:"mainhand",type:"minecraft:generic.attack_damage",uuid:[I;0,0,0,1]}],show_in_tooltip:false},minecraft:enchantments={levels:{"minecraft:infinity":10,"minecraft:unbreaking":10} },minecraft:unbreakable={show_in_tooltip:false},minecraft:custom_name='{"text":"Tower-Defense-Bogen","bold":true}',minecraft:custom_data={EigTowDefMS.1Alle:true}]

give @a[tag=EtiTowDefMS.1Spielen] minecraft:arrow[minecraft:custom_data={EigTowDefMS.1Alle:true}]

scoreboard players set VarTowDefMS.1Punkte1 PZTowDefMS.1Wert 70
scoreboard players set VarTowDefMS.1Punkte2 PZTowDefMS.1Wert 70

scoreboard players set VarTowDefMS.1Welle PZTowDefMS.1Wert 0
scoreboard players set VarTowDefMS.1Gegner PZTowDefMS.1Wert 5
scoreboard players set VarTowDefMS.1Leben PZTowDefMS.1Wert 100

scoreboard players operation @e[type=minecraft:text_display,tag=EtiTowDefMS.1Startpunkt,sort=nearest,limit=2] PZTowDefMS.1Versuch = VarTowDefMS.1Leben PZTowDefMS.1Wert

execute store result bossbar tower-defense-minispiel:v1team1 max store result bossbar tower-defense-minispiel:v1team1 value run scoreboard players get VarTowDefMS.1Leben PZTowDefMS.1Wert

execute store result bossbar tower-defense-minispiel:v1team2 max store result bossbar tower-defense-minispiel:v1team2 value run scoreboard players get VarTowDefMS.1Leben PZTowDefMS.1Wert

function tower-defense-minispiel:v1welle

bossbar set tower-defense-minispiel:v1team1 players @a[team=TMTowDefMS.1Team1]
bossbar set tower-defense-minispiel:v1team2 players @a[team=TMTowDefMS.1Team2]

bossbar set tower-defense-minispiel:v1team1gegner players @a[team=TMTowDefMS.1Team1]
bossbar set tower-defense-minispiel:v1team2gegner players @a[team=TMTowDefMS.1Team2]
