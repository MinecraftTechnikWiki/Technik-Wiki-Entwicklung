

scoreboard objectives add PZKubusG.1Wert trigger [""]




# Wenn der Spieler eine der fünf einstellbaren Werte ausgelöst hat, wird sein Wert in den der Variable gespeichert.
execute if entity @s[scores={PZKubusG.1Wert=5..30}] run scoreboard players operation VarKubusG.1Variable PZKubusG.1Wert = @s PZKubusG.1Wert

# Der Spieler erhält im Chat alle möglichen Werte zur Auswahl und kann auf diese klicken um sie einzustellen.
tellraw @s ["Kubusgenerator.1:\n",{"text":"kante = ","bold":true},{"text":"wert_5","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für den Wert 5"} },"clickEvent":{"action":"run_command","value":"/trigger PZKubusG.1Wert set 5"} },"\n",{"text":"kante = ","bold":true},{"text":"wert_10","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für den Wert 10"} },"clickEvent":{"action":"run_command","value":"/trigger PZKubusG.1Wert set 10"} },"\n",{"text":"kante = ","bold":true},{"text":"wert_15","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für den Wert 15"} },"clickEvent":{"action":"run_command","value":"/trigger PZKubusG.1Wert set 15"} },"\n",{"text":"kante = ","bold":true},{"text":"wert_20","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für den Wert 20"} },"clickEvent":{"action":"run_command","value":"/trigger PZKubusG.1Wert set 20"} },"\n",{"text":"kante = ","bold":true},{"text":"wert_25","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für den Wert 25"} },"clickEvent":{"action":"run_command","value":"/trigger PZKubusG.1Wert set 25"} },"\n",{"text":"kante = ","bold":true},{"text":"wert_30","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für den Wert 30"} },"clickEvent":{"action":"run_command","value":"/trigger PZKubusG.1Wert set 30"} },"\n",{"text":"kante == ","bold":true},{"text":"wert_","color":"dark_purple","bold":true},{"score":{"name":"VarKubusG.1Variable","objective":"PZKubusG.1Wert"},"color":"dark_purple","bold":true}]

# Der Spieler erhält die Berechtigung den Auslöser zu betätigen und sein Wert wird wieder auf null gesetzt.
scoreboard players enable @s PZKubusG.1Wert
scoreboard players set @s PZKubusG.1Wert 0






scoreboard objectives add PZSchlK.1Wert trigger ["Schleifen-Konstrukt.1: ",{"text":"Schleifen-Wert","bold":true}]
scoreboard players set VarSchlK.1Variable PZSchlK.1Wert 0


execute if entity @a[distance=..15,scores={PZSchlK.1Wert=1}] run scoreboard players set VarSchlK.1Variable PZSchlK.1Wert 0
execute if entity @a[distance=..15,scores={PZSchlK.1Wert=2}] run scoreboard players add VarSchlK.1Variable PZSchlK.1Wert 1
execute if entity @a[distance=..15,scores={PZSchlK.1Wert=3}] run scoreboard players add VarSchlK.1Schleife PZSchlK.1Wert 1



#execute if entity @a[distance=..15,scores={PZSchlK.1Wert=1}] if score VarSchlK.1Variable PZSchlK.1Wert matches ..11 run scoreboard players add VarSchlK.1Variable PZSchlK.1Wert 1
#execute if entity @a[distance=..15,scores={PZSchlK.1Wert=2}] store success score VarSchlK.1Schleife PZSchlK.1Wert run scoreboard players set VarSchlK.1Ergebnis PZSchlK.1Wert 1

execute if entity @a[distance=..15,scores={PZSchlK.1Wert=3}] if score VarSchlK.1Schleife PZSchlK.1Wert < VarSchlK.1Variable PZSchlK.1Wert run setblock ~ ~1 ~ minecraft:chain_command_block[facing=south]{auto:true,UpdateLastExecution:false,Command:"give @p[distance=..15,scores={PZSchlK.1Wert=3}] minecraft:coal{EigSchlK.1Alle:true}"} replace



#execute if entity @p[distance=..15,scores={PZSchlK.1Wert=3}] run tellraw @a[distance=..15] ["Schleifen-Konstrukt.1:\n",{"text":"ergebnis = var1\nfür zahl = 1 bis var2: {\nergebnis = ergebnis * var1\n}\nrückgabe ergebnis","color":"aqua","bold":true}]
scoreboard players add VarSchlK.1Schleife PZSchlK.1Wert 1
execute if score VarSchlK.1Schleife PZSchlK.1Wert > VarSchlK.1Variable PZSchlK.1Wert run setblock ~ ~1 ~-1 minecraft:chain_command_block[facing=up]{auto:true,UpdateLastExecution:false} replace


execute if score VarSchlK.1Variable PZSchlK.1Wert matches 0.. as @a[distance=..15] unless entity @s[scores={PZSchlK.1Wert=0}] run tellraw @a[distance=..15] ["Zähler.1:\n",{"text":"var = ","bold":true},{"text":"0","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Variable = 0"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchlK.1Wert set 1"} },"\n",{"text":"var = ","bold":true},{"text":"var + 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Variable + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchlK.1Wert set 2"} },"\n",{"text":"var == ","bold":true},{"score":{"name":"VarSchlK.1Variable","objective":"PZSchlK.1Wert"},"color":"dark_purple","bold":true},"\n",{"text":"gegenstand(var)","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Anzahl von Gegenständen"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchlK.1Wert set 3"} } ]
execute as @a[distance=..15] unless entity @s[scores={PZSchlK.1Wert=0}] run scoreboard players enable @s PZSchlK.1Wert
execute as @a[distance=..15] unless entity @s[scores={PZSchlK.1Wert=0}] run scoreboard players set @s PZSchlK.1Wert 0







scoreboard objectives remove PZSchlK.1Wert
