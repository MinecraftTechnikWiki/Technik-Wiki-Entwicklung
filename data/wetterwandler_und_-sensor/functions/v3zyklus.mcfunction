# Jeden Tick wird die Dauer des Wetters um eins reduziert und bei null wird das Wetter wieder klar
data merge entity @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetter,name=!"klares Wetter",scores={PZWetWS.3Wert=0},sort=nearest,limit=1] {CustomName:'{"text":"klares Wetter","color":"yellow","bold":true}'}
scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetter,scores={PZWetWS.3Wert=1..}] PZWetWS.3Wert 1

# Je nach Einstellung wird das Wetter auf die Wetterart eingestellt, so wie der Rüstungsständer seinen Namen dafür besitzt
execute if entity @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetter,name="klares Wetter"] run weather clear 1
execute as @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetter,name="Regen"] unless entity @s[scores={PZWetWS.3Wert=0}] run weather rain 1
execute as @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetter,name="Gewitter"] unless entity @s[scores={PZWetWS.3Wert=0}] run weather thunder 1

# Falls an der Position des Rüstungsständers (Wetteranlage) kein Kessel vorhanden ist, wird einer platziert
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage] unless block ~ ~ ~ minecraft:cauldron run setblock ~ ~ ~ minecraft:cauldron replace

# Wenn man eine Wasserflasche in die Nähe der Wetteranlage wirft, erhält der Drop ein Etikett, damit es einfacher erkannt werden kann
execute as @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage] at @s run tag @e[distance=..2,type=minecraft:item,tag=!EtiWetWS.3Wasserflasche,nbt={Item:{id:"minecraft:potion",tag:{Potion:"minecraft:water"} } },sort=nearest,limit=1] add EtiWetWS.3Wasserflasche

# Spieler erhalten nach dem Wurf der Wasserflasche den Wert -1 und erhalten so die Chat-Nachricht und gleichzeitig erhält die Wetteranlage den Wert 500 für die Ticks wie sie aktiv ist. Anschließend wird die Wasserflasche entfernt
execute as @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage] at @s if entity @e[distance=..2,type=minecraft:item,tag=EtiWetWS.3Wasserflasche,sort=nearest,limit=1] run scoreboard players set @a[distance=..5] PZWetWS.3Wert -1
execute as @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage] at @s if entity @e[distance=..2,type=minecraft:item,tag=EtiWetWS.3Wasserflasche,sort=nearest,limit=1] run scoreboard players set @s PZWetWS.3Wert 500
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage] run kill @e[distance=..2,type=minecraft:item,tag=EtiWetWS.3Wasserflasche,sort=nearest,limit=1]

# Wenn die Wetteranlage aktiv ist, wird sie rotiert und lässt Wasserpartikel um sie kreisen
execute as @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage,scores={PZWetWS.3Wert=1..}] at @s run teleport @s ~ ~ ~ ~2 ~
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage,scores={PZWetWS.3Wert=1..}] run particle minecraft:fishing ^ ^1 ^1 0 0 0 0.01 10 force @a[distance=..25]
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage,scores={PZWetWS.3Wert=1..}] run particle minecraft:fishing ^ ^1 ^-1 0 0 0 0.01 10 force @a[distance=..25]

# Solange die Wetteranlage mindestens den Wert von eins hat, wird ihr jeden Tick dieser um eins reduziert
scoreboard players remove @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage,scores={PZWetWS.3Wert=1..}] PZWetWS.3Wert 1

# Wenn die Wetteranlage aktiv ist und ein Spieler auf den Auslöser im Chat geklickt hat, besitzt einen bestimmten Wert, mit dem er das Wetter entsprechend einstellen kann
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage,scores={PZWetWS.3Wert=1..}] if entity @a[distance=..5,scores={PZWetWS.3Wert=1}] run data merge entity @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetter,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"yellow","text":"klares Wetter"}'}
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage,scores={PZWetWS.3Wert=1..}] if entity @a[distance=..5,scores={PZWetWS.3Wert=2}] run data merge entity @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetter,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"aqua","text":"Regen"}'}
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage,scores={PZWetWS.3Wert=1..}] if entity @a[distance=..5,scores={PZWetWS.3Wert=3}] run data merge entity @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetter,sort=nearest,limit=1] {CustomName:'{"bold":true,"color":"blue","text":"Gewitter"}'}
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage,scores={PZWetWS.3Wert=1..}] if entity @a[distance=..5,scores={PZWetWS.3Wert=4}] run scoreboard players add VarWetWS.3Dauer PZWetWS.3Wert 1
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage,scores={PZWetWS.3Wert=1..}] if entity @a[distance=..5,scores={PZWetWS.3Wert=5}] if score VarWetWS.3Dauer PZWetWS.3Wert matches 0.. run scoreboard players remove VarWetWS.3Dauer PZWetWS.3Wert 1

# Wenn die Wetterdauer angeklickt wurde, wird die dauer in den Rüstungsständer für das Wetter gespeichert und anschließend mal 100 gerechnet
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage,scores={PZWetWS.3Wert=1..}] if entity @a[distance=..5,scores={PZWetWS.3Wert=4..5}] run scoreboard players operation @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetter] PZWetWS.3Wert = VarWetWS.3Dauer PZWetWS.3Wert
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage,scores={PZWetWS.3Wert=1..}] if entity @a[distance=..5,scores={PZWetWS.3Wert=4..5}] run scoreboard players operation @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetter,scores={PZWetWS.3Wert=1..}] PZWetWS.3Wert *= KonstWetWS.3HUNDERT PZWetWS.3Wert
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage,scores={PZWetWS.3Wert=1..}] run title @a[distance=..5,scores={PZWetWS.3Wert=4..5}] actionbar ["",{"score":{"name":"@e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetter,sort=nearest,limit=1]","objective":"PZWetWS.3Wert"},"color":"dark_purple","bold":true},{"text":" Ticks: ","color":"gray","bold":true},{"entity":"@e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetter,sort=nearest,limit=1]","nbt":"CustomName","interpret":true}]

# Wenn die Wetteranlage aktiv ist und der Spieler nicht den Wert null besitzt, so erhält er die Chat-Nachricht in der alle Wetteroptionen aufgelistet sind
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage,scores={PZWetWS.3Wert=1..}] as @a[distance=..5] unless entity @s[scores={PZWetWS.3Wert=0}] run tellraw @s ["Wetterwandler und -sensor.3: ",{"text":"\nwetter = ","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für klares Wetter"} },"clickEvent":{"action":"run_command","value":"/trigger PZWetWS.3Wert set 1"} },{"text":"klares Wetter","color":"gray","bold":true},{"text":"\nwetter = ","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Regen"} },"clickEvent":{"action":"run_command","value":"/trigger PZWetWS.3Wert set 2"} },{"text":"Regen","color":"gray","bold":true},{"text":"\nwetter = ","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Gewitter"} },"clickEvent":{"action":"run_command","value":"/trigger PZWetWS.3Wert set 3"} },{"text":"Gewitter","color":"gray","bold":true},{"text":"\nwetter == ","bold":true},{"entity":"@e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetter,sort=nearest,limit=1]","nbt":"CustomName","interpret":true},{"text":"\ndauer (","bold":true},{"text":"+1","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Dauer +1"} },"clickEvent":{"action":"run_command","value":"/trigger PZWetWS.3Wert set 4"} },{"text":"!","bold":true},{"text":"-1","color":"gray","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Dauer -1"} },"clickEvent":{"action":"run_command","value":"/trigger PZWetWS.3Wert set 5"} },{"text":") == ","bold":true},{"score":{"name":"VarWetWS.3Dauer","objective":"PZWetWS.3Wert"},"color":"dark_purple","bold":true}]

# Spieler die keinen Wert besitzen oder einen über null erhalten die Erlaubnis einen Auslöser zu nutzen und bekommen den Wert null zugewiesen
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage] as @a[distance=..5] unless entity @s[scores={PZWetWS.3Wert=0}] run scoreboard players enable @s PZWetWS.3Wert
execute at @e[type=minecraft:armor_stand,tag=EtiWetWS.3Wetteranlage] as @a[distance=..5] unless entity @s[scores={PZWetWS.3Wert=0}] run scoreboard players set @s PZWetWS.3Wert 0
