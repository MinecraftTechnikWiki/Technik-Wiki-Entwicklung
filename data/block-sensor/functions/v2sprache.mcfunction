
scoreboard objectives add PZLogik.3Wert trigger ["Logikgatter.3: ",{"text":"Wert der Variablen","bold":true}]
summon minecraft:armor_stand ~ ~3 ~ {Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"wahr","color":"green","bold":true}',Tags:["EtiLogik.3Alle","EtiLogik.3Eingabe","EtiLogik.3Bool1"]}
summon minecraft:armor_stand ~ ~3 ~ {Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"wahr","color":"green","bold":true}',Tags:["EtiLogik.3Alle","EtiLogik.3Eingabe","EtiLogik.3Bool2"]}
summon minecraft:armor_stand ~ ~3 ~ {Small:true,NoGravity:true,CustomNameVisible:true,CustomName:'{"text":"wahr","color":"green","bold":true}',Tags:["EtiLogik.3Alle","EtiLogik.3UND"]}

execute if entity @a[distance=..25,scores={PZLogik.3Wert=1}] as @e[type=minecraft:armor_stand,tag=EtiLogik.3Bool1] store success score @s PZLogik.3Wert run data merge entity @s {CustomName:'{"bold":true,"color":"green","text":"wahr"}'}
execute if entity @a[distance=..25,scores={PZLogik.3Wert=2}] as @e[type=minecraft:armor_stand,tag=EtiLogik.3Bool2] store success score @s PZLogik.3Wert run data merge entity @s {CustomName:'{"bold":true,"color":"green","text":"wahr"}'}
execute if entity @a[distance=..25,scores={PZLogik.3Wert=1..}] as @e[type=minecraft:armor_stand,tag=EtiLogik.3Eingabe,name="wahr",scores={PZLogik.3Wert=0},sort=nearest,limit=2] run data merge entity @s {CustomName:'{"bold":true,"color":"red","text":"falsch"}'}

execute if entity @a[distance=..25,scores={PZLogik.3Wert=1..}] if entity @e[type=minecraft:armor_stand,tag=EtiLogik.3Eingabe,name="wahr"] if score @e[type=minecraft:armor_stand,tag=EtiLogik.3Bool1,sort=nearest,limit=1] PZLogik.3Wert = @e[type=minecraft:armor_stand,tag=EtiLogik.3Bool2,sort=nearest,limit=1] PZLogik.3Wert run data merge entity @e[type=minecraft:armor_stand,tag=EtiLogik.3UND,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"green","text":"wahr"}'}
execute if entity @a[distance=..25,scores={PZLogik.3Wert=1..}] if entity @e[type=minecraft:armor_stand,tag=EtiLogik.3Eingabe,name="falsch"] run data merge entity @e[type=minecraft:armor_stand,tag=EtiLogik.3UND,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"falsch"}'}

execute if entity @e[type=minecraft:armor_stand,tag=EtiLogik.3Bool1,sort=nearest,limit=1] as @a[distance=..25] unless entity @s[scores={PZLogik.3Wert=0}] run tellraw @s ["Logikgatter.3: ",{"text":"\nbool1 (","bold":true},{"text":"= NICHT bool1","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe um den Wert zu negieren"} },"clickEvent":{"action":"run_command","value":"/trigger PZLogik.3Wert set 1"} },{"text":") == ","bold":true},{"entity":"@e[type=minecraft:armor_stand,tag=EtiLogik.3Bool1,sort=nearest,limit=1]","nbt":"CustomName","interpret":true},{"text":"\nbool2 (","bold":true},{"text":"= NICHT bool2","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe um den Wert zu negieren"} },"clickEvent":{"action":"run_command","value":"/trigger PZLogik.3Wert set 2"} },{"text":") == ","bold":true},{"entity":"@e[type=minecraft:armor_stand,tag=EtiLogik.3Bool2,sort=nearest,limit=1]","nbt":"CustomName","interpret":true},{"text":"\nbool1 UND bool2 == ","bold":true},{"entity":"@e[type=minecraft:armor_stand,tag=EtiLogik.3UND,sort=nearest,limit=1]","nbt":"CustomName","interpret":true} ]

execute as @a[distance=..25] unless entity @s[scores={PZLogik.3Wert=0}] run scoreboard players enable @s PZLogik.3Wert
execute as @a[distance=..25] unless entity @s[scores={PZLogik.3Wert=0}] run scoreboard players set @s PZLogik.3Wert 0






execute as @a[distance=..25] unless entity @s[scores={PZLogik.3Wert=0}] run scoreboard players enable @s PZLogik.3Wert
execute if entity @a[distance=..25,scores={PZLogik.3Wert=1}] run scoreboard players add VarLogik.3Bool1 PZLogik.3Wert 1
execute if score VarLogik.3Bool1 PZLogik.3Wert matches 2.. run scoreboard players set VarLogik.3Bool1 PZLogik.3Wert 0
execute if entity @a[distance=..25,scores={PZLogik.3Wert=2}] run scoreboard players add VarLogik.3Bool2 PZLogik.3Wert 1
execute if score VarLogik.3Bool2 PZLogik.3Wert matches 2.. run scoreboard players set VarLogik.3Bool2 PZLogik.3Wert 0
execute if entity @a[distance=..25,scores={PZLogik.3Wert=3}] store success score VarLogik.3UND PZLogik.3Wert if score VarLogik.3Bool1 PZLogik.3Wert = VarLogik.3Bool2 PZLogik.3Wert
execute if entity @a[distance=..25,scores={PZLogik.3Wert=3}] if score VarLogik.3UND PZLogik.3Wert matches 1 store success score VarLogik.3UND PZLogik.3Wert if score VarLogik.3Bool2 PZLogik.3Wert matches 1
execute as @a[distance=..25] unless entity @s[scores={PZLogik.3Wert=0}] at @s run tellraw @a[distance=..25] ["Logikgatter.3: ",{"text":"\nbool1 = ","color":"dark_purple","hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Wahrheitswert 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZLogik.3Wert set 1"} },{"score":{"name":"VarLogik.3Bool1","objective":"PZLogik.3Wert"},"bold":true},{"text":"b","bold":true},{"text":"\nbool2 = ","color":"dark_purple","hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Wahrheitswert 2"} },"clickEvent":{"action":"run_command","value":"/trigger PZLogik.3Wert set 2"} },{"score":{"name":"VarLogik.3Bool2","objective":"PZLogik.3Wert"},"bold":true},{"text":"b","bold":true},{"text":"\nbool1 & bool2 = ","color":"dark_purple","hoverEvent":{"action":"show_text","value":{"text":"Tippe für den UND-Junktor"} },"clickEvent":{"action":"run_command","value":"/trigger PZLogik.3Wert set 3"} },{"score":{"name":"VarLogik.3UND","objective":"PZLogik.3Wert"},"bold":true},{"text":"b","bold":true}]
execute as @a[distance=..25] unless entity @s[scores={PZLogik.3Wert=0}] run scoreboard players set @s PZLogik.3Wert 0





scoreboard objectives remove PZLogik.3Wert




setblock ~ ~ ~ minecraft:command_block{LastOutput:'{"extra":[{"translate":"commands.execute.conditional.pass_count","with":["1"]}],"text":"[16:57:35] "}'}


summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"extra":[{"translate":"commands.execute.conditional.pass_count","with":["1"]}],"text":"[16:57:35] "}'}
