
execute if entity @s[scores={PZKNeur.1Wert=1}] run scoreboard players add @e[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert,sort=nearest,limit=1] PZKNeur.1Wert 1
execute if entity @s[scores={PZKNeur.1Wert=-1}] run scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert,sort=nearest,limit=1] PZKNeur.1Wert 1

execute if entity @s[scores={PZKNeur.1Wert=2}] as @e[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert,tag=EtiKNeur.1Bool,sort=nearest,limit=1] run data merge entity @s {CustomName:'{"bold":true,"color":"green","text":"wahr"}'}
execute if entity @s[scores={PZKNeur.1Wert=-2}] as @e[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert,tag=EtiKNeur.1Bool,sort=nearest,limit=1] run data merge entity @s {CustomName:'{"bold":true,"color":"red","text":"falsch"}'}

execute if score @e[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert,name="wahr",sort=nearest,limit=1] PZKNeur.1Wert >= @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert,sort=nearest,limit=1] PZKNeur.1Wert

execute if entity @s[scores={PZKNeur.1Wert=3}] as @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert,sort=nearest,limit=1] run scoreboard players add @s[scores={PZKNeur.1Wert=..98}] PZKNeur.1Wert 1
execute if entity @s[scores={PZKNeur.1Wert=-3}] as @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert,sort=nearest,limit=1] run scoreboard players remove @s[scores={PZKNeur.1Wert=2..}] PZKNeur.1Wert 1

##
#tag @e[type=minecraft:armor_stand,tag=EtiKNeur.1Ausloeser,tag=EtiKNeur.1Wert,sort=nearest,limit=1] add EtiKNeur.1Selbst
#execute at @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schild] run data merge block ~ ~ ~ {Text1:'{"score":{"name":"@e[type=minecraft:armor_stand,tag=EtiKNeur.1Selbst,sort=nearest,limit=1]","objective":"PZKNeur.1Wert"},"color":"dark_purple","bold":true}'}
#execute at @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schild] run data modify entity @e[type=minecraft:armor_stand,tag=EtiKNeur.1Selbst,sort=nearest,limit=1] CustomName set from block ~ ~ ~ Text1
#tag @e[type=minecraft:armor_stand,tag=EtiKNeur.1Selbst,sort=nearest,limit=1] remove EtiKNeur.1Selbst
##

execute as @e[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert,sort=nearest,limit=1] run tellraw @p ["Künstliches Neuron.1:\n",{"text":"Neuron.wert = ","bold":true},{"text":"wert + 1/100","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Eingangswert + 1/100"} },"clickEvent":{"action":"run_command","value":"/trigger PZKNeur.1Wert set 1"} },"\n",{"text":"Neuron.wert = ","bold":true},{"text":"wert - 1/100","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Eingangswert - 1/100"} },"clickEvent":{"action":"run_command","value":"/trigger PZKNeur.1Wert set -1"} },"\n",{"text":"Neuron.wert == ","bold":true},{"score":{"name":"@s","objective":"PZKNeur.1Wert"},"color":"dark_purple","bold":true},"\n",{"text":"Neuron.bool = ","bold":true},{"text":"wahr","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Wert wahr"} },"clickEvent":{"action":"run_command","value":"/trigger PZKNeur.1Wert set 2"} },"\n",{"text":"Neuron.bool = ","bold":true},{"text":"falsch","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Wert falsch"} },"clickEvent":{"action":"run_command","value":"/trigger PZKNeur.1Wert set -2"} },"\n",{"text":"Neuron.bool == ","bold":true},{"entity":"@s","nbt":"CustomName","interpret":true} ]

execute as @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert,sort=nearest,limit=1] run tellraw @p ["Künstliches Neuron.1:\n",{"text":"Neuron.wert = ","bold":true},{"text":"wert + 1/100","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Schwellenwert + 1/100"} },"clickEvent":{"action":"run_command","value":"/trigger PZKNeur.1Wert set 3"} },"\n",{"text":"Neuron.wert = ","bold":true},{"text":"wert - 1/100","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Schwellenwert - 1/100"} },"clickEvent":{"action":"run_command","value":"/trigger PZKNeur.1Wert set -3"} },"\n",{"text":"Neuron.wert == ","bold":true},{"score":{"name":"@s","objective":"PZKNeur.1Wert"},"color":"dark_purple","bold":true},"\n",{"text":"Neuron.ergebnis (","bold":true},{"text":"=bool","color":"gray","bold":true},{"text":") == ","bold":true},{"entity":"@s","nbt":"CustomName","interpret":true} ]

scoreboard players enable @s PZKNeur.1Wert
scoreboard players set @s PZKNeur.1Wert 0
