
execute if entity @p[distance=..25,scores={PZZufG.3Wert=1}] if score VarZufG.3Min PZZufG.3Wert < VarZufG.3Max PZZufG.3Wert run scoreboard players add VarZufG.3Min PZZufG.3Wert 1
execute if entity @p[distance=..25,scores={PZZufG.3Wert=-1}] if score VarZufG.3Min PZZufG.3Wert matches 1.. run scoreboard players remove VarZufG.3Min PZZufG.3Wert 1

execute if entity @p[distance=..25,scores={PZZufG.3Wert=2}] run scoreboard players add VarZufG.3Max PZZufG.3Wert 1
execute if entity @p[distance=..25,scores={PZZufG.3Wert=-2}] if score VarZufG.3Max PZZufG.3Wert > VarZufG.3Min PZZufG.3Wert run scoreboard players remove VarZufG.3Max PZZufG.3Wert 1

execute if entity @p[distance=..25,scores={PZZufG.3Wert=3}] run scoreboard players operation VarZufG.3Modulus PZZufG.3Wert = VarZufG.3Max PZZufG.3Wert
execute if entity @p[distance=..25,scores={PZZufG.3Wert=3}] run scoreboard players operation VarZufG.3Modulus PZZufG.3Wert -= VarZufG.3Min PZZufG.3Wert

execute if entity @p[distance=..25,scores={PZZufG.3Wert=3}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["EtiZufG.3Alle"]}
execute if entity @p[distance=..25,scores={PZZufG.3Wert=3}] store result score VarZufG.3Zufallswert PZZufG.3Wert run data get entity @e[type=minecraft:area_effect_cloud,tag=EtiZufG.3Alle,sort=nearest,limit=1] UUID[0] 1

execute if entity @p[distance=..25,scores={PZZufG.3Wert=3}] run scoreboard players operation VarZufG.3Zufallswert PZZufG.3Wert %= VarZufG.3Modulus PZZufG.3Wert
execute if entity @p[distance=..25,scores={PZZufG.3Wert=3}] run scoreboard players operation VarZufG.3Zufallswert PZZufG.3Wert += VarZufG.3Min PZZufG.3Wert
#execute if entity @p[distance=..25,scores={PZZufG.3Wert=3}] if score VarZufG.3Min PZZufG.3Wert = VarZufG.3Max PZZufG.3Wert run scoreboard players set VarZufG.3Zufallswert PZZufG.3Wert -1

execute if score VarZufG.3Modulus PZZufG.3Wert matches 0.. as @a[distance=..25] unless entity @s[scores={PZZufG.3Wert=0}] run tellraw @s ["Zufallsgenerator.3: ",{"text":"\nmin (","bold":true},{"text":"=min + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Minimum + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZZufG.3Wert set 1"} },{"text":",","bold":true},{"text":"=min - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Minimum - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZZufG.3Wert set -1"} },{"text":") == ","bold":true},{"score":{"name":"VarZufG.3Min","objective":"PZZufG.3Wert"},"color":"dark_purple","bold":true},{"text":"\nmax (","bold":true},{"text":"=max + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Maximum + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZZufG.3Wert set 2"} },{"text":",","bold":true},{"text":"=max - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Maximum - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZZufG.3Wert set -2"} },{"text":") == ","bold":true},{"score":{"name":"VarZufG.3Max","objective":"PZZufG.3Wert"},"color":"dark_purple","bold":true},{"text":"\nvar = ","bold":true},{"text":"zufallswert(min,max)","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für einen Zufallswert"} },"clickEvent":{"action":"run_command","value":"/trigger PZZufG.3Wert set 3"} },{"text":"\nvar == ","bold":true},{"score":{"name":"VarZufG.3Zufallswert","objective":"PZZufG.3Wert"},"color":"dark_purple","bold":true} ]

execute as @a[distance=..25] unless entity @s[scores={PZZufG.3Wert=0}] run scoreboard players enable @s PZZufG.3Wert
execute as @a[distance=..25] unless entity @s[scores={PZZufG.3Wert=0}] run scoreboard players set @s PZZufG.3Wert 0
