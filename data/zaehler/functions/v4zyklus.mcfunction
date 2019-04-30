
execute as @a[distance=..25] unless entity @s[scores={PZZaehl.4Wert=0}] run scoreboard players enable @s PZZaehl.4Wert
execute if entity @a[distance=..25,scores={PZZaehl.4Wert=1}] run scoreboard players add VarZaehl.4Variable PZZaehl.4Wert 1
execute if entity @a[distance=..25,scores={PZZaehl.4Wert=2}] run scoreboard players operation VarZaehl.4Ergebnis PZZaehl.4Wert += VarZaehl.4Variable PZZaehl.4Wert
execute if entity @a[distance=..25,scores={PZZaehl.4Wert=3}] run scoreboard players operation VarZaehl.4Countdown PZZaehl.4Wert = VarZaehl.4Ergebnis PZZaehl.4Wert
execute if entity @a[distance=..25,scores={PZZaehl.4Wert=3}] store result bossbar zaehler:v4countdown max run scoreboard players get VarZaehl.4Countdown PZZaehl.4Wert

execute if score VarZaehl.4Countdown PZZaehl.4Wert matches 1.. run scoreboard players remove VarZaehl.4Tick PZZaehl.4Wert 1
execute if score VarZaehl.4Countdown PZZaehl.4Wert matches 1.. if score VarZaehl.4Tick PZZaehl.4Wert matches ..-1 run title @a[distance=..25] actionbar ["",{"score":{"name":"VarZaehl.4Countdown","objective":"PZZaehl.4Wert"},"color":"dark_purple","bold":true}]
execute if score VarZaehl.4Countdown PZZaehl.4Wert matches 1.. if score VarZaehl.4Tick PZZaehl.4Wert matches ..-1 run scoreboard players remove VarZaehl.4Countdown PZZaehl.4Wert 1
execute if score VarZaehl.4Countdown PZZaehl.4Wert matches 1.. if score VarZaehl.4Tick PZZaehl.4Wert matches ..-1 store result bossbar zaehler:v4countdown value run scoreboard players get VarZaehl.4Countdown PZZaehl.4Wert
execute if score VarZaehl.4Countdown PZZaehl.4Wert matches 1.. if score VarZaehl.4Tick PZZaehl.4Wert matches ..-1 run scoreboard players set VarZaehl.4Tick PZZaehl.4Wert 20

execute as @a[distance=..25] unless entity @s[scores={PZZaehl.4Wert=0}] at @s run tellraw @s ["Zähler.4: ",{"text":"\nwert + 1 = ","color":"dark_purple","hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Wert"} },"clickEvent":{"action":"run_command","value":"/trigger PZZaehl.4Wert set 1"} },{"score":{"name":"VarZaehl.4Variable","objective":"PZZaehl.4Wert"},"bold":true},{"text":"\nvar + wert = ","color":"dark_purple","hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Variable"} },"clickEvent":{"action":"run_command","value":"/trigger PZZaehl.4Wert set 2"} },{"score":{"name":"VarZaehl.4Ergebnis","objective":"PZZaehl.4Wert"},"bold":true},{"text":"\ncountdown(var)","color":"dark_purple","hoverEvent":{"action":"show_text","value":{"text":"Tippe für den Countdown"} },"clickEvent":{"action":"run_command","value":"/trigger PZZaehl.4Wert set 3"} }]
execute as @a[distance=..25] unless entity @s[scores={PZZaehl.4Wert=0}] run scoreboard players set @s PZZaehl.4Wert 0
