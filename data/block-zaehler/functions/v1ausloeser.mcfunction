
execute if entity @s[scores={PZBlZal.1Ausl=1}] run kill @e[type=minecraft:marker,tag=EtiBlZal.1Start]
execute if entity @s[scores={PZBlZal.1Ausl=1}] run summon minecraft:marker ~ ~ ~ {Tags:["EtiBlZal.1Alle","EtiBlZal.1Position","EtiBlZal.1Start"]}

execute if entity @s[scores={PZBlZal.1Ausl=1}] store result storage block-zaehler:v1daten "EigBlZal.1Position".X int 1 run data get entity @s Pos[0]
execute if entity @s[scores={PZBlZal.1Ausl=1}] store result storage block-zaehler:v1daten "EigBlZal.1Position".Y int 1 run data get entity @s Pos[1]
execute if entity @s[scores={PZBlZal.1Ausl=1}] store result storage block-zaehler:v1daten "EigBlZal.1Position".Z int 1 run data get entity @s Pos[2]

data modify storage block-zaehler:v1daten "EigBlZal.1Start"[0] set from storage block-zaehler:v1daten "EigBlZal.1Position".X
data modify storage block-zaehler:v1daten "EigBlZal.1Start"[1] set from storage block-zaehler:v1daten "EigBlZal.1Position".Y
data modify storage block-zaehler:v1daten "EigBlZal.1Start"[2] set from storage block-zaehler:v1daten "EigBlZal.1Position".Z

#title @s[scores={PZBlZal.1Ausl=1}] actionbar ["",{"text":"X = ","color":"gray","bold":true},{"storage":"block-zaehler:v1daten","nbt":"\"EigBlZal.1Start\"[0]","color":"red","bold":true},{"text":" Y = ","color":"gray","bold":true},{"storage":"block-zaehler:v1daten","nbt":"\"EigBlZal.1Start\"[1]","color":"blue","bold":true},{"text":" Z = ","color":"gray","bold":true},{"storage":"block-zaehler:v1daten","nbt":"\"EigBlZal.1Start\"[2]","color":"green","bold":true}]

execute if entity @s[scores={PZBlZal.1Ausl=2}] run kill @e[type=minecraft:marker,tag=EtiBlZal.1Ende]
execute if entity @s[scores={PZBlZal.1Ausl=2}] run summon minecraft:marker ~1 ~1 ~1 {Tags:["EtiBlZal.1Alle","EtiBlZal.1Position","EtiBlZal.1Ende"]}

execute if entity @s[scores={PZBlZal.1Ausl=2}] store result storage block-zaehler:v1daten "EigBlZal.1Position".DX int 1 run data get entity @s Pos[0]
execute if entity @s[scores={PZBlZal.1Ausl=2}] store result storage block-zaehler:v1daten "EigBlZal.1Position".DY int 1 run data get entity @s Pos[1]
execute if entity @s[scores={PZBlZal.1Ausl=2}] store result storage block-zaehler:v1daten "EigBlZal.1Position".DZ int 1 run data get entity @s Pos[2]

data modify storage block-zaehler:v1daten "EigBlZal.1Ende"[0] set from storage block-zaehler:v1daten "EigBlZal.1Position".DX
data modify storage block-zaehler:v1daten "EigBlZal.1Ende"[1] set from storage block-zaehler:v1daten "EigBlZal.1Position".DY
data modify storage block-zaehler:v1daten "EigBlZal.1Ende"[2] set from storage block-zaehler:v1daten "EigBlZal.1Position".DZ

#title @s[scores={PZBlZal.1Ausl=2}] actionbar ["",{"text":"DX = ","color":"gray","bold":true},{"storage":"block-zaehler:v1daten","nbt":"\"EigBlZal.1Ende\"[0]","color":"red","bold":true},{"text":" DY = ","color":"gray","bold":true},{"storage":"block-zaehler:v1daten","nbt":"\"EigBlZal.1Ende\"[1]","color":"blue","bold":true},{"text":" DZ = ","color":"gray","bold":true},{"storage":"block-zaehler:v1daten","nbt":"\"EigBlZal.1Ende\"[2]","color":"green","bold":true}]

execute if entity @s[scores={PZBlZal.1Ausl=1..2}] run tag @e[type=minecraft:marker,tag=EtiBlZal.1Koordinaten,limit=2] remove EtiBlZal.1Koordinaten

execute if entity @s[scores={PZBlZal.1Ausl=3}] run data modify storage block-zaehler:v1daten "EigBlZal.1Luft" append from storage block-zaehler:v1daten "EigBlZal.1Luft"[0]
execute if entity @s[scores={PZBlZal.1Ausl=3}] run data remove storage block-zaehler:v1daten "EigBlZal.1Luft"[0]
execute if entity @s[scores={PZBlZal.1Ausl=3}] store success score VarBlZal.1Luft PZBlZal.1Wert unless score VarBlZal.1Luft PZBlZal.1Wert matches 1

execute if entity @s[scores={PZBlZal.1Ausl=4}] run function block-zaehler:v1koordinaten

# Dem Spieler wird im Chat die Optionen-Liste angezeigt.
tellraw @s ["Block-Zähler.1:\n",{"text":"bereich.start = ","bold":true},{"text":"Spieler.position()","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für die erste Position des Spielers"} },"clickEvent":{"action":"run_command","value":"/trigger PZBlZal.1Ausl set 1"} },"\n",{"text":"bereich.start == ","bold":true},{"storage":"block-zaehler:v1daten","nbt":"\"EigBlZal.1Start\"","color":"dark_purple","bold":true},"\n",{"text":"bereich.ende = ","bold":true},{"text":"Spieler.position()","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für die zweite Position des Spielers"} },"clickEvent":{"action":"run_command","value":"/trigger PZBlZal.1Ausl set 2"} },"\n",{"text":"bereich.ende == ","bold":true},{"storage":"block-zaehler:v1daten","nbt":"\"EigBlZal.1Ende\"","color":"dark_purple","bold":true},"\n",{"text":"bereich.luft {","bold":true},{"text":"NICHT luft","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe um Luft zu negieren"} },"clickEvent":{"action":"run_command","value":"/trigger PZBlZal.1Ausl set 3"} },{"text":"} == ","bold":true},{"storage":"block-zaehler:v1daten","nbt":"\"EigBlZal.1Luft\"[0]","interpret":true},"\n",{"text":"bereich.zaehlen()","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe um Blöcke zu zählen"} },"clickEvent":{"action":"run_command","value":"/trigger PZBlZal.1Ausl set 4"} } ]

# Damit der Spieler nach dem anklicken der Optionen erneut die Berechtigung erhält um nochmals eine Option aktivieren zu können.
scoreboard players enable @s PZBlZal.1Ausl
scoreboard players set @s PZBlZal.1Ausl 0
