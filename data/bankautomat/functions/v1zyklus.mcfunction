
execute as @e[type=minecraft:armor_stand,tag=EtiBankA.1Bankautomat] at @s run teleport @s ~ ~ ~ ~5 0
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Bankautomat] run particle minecraft:totem_of_undying ^ ^0.5 ^5 0 0 0 0.1 10 force @a[distance=..25]

execute as @e[type=minecraft:armor_stand,tag=EtiBankA.1Bankautomat,tag=!EtiBankA.1Werkbank] at @s if entity @e[distance=..10,type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] run tag @s add EtiBankA.1Werkbank
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Bankautomat,tag=!EtiBankA.1Werkbank] unless block ~ ~ ~ minecraft:crafting_table run setblock ~ ~ ~ minecraft:crafting_table replace
execute as @e[type=minecraft:armor_stand,tag=EtiBankA.1Bankautomat,tag=!EtiBankA.1Werkbank] at @s if block ~ ~ ~ minecraft:crafting_table run tag @s add EtiBankA.1Werkbank
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] unless block ~ ~ ~ minecraft:crafting_table run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{EigBankA.1Alle:true,display:{Name:'{"text":"Bankautomat","color":"dark_purple","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um einen Bankautomat"','"zu erstellen"'] },EntityTag:{NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Bankautomat","color":"dark_purple","bold":true}',Tags:["EtiBankA.1Alle","EtiBankA.1Bankautomat"]} } },Motion:[0.0d,0.3d,0.0d]}
execute as @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] at @s unless block ~ ~ ~ minecraft:crafting_table run kill @s

execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] run tag @a[distance=..5,tag=EtiBankA.1Smaragd,scores={PZBankA.1Klick=1},nbt=!{Inventory:[{id:"minecraft:emerald"} ] }] remove EtiBankA.1Smaragd
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] run tag @a[distance=..5,tag=!EtiBankA.1Smaragd,scores={PZBankA.1Klick=1},nbt={Inventory:[{id:"minecraft:emerald"} ] }] add EtiBankA.1Smaragd
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] run scoreboard players add @a[distance=..5,tag=EtiBankA.1Smaragd,scores={PZBankA.1Klick=1}] PZBankA.1Wert 1
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] run clear @a[distance=..5,tag=EtiBankA.1Smaragd,scores={PZBankA.1Klick=1}] minecraft:emerald 1
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] run tellraw @a[distance=..5,tag=!EtiBankA.1Smaragd,scores={PZBankA.1Klick=1}] ["Bankautomat.1: ",{"text":"Du hast keine Smaragde um sie einzuzahlen","color":"red","bold":true} ]

execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] run tellraw @a[distance=..5,scores={PZBankA.1Klick=-1,PZBankA.1Wert=0}] ["Bankautomat.1: ",{"text":"Du hast keine Smaragde auf deinem Konto um sie auszahlen zu lassen!","color":"red","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] run give @a[distance=..5,scores={PZBankA.1Klick=-1,PZBankA.1Wert=1..}] minecraft:emerald{EigBankA.1Alle:true,display:{Lore:['"Smaragde, Geld für dein Konto"']} } 1
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] run scoreboard players remove @a[distance=..5,scores={PZBankA.1Klick=-1,PZBankA.1Wert=1..}] PZBankA.1Wert 1

execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] as @a[distance=..5] unless entity @s[scores={PZBankA.1Wert=0..}] run scoreboard players set @s PZBankA.1Wert 0
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] as @a[distance=..5] unless entity @s[scores={PZBankA.1Klick=0}] run tellraw @s ["Bankautomat.1: ",{"text":"\nkontostand = ","bold":true},{"text":"kontostand + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Betrag + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZBankA.1Klick set 1"},"bold":true},{"text":"\nkontostand = ","bold":true},{"text":"kontostand - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Betrag - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZBankA.1Klick set -1"},"bold":true},{"text":"\nkontostand == ","bold":true},{"score":{"name":"@s","objective":"PZBankA.1Wert"},"color":"dark_purple","bold":true},{"text":"€","color":"dark_purple","bold":true}]

execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] as @a[distance=..5] unless entity @s[scores={PZBankA.1Klick=0}] run scoreboard players enable @s PZBankA.1Klick
execute at @e[type=minecraft:armor_stand,tag=EtiBankA.1Werkbank] as @a[distance=..5] unless entity @s[scores={PZBankA.1Klick=0}] run scoreboard players set @s PZBankA.1Klick 0
execute as @a[scores={PZBankA.1Klick=0..}] at @s unless entity @e[distance=..5,type=minecraft:armor_stand,tag=EtiBankA.1Werkbank,sort=nearest,limit=1] run scoreboard players reset @s PZBankA.1Klick
