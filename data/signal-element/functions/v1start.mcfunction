
scoreboard objectives add PZSigEl.2Wert dummy ["Signal-Element.2: ",{"text":"Wert der Signale","bold":true}]

give @a[distance=..15] minecraft:armor_stand{EigSigEl.2Alle:true,EigSigEl.2Stock:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Empfänger-Signal","color":"red","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um einen Empfänger"','"zu erstellen und wähle"','"den Rüstungsständer kurz aus,"','"um ein Signal an den nächsten"','"Empfänger weiterzuleiten."'] },EntityTag:{Small:true,NoGravity:true,CustomName:'{"text":"Empfänger-Signal","color":"red","bold":true}',Tags:["EtiSigEl.2Alle","EtiSigEl.2Empfaenger"] } }

give @a[distance=..15] minecraft:yellow_concrete{EigSigEl.2Alle:true} 64

forceload add ~ ~



tag @a[nbt={SelectedItem:{tag:{EigSigEl.2Stock:true} } }] add EtiSigEl.2Ausgewaehlt
#execute at @a[tag=EtiSigEl.2Ausgewaehlt,tag=!EtiSigEl.2Auswahl] if entity @e[distance=..25,type=minecraft:armor_stand,tag=EtiSigEl.2Empfaenger] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647 ,Tags:["EtiSigEl.2Alle","EtiSigEl.2Signal"]}

execute as @a[tag=EtiSigEl.2Ausgewaehlt,tag=!EtiSigEl.2Auswahl] at @s store result score @s PZSigEl.2Wert run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 minecraft:red_concrete replace minecraft:yellow_concrete

execute as @a[tag=EtiSigEl.2Ausgewaehlt,tag=!EtiSigEl.2Auswahl] at @s store result score @s PZSigEl.2Wert at @e[distance=..15,type=minecraft:armor_stand,tag=EtiSigEl.2Empfaenger] run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:red_concrete replace minecraft:yellow_concrete


execute as @a[tag=EtiSigEl.2Ausgewaehlt,tag=!EtiSigEl.2Auswahl] run tellraw @s ["Signal-Element.2:\n",{"text":"Signale == ","color":"green","bold":true},{"score":{"name":"@s","objective":"PZSigEl.2Wert"},"color":"dark_purple","bold":true}]

execute as @a[tag=!EtiSigEl.2Ausgewaehlt,tag=EtiSigEl.2Auswahl] at @s store result score @s PZSigEl.2Wert run fill ~-15 ~-15 ~-15 ~15 ~15 ~15 minecraft:yellow_concrete replace minecraft:red_concrete
execute as @a[tag=!EtiSigEl.2Ausgewaehlt,tag=EtiSigEl.2Auswahl] run tellraw @s ["Signal-Element.2:\n",{"text":"Signale == ","color":"red","bold":true},{"score":{"name":"@s","objective":"PZSigEl.2Wert"},"color":"dark_purple","bold":true}]

tag @a[tag=EtiSigEl.2Ausgewaehlt,tag=!EtiSigEl.2Auswahl] add EtiSigEl.2Auswahl
tag @a[tag=!EtiSigEl.2Ausgewaehlt,tag=EtiSigEl.2Auswahl] remove EtiSigEl.2Auswahl
tag @a[tag=EtiSigEl.2Ausgewaehlt] remove EtiSigEl.2Ausgewaehlt


execute as @e[type=minecraft:armor_stand,tag=EtiSigEl.2Empfaenger] at @s if block ~ ~-1 ~ minecraft:red_concrete run effect give @s minecraft:glowing 1 1 false


execute at @e[type=minecraft:area_effect_cloud,tag=EtiSigEl.2Signal] run particle minecraft:block minecraft:redstone_block ~ ~ ~ 0 0 0 0.1 1 force @a[distance=..25]
execute as @e[type=minecraft:area_effect_cloud,tag=EtiSigEl.2Signal] at @s facing entity @e[type=minecraft:armor_stand,tag=EtiSigEl.2Empfaenger,sort=nearest,limit=1] eyes run teleport @s ^ ^ ^0.3

execute at @e[type=minecraft:area_effect_cloud,tag=EtiSigEl.2Signal] run effect give @e[distance=..1,type=minecraft:armor_stand,tag=EtiSigEl.2Empfaenger,sort=nearest,limit=1] minecraft:glowing 15 1 false
execute as @e[type=minecraft:area_effect_cloud,tag=EtiSigEl.2Signal] at @s if entity @e[distance=..1,type=minecraft:armor_stand,tag=EtiSigEl.2Empfaenger,sort=nearest,limit=1] run kill @s



scoreboard objectives remove PZSigEl.2Wert

clear @a minecraft:armor_stand{EigSigEl.2Alle:true}
clear @a minecraft:yellow_concrete{EigSigEl.2Alle:true}

tag @a[tag=EtiSigEl.2Auswahl] remove EtiSigEl.2Auswahl


tag @e[type=minecraft:item,nbt={Item:{tag:{EigSigEl.2Alle:true} } }] add EtiSigEl.2Alle
kill @e[tag=EtiSigEl.2Alle]

forceload remove ~ ~
