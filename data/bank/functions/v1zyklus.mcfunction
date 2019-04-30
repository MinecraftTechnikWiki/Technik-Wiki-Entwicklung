
execute as @p[tag=!EtiBank.1SpielerNummer] store result score @s PZBank.1Nr run scoreboard players add #VarBank.1SpielerNummer PZBank.1Nr 1
tag @p[tag=!EtiBank.1SpielerNummer] add EtiBank.1SpielerNummer

execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Bankautomat,tag=!EtiBank.1Werkbank] unless block ~ ~ ~ minecraft:crafting_table run setblock ~ ~ ~ minecraft:crafting_table replace
execute as @e[type=minecraft:armor_stand,tag=EtiBank.1Bankautomat,tag=!EtiBank.1Werkbank] at @s if block ~ ~ ~ minecraft:crafting_table run tag @s add EtiBank.1Werkbank
execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] unless block ~ ~ ~ minecraft:crafting_table run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Lore:["Bank.1","Platziere den Rüstungsständer","um einen Bankautomat","zu erstellen"] },EntityTag:{Small:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:"{\"text\":\"Bankautomat\"}",Tags:["EtiBank.1Alle","EtiBank.1Bankautomat"]} } },Motion:[0.0,0.3,0.0]}
execute as @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] at @s unless block ~ ~ ~ minecraft:crafting_table run kill @s

execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] run tag @a[distance=..5,tag=EtiBank.1Smaragd,scores={PZBank.1Klick=1},nbt=!{Inventory:[{id:"minecraft:emerald"} ] }] remove EtiBank.1Smaragd
execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] run tag @a[distance=..5,tag=!EtiBank.1Smaragd,scores={PZBank.1Klick=1},nbt={Inventory:[{id:"minecraft:emerald"} ] }] add EtiBank.1Smaragd
execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] run scoreboard players add @a[distance=..5,tag=EtiBank.1Smaragd,scores={PZBank.1Klick=1}] PZBank.1Wert 1
execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] run clear @a[distance=..5,tag=EtiBank.1Smaragd,scores={PZBank.1Klick=1}] minecraft:emerald 1
execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] run tellraw @a[distance=..5,tag=!EtiBank.1Smaragd,scores={PZBank.1Klick=1}] ["Bank.1: ",{"text":"Du hast keine Smaragde um sie einzuzahlen","color":"red","bold":true} ]

execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] run tellraw @a[distance=..5,scores={PZBank.1Klick=-1,PZBank.1Wert=0}] ["Bank.1: ",{"text":"Du hast keine Smaragde auf deinem Konto um sie auszahlen zu lassen","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] run give @a[distance=..5,scores={PZBank.1Klick=-1,PZBank.1Wert=1..}] minecraft:emerald{display:{Lore:["Bank.1","Smaragde, Geld für dein Konto"]} } 1
execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] run scoreboard players remove @a[distance=..5,scores={PZBank.1Klick=-1,PZBank.1Wert=1..}] PZBank.1Wert 1

execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] as @a[distance=..5] unless entity @s[scores={PZBank.1Wert=0..}] run scoreboard players set @s PZBank.1Wert 0
execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] as @a[distance=..5] unless entity @s[scores={PZBank.1Klick=0}] run tellraw @s ["Bank.1: ",{"text":"\ngeld ("},{"text":"+1","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Betrag +1"} },"clickEvent":{"action":"run_command","value":"/trigger PZBank.1Klick set 1"},"bold":true},"|",{"text":"-1","color":"red","hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Betrag -1"} },"clickEvent":{"action":"run_command","value":"/trigger PZBank.1Klick set -1"},"bold":true},") = ",{"score":{"name":"@s","objective":"PZBank.1Wert"},"bold":true},{"text":"€","bold":true}]

execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] as @a[distance=..5] unless entity @s[scores={PZBank.1Klick=0}] run scoreboard players enable @s PZBank.1Klick
execute at @e[type=minecraft:armor_stand,tag=EtiBank.1Werkbank] as @a[distance=..5] unless entity @s[scores={PZBank.1Klick=0}] run scoreboard players set @s PZBank.1Klick 0
execute as @a[scores={PZBank.1Klick=0..}] at @s unless entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiBank.1Werkbank,sort=nearest,limit=1] run scoreboard players reset @s PZBank.1Klick
