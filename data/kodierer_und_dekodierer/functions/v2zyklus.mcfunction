
execute as @a[distance=..25] unless entity @s[scores={PZKoDe.2Wert=0}] run scoreboard players enable @s PZKoDe.2Wert
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1}] run scoreboard players add VarKoDe.2Variable1 PZKoDe.2Wert 1
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=2}] run scoreboard players add VarKoDe.2System1 PZKoDe.2Wert 1
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=2}] if score VarKoDe.2System1 PZKoDe.2Wert matches 11.. run scoreboard players set VarKoDe.2System1 PZKoDe.2Wert 2
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=3}] run scoreboard players add VarKoDe.2System2 PZKoDe.2Wert 1
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=3}] if score VarKoDe.2System2 PZKoDe.2Wert matches 11.. run scoreboard players set VarKoDe.2System2 PZKoDe.2Wert 2

execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1..}] run scoreboard players operation #VarKoDe.2EingabeZahl PZKoDe.2Wert = VarKoDe.2Variable1 PZKoDe.2Wert
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1..}] run scoreboard players operation #VarKoDe.2AusgabeSystem PZKoDe.2Wert = VarKoDe.2System1 PZKoDe.2Wert
execute if score #VarKoDe.2EingabeZahl PZKoDe.2Wert matches 1.. run function kodierer_und_dekodierer:v2eingabe
execute if score #VarKoDe.2EingabeZahl PZKoDe.2Wert matches 0 run function kodierer_und_dekodierer:v2ausgabe
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1..}] run scoreboard players operation VarKoDe.2SystemVariable1 PZKoDe.2Wert = #VarKoDe.2AusgabeZahl PZKoDe.2Wert

execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1..}] run scoreboard players operation #VarKoDe.2EingabeZahl PZKoDe.2Wert = VarKoDe.2Variable1 PZKoDe.2Wert
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1..}] run scoreboard players operation #VarKoDe.2AusgabeSystem PZKoDe.2Wert = VarKoDe.2System2 PZKoDe.2Wert
execute if score #VarKoDe.2EingabeZahl PZKoDe.2Wert matches 1.. run function kodierer_und_dekodierer:v2eingabe
execute if score #VarKoDe.2EingabeZahl PZKoDe.2Wert matches 0 run function kodierer_und_dekodierer:v2ausgabe
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1..}] run scoreboard players operation VarKoDe.2SystemVariable2 PZKoDe.2Wert = #VarKoDe.2AusgabeZahl PZKoDe.2Wert

execute as @a[distance=..25] unless entity @s[scores={PZKoDe.2Wert=0}] at @s run tellraw @s ["Kodierer und Dekodierer.2: ",{"text":"\nvar1 = ","color":"dark_purple","hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Zahl (Zahlensystem1)"} },"clickEvent":{"action":"run_command","value":"/trigger PZKoDe.2Wert set 1"} },{"score":{"name":"VarKoDe.2SystemVariable1","objective":"PZKoDe.2Wert"},"bold":true},{"text":" (system1 = ","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Tippe für das Zahlensystem1"} },"clickEvent":{"action":"run_command","value":"/trigger PZKoDe.2Wert set 2"} },{"score":{"name":"VarKoDe.2System1","objective":"PZKoDe.2Wert"},"bold":true},{"text":")","color":"gold"},{"text":"\nvar2 = ","color":"dark_purple"},{"score":{"name":"VarKoDe.2SystemVariable2","objective":"PZKoDe.2Wert"},"bold":true},{"text":" (system2 = ","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Tippe für das Zahlensystem2"} },"clickEvent":{"action":"run_command","value":"/trigger PZKoDe.2Wert set 3"} },{"score":{"name":"VarKoDe.2System2","objective":"PZKoDe.2Wert"},"bold":true},{"text":")","color":"gold"}]

execute as @a[distance=..25] unless entity @s[scores={PZKoDe.2Wert=0}] run scoreboard players set @s PZKoDe.2Wert 0
