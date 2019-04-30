
execute as @a[distance=..25] unless entity @s[scores={PZKoDe.1Wert=0}] run scoreboard players enable @s PZKoDe.1Wert
execute if entity @a[distance=..25,scores={PZKoDe.1Wert=1}] run scoreboard players add VarKoDe.1Variable1 PZKoDe.1Wert 1
execute if entity @a[distance=..25,scores={PZKoDe.1Wert=1}] run scoreboard players operation #VarKoDe.1Zahl PZKoDe.1Wert = VarKoDe.1Variable1 PZKoDe.1Wert

execute if score #VarKoDe.1Zahl PZKoDe.1Wert matches 1.. run function kodierer_und_dekodierer:v1eingabe
execute if score #VarKoDe.1Zahl PZKoDe.1Wert matches 0 run function kodierer_und_dekodierer:v1ausgabe

execute as @a[distance=..25] unless entity @s[scores={PZKoDe.1Wert=0}] at @s run tellraw @s ["Kodierer und Dekodierer.1: ",{"text":"\nvar1 = ","color":"dark_purple","hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Zahl (10)"} },"clickEvent":{"action":"run_command","value":"/trigger PZKoDe.1Wert set 1"} },{"score":{"name":"VarKoDe.1Variable1","objective":"PZKoDe.1Wert"},"bold":true},{"text":" (","color":"gold"},{"text":"10","bold":true},{"text":")","color":"gold"},{"text":"\nvar2 = ","color":"dark_purple"},{"score":{"name":"VarKoDe.1Variable2","objective":"PZKoDe.1Wert"},"bold":true},{"text":" (","color":"gold"},{"text":"2","bold":true},{"text":")","color":"gold"}]

execute as @a[distance=..25] unless entity @s[scores={PZKoDe.1Wert=0}] run scoreboard players set @s PZKoDe.1Wert 0
