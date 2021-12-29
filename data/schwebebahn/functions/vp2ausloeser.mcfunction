
execute if entity @s[scores={PZSchwB.p2Ausl=3}] run teleport @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Hyperloop,sort=nearest,limit=1] ~ ~ ~ ~180 ~
execute if entity @s[scores={PZSchwB.p2Ausl=3}] as @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Hyperloop,sort=nearest,limit=1] at @s run function schwebebahn:vp2hyperloop
scoreboard players set @s[scores={PZSchwB.p2Ausl=3}] PZSchwB.p2Ausl 2

execute if entity @s[scores={PZSchwB.p2Ausl=1}] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Fahren,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"green","text":"wahr"}'}

execute if entity @s[tag=!EtiSchwB.p2SitztInLore] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Fahren,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"falsch"}'}
execute if entity @s[scores={PZSchwB.p2Ausl=2}] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Fahren,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"falsch"}'}

execute at @s[scores={PZSchwB.p2Ausl=4}] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Ansicht,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"gold","text":"Vorne"}'}
execute at @s[scores={PZSchwB.p2Ausl=5}] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Ansicht,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"blue","text":"Oben"}'}
execute at @s[scores={PZSchwB.p2Ausl=6}] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Ansicht,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"gold","text":"Hinten"}'}
execute at @s[scores={PZSchwB.p2Ausl=7}] run data merge entity @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Ansicht,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"red","text":"Bahnsteig"}'}

execute unless entity @s[tag=EtiSchwB.p2SitztInLore,scores={PZSchwB.p2Ausl=0}] run tellraw @s ["Schwebebahn.erweitert.2:\n",{"text":"fahren = ","bold":true},{"text":"wahr","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Wert wahr"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p2Ausl set 1"} },"\n",{"text":"fahren = ","bold":true},{"text":"falsch","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Wert falsch"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p2Ausl set 2"} },"\n",{"text":"fahren == ","bold":true},{"entity":"@e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Fahren,sort=nearest,limit=1]","nbt":"CustomName","interpret":true},"\n",{"text":"richtungumkehren() == ","bold":true},{"text":"180°","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe um den Zug umzudrehen"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p2Ausl set 3"} } ]

execute unless entity @s[tag=EtiSchwB.p2SitztInLore,scores={PZSchwB.p2Ausl=0}] at @s run tellraw @s ["",{"text":"ansicht = ","bold":true},{"text":"Vorne","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Wert Vorne"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p2Ausl set 4"} },"\n",{"text":"ansicht = ","bold":true},{"text":"Oben","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Wert Oben"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p2Ausl set 5"} },"\n",{"text":"ansicht = ","bold":true},{"text":"Hinten","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Wert Hinten"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p2Ausl set 6"} },"\n",{"text":"ansicht = ","bold":true},{"text":"Bahnsteig","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Wert Bahnsteig"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p2Ausl set 7"} },"\n",{"text":"ansicht == ","bold":true},{"entity":"@e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Ansicht,sort=nearest,limit=1]","nbt":"CustomName","interpret":true} ]

execute unless entity @s[scores={PZSchwB.p2Ausl=0}] run scoreboard players enable @s PZSchwB.p2Ausl
execute unless entity @s[scores={PZSchwB.p2Ausl=0}] run scoreboard players set @s PZSchwB.p2Ausl 0

tag @s add EtiSchwB.p2SitztInLore

execute as @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Fahren,name="wahr",sort=nearest,limit=1] at @s if block ^ ^-1 ^16 minecraft:chiseled_quartz_block if block ^1 ^-1 ^16 minecraft:quartz_block if block ^-1 ^-1 ^16 minecraft:quartz_block run teleport @s ^ ^ ^1

execute as @e[distance=..2,type=minecraft:armor_stand,tag=EtiSchwB.p2Fahren,name="wahr",sort=nearest,limit=1] at @s run function schwebebahn:vp2hyperloop

teleport @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Ansicht,name="Vorne",sort=nearest,limit=1] ^ ^1 ^18
teleport @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Ansicht,name="Oben",sort=nearest,limit=1] ~ ~8 ~
teleport @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Ansicht,name="Hinten",sort=nearest,limit=1] ^ ^1 ^-18
teleport @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Ansicht,name="Bahnsteig",sort=nearest,limit=1] ^-6 ^2 ^

execute as @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Passagier1,sort=nearest,limit=1] positioned as @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Halter,sort=nearest,limit=1] run teleport @s ^-1 ^ ^1
execute as @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Passagier2,sort=nearest,limit=1] positioned as @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Halter,sort=nearest,limit=1] run teleport @s ^1 ^ ^1
execute as @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Passagier3,sort=nearest,limit=1] positioned as @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Halter,sort=nearest,limit=1] run teleport @s ^-1 ^ ^-1
execute as @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Passagier4,sort=nearest,limit=1] positioned as @e[distance=..20,type=minecraft:armor_stand,tag=EtiSchwB.p2Halter,sort=nearest,limit=1] run teleport @s ^1 ^ ^-1
