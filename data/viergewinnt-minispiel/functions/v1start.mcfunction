
scoreboard objectives add PZVierGM.1Wert dummy ["Viergewinnt-Minispiel.1: ",{"text":"Wert der Variablen","bold":true}]

team add TMVierGM.1Rot ["Viergewinnt-Minispiel.1: ",{"text":"Rote Mannschaft","bold":true}]
team add TMVierGM.1Gelb ["Viergewinnt-Minispiel.1: ",{"text":"Rote Mannschaft","bold":true}]

team modify TMVierGM.1Rot color red
team modify TMVierGM.1Gelb color yellow

give @a[distance=..15] minecraft:armor_stand{EigVierGM.1Alle:true,EigVierGM.1Geruest:true,display:{Name:'{"text":"Viergewinnt","color":"green","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um das Minispiel"','"zu erstellen."'] },EntityTag:{Small:true,NoGravity:true,Invisible:true,Tags:["EtiVierGM.1Alle","EtiVierGM.1Erstellen"]} } 16


#Zyklus
execute as @e[type=minecraft:armor_stand,tag=EtiVierGM.1Erstellen] at @s run function viergewinnt-minispiel:v1erstellen

#execute as @e[type=minecraft:marker,tag=EtiVierGM.1Plattform] at @s if entity @p[distance=..3] run function viergewinnt-minispiel:v1menu

#execute as @a[tag=EtiVierGM.1Inventar] at @s unless entity @e[distance=..5,type=minecraft:marker,tag=EtiVierGM.1Plattform] run tag @s remove EtiVierGM.1Inventar

scoreboard players add VarVierGM.1Tick PZVierGM.1Wert 1
execute if score VarVierGM.1Tick PZVierGM.1Wert matches 20.. as @e[type=minecraft:marker,tag=EtiVierGM.1Plattform] at @s run function viergewinnt-minispiel:v1betreten

#Betreten
scoreboard players set VarVierGM.1Tick PZVierGM.1Wert 0

#execute as @a unless entity @s[team=!TMVierGM.1Rot,team=!TMVierGM.1Gelb] run team leave @s
team leave @a[team=TMVierGM.1Rot]
team leave @a[team=TMVierGM.1Gelb]

#execute if entity @s[tag=EtiVierGM.1Rot] positioned ~-2 ~ ~-2 if entity @p[dx=4,dy=4,dz=4,team=TMVierGM.1Rot] run tag @s add EtiVierGM.1Vorhanden
#execute if entity @s[tag=EtiVierGM.1Gelb] positioned ~-2 ~ ~-2 if entity @p[dx=4,dy=4,dz=4,team=TMVierGM.1Gelb] run tag @s add EtiVierGM.1Vorhanden

execute positioned ~-2 ~ ~-2 if entity @p[dx=4,dy=4,dz=4] run tag @s add EtiVierGM.1Vorhanden

execute if entity @s[tag=EtiVierGM.1Rot] run item replace entity @p[distance=..3] inventory.8 with minecraft:red_bed{EigVierGM.1Alle:true,EigVierGM.1Verlassen:true}

execute if entity @s[tag=EtiVierGM.1Rot] run team join TMVierGM.1Rot @p[distance=..3]
execute if entity @s[tag=EtiVierGM.1Gelb] run team join TMVierGM.1Gelb @p[distance=..3]

execute as @a[distance=..5] unless entity @s[team=!TMVierGM.1Rot,team=!TMVierGM.1Gelb,nbt={Inventory:[{Slot:8b,id:"minecraft:red_bed"}]}] run tag @s add EtiVierGM.1Verlassen

execute as @a[distance=..5,tag=EtiVierGM.1Verlassen] at @s rotated ~ 0 run teleport @s ^ ^ ^7
tag @a[tag=EtiVierGM.1Verlassen] remove EtiVierGM.1Verlassen

execute if entity @s[tag=EtiVierGM.1Vorhanden] run fill ~-3 ~1 ~-3 ~3 ~6 ~3 minecraft:glass replace
execute if entity @s[tag=EtiVierGM.1Vorhanden] run fill ~-2 ~1 ~-2 ~2 ~5 ~2 minecraft:air replace

execute if entity @s[tag=EtiVierGM.1Vorhanden] run function viergewinnt-minispiel:v1menu
tag @s[tag=EtiVierGM.1Vorhanden] remove EtiVierGM.1Vorhanden

execute if entity @s[tag=EtiVierGM.1Rot] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:red_concrete replace
execute if entity @s[tag=EtiVierGM.1Gelb] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:green_concrete replace



#Erstellen
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0
teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ 270 0

scoreboard players set VarVierGM.1Breite PZVierGM.1Wert 0
execute at @s positioned ^-17 ^1 ^ run function viergewinnt-minispiel:v1breite

execute at @e[type=minecraft:marker,tag=EtiVierGM.1Zelle,tag=EtiVierGM.1Erstellen] run setblock ~ ~ ~ minecraft:structure_block{} replace
execute if entity @s[y_rotation=0] unless entity @s[y_rotation=0] at @e[type=minecraft:marker,tag=EtiVierGM.1Zelle,tag=EtiVierGM.1Erstellen] run data merge block ~ ~ ~ {}
execute if entity @s[y_rotation=0] unless entity @s[y_rotation=0] at @e[type=minecraft:marker,tag=EtiVierGM.1Zelle,tag=EtiVierGM.1Erstellen] run data merge block ~ ~ ~ {}
execute at @e[type=minecraft:marker,tag=EtiVierGM.1Zelle,tag=EtiVierGM.1Erstellen] run setblock ~ ~ ~ minecraft:redstone_block replace

execute at @s run summon minecraft:marker ^ ^ ^4 {Tags:["EtiVierGM.1Alle","EtiVierGM.1Plattform","EtiVierGM.1Rot","EtiVierGM.1Erstellen"]}
execute at @s run summon minecraft:marker ^ ^ ^-4 {Tags:["EtiVierGM.1Alle","EtiVierGM.1Plattform","EtiVierGM.1Gelb","EtiVierGM.1Erstellen"]}

execute at @e[type=minecraft:marker,tag=EtiVierGM.1Rot,tag=EtiVierGM.1Erstellen] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:red_concrete replace
execute at @e[type=minecraft:marker,tag=EtiVierGM.1Gelb,tag=EtiVierGM.1Erstellen] run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:green_concrete replace

tag @e[type=minecraft:marker,tag=EtiVierGM.1Erstellen] remove EtiVierGM.1Erstellen

kill @s


#Breite
fill ^ ^-1 ^-1 ^4 ^-1 ^1 minecraft:blue_concrete replace

scoreboard players set VarVierGM.1Hoehe PZVierGM.1Wert 0
function viergewinnt-minispiel:v1hoehe

scoreboard players add VarVierGM.1Breite PZVierGM.1Wert 1
execute if score VarVierGM.1Breite PZVierGM.1Wert matches 1..6 positioned ^5 ^ ^ run function viergewinnt-minispiel:v1breite


#Höhe
scoreboard players add VarVierGM.1Hoehe PZVierGM.1Wert 1
summon minecraft:marker ^2 ^ ^ {Tags:["EtiVierGM.1Alle","EtiVierGM.1Zelle","EtiVierGM.1Erstellen"]}
execute if score VarVierGM.1Hoehe PZVierGM.1Wert matches 5 positioned ^2 ^ ^ run tag @e[distance=..1,type=minecraft:marker,tag=EtiVierGM.1Zelle,tag=EtiVierGM.1Erstellen] add EtiVierGM.1Oben
execute if score VarVierGM.1Hoehe PZVierGM.1Wert matches 5 positioned ^2 ^ ^ run scoreboard players operation @e[distance=..1,type=minecraft:marker,tag=EtiVierGM.1Zelle,tag=EtiVierGM.1Erstellen] PZVierGM.1Wert = VarVierGM.1Breite PZVierGM.1Wert

execute if score VarVierGM.1Hoehe PZVierGM.1Wert matches 1..5 positioned ^ ^5 ^ run function viergewinnt-minispiel:v1hoehe


#Menü
execute if entity @s[tag=EtiVierGM.1Rot] run team join TMVierGM.1Rot @p[distance=..3]
execute if entity @s[tag=EtiVierGM.1Gelb] run team join TMVierGM.1Gelb @p[distance=..3]

summon minecraft:item_frame ~ ~ ~ {Tags:["EtiVierGM.1Alle","EtiVierGM.1Farbe"]}
execute if entity @s[tag=EtiVierGM.1Rot] run item replace entity @e[type=minecraft:item_frame,tag=EtiVierGM.1Farbe,sort=nearest,limit=1] container.0 with minecraft:red_concrete{EigVierGM.1Alle:true,EigVierGM.1Menu:true}
execute if entity @s[tag=EtiVierGM.1Gelb] run item replace entity @e[type=minecraft:item_frame,tag=EtiVierGM.1Farbe,sort=nearest,limit=1] container.0 with minecraft:green_concrete{EigVierGM.1Alle:true,EigVierGM.1Menu:true}

execute at @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=1}] store success score @s PZVierGM.1Wert if block ~ ~ ~ minecraft:air
execute if entity @s[scores={PZVierGM.1Wert=1}] if entity @p[distance=..5,nbt=!{Inventory:[{Slot:1b}]}] run tag @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=1}] add EtiVierGM.1Belegen
execute if entity @s[scores={PZVierGM.1Wert=1}] run item replace entity @p hotbar.1 from entity @e[type=minecraft:item_frame,tag=EtiVierGM.1Farbe,sort=nearest,limit=1] container.0

execute at @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=2}] store success score @s PZVierGM.1Wert if block ~ ~ ~ minecraft:air
execute if entity @s[scores={PZVierGM.1Wert=1}] if entity @p[distance=..5,nbt=!{Inventory:[{Slot:2b}]}] run tag @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=2}] add EtiVierGM.1Belegen
execute if entity @s[scores={PZVierGM.1Wert=1}] run item replace entity @p hotbar.2 from entity @e[type=minecraft:item_frame,tag=EtiVierGM.1Farbe,sort=nearest,limit=1] container.0

execute at @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=3}] store success score @s PZVierGM.1Wert if block ~ ~ ~ minecraft:air
execute if entity @s[scores={PZVierGM.1Wert=1}] if entity @p[distance=..5,nbt=!{Inventory:[{Slot:3b}]}] run tag @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=3}] add EtiVierGM.1Belegen
execute if entity @s[scores={PZVierGM.1Wert=1}] run item replace entity @p hotbar.3 from entity @e[type=minecraft:item_frame,tag=EtiVierGM.1Farbe,sort=nearest,limit=1] container.0

execute at @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=4}] store success score @s PZVierGM.1Wert if block ~ ~ ~ minecraft:air
execute if entity @s[scores={PZVierGM.1Wert=1}] if entity @p[distance=..5,nbt=!{Inventory:[{Slot:4b}]}] run tag @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=4}] add EtiVierGM.1Belegen
execute if entity @s[scores={PZVierGM.1Wert=1}] run item replace entity @p hotbar.4 from entity @e[type=minecraft:item_frame,tag=EtiVierGM.1Farbe,sort=nearest,limit=1] container.0

execute at @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=5}] store success score @s PZVierGM.1Wert if block ~ ~ ~ minecraft:air
execute if entity @s[scores={PZVierGM.1Wert=1}] if entity @p[distance=..5,nbt=!{Inventory:[{Slot:5b}]}] run tag @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=5}] add EtiVierGM.1Belegen
execute if entity @s[scores={PZVierGM.1Wert=1}] run item replace entity @p hotbar.5 from entity @e[type=minecraft:item_frame,tag=EtiVierGM.1Farbe,sort=nearest,limit=1] container.0

execute at @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=6}] store success score @s PZVierGM.1Wert if block ~ ~ ~ minecraft:air
execute if entity @s[scores={PZVierGM.1Wert=1}] if entity @p[distance=..5,nbt=!{Inventory:[{Slot:6b}]}] run tag @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=6}] add EtiVierGM.1Belegen
execute if entity @s[scores={PZVierGM.1Wert=1}] run item replace entity @p hotbar.6 from entity @e[type=minecraft:item_frame,tag=EtiVierGM.1Farbe,sort=nearest,limit=1] container.0

execute at @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=7}] store success score @s PZVierGM.1Wert if block ~ ~ ~ minecraft:air
execute if entity @s[scores={PZVierGM.1Wert=1}] if entity @p[distance=..5,nbt=!{Inventory:[{Slot:7b}]}] run tag @e[type=minecraft:marker,tag=EtiVierGM.1Oben,scores={PZVierGM.1Wert=7}] add EtiVierGM.1Belegen
execute if entity @s[scores={PZVierGM.1Wert=1}] run item replace entity @p hotbar.7 from entity @e[type=minecraft:item_frame,tag=EtiVierGM.1Farbe,sort=nearest,limit=1] container.0

execute at @e[type=minecraft:marker,tag=EtiVierGM.1Oben,tag=EtiVierGM.1Belegen] run summon minecraft:falling_block ~ ~ ~ {BlockState:{},Tags:["EtiVierGM.1Alle","EtiVierGM.1Konstruktion"]}
execute at @e[type=minecraft:marker,tag=EtiVierGM.1Oben,tag=EtiVierGM.1Belegen] run summon minecraft:falling_block ~ ~1 ~ {BlockState:{},Tags:["EtiVierGM.1Alle","EtiVierGM.1Konstruktion"]}

tag @p add EtiVierGM.1Inventar
