# Für dne Wert eins wird die Variable 1 um eins ehröht. Für die Werte zwei und drei die System-Variablen, wobei sie größer zehn wieder auf zwei gesetzt werden.
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1}] run scoreboard players add VarKoDe.2Variable1 PZKoDe.2Wert 1
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=2}] run scoreboard players add VarKoDe.2System1 PZKoDe.2Wert 1
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=2}] if score VarKoDe.2System1 PZKoDe.2Wert matches 11.. run scoreboard players set VarKoDe.2System1 PZKoDe.2Wert 2
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=3}] run scoreboard players add VarKoDe.2System2 PZKoDe.2Wert 1
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=3}] if score VarKoDe.2System2 PZKoDe.2Wert matches 11.. run scoreboard players set VarKoDe.2System2 PZKoDe.2Wert 2

# Der Wert der Variable 1 wird in die Eingabe-Variable gespeichert und das erste Zahlensystem ebenfalls in die System-Variable. Anschließend wird mit diesen Variablen die Zahl im vorgegebenen Zahlensystem ausgerechnet.
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1..}] run scoreboard players operation #VarKoDe.2EingabeZahl PZKoDe.2Wert = VarKoDe.2Variable1 PZKoDe.2Wert
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1..}] run scoreboard players operation #VarKoDe.2AusgabeSystem PZKoDe.2Wert = VarKoDe.2System1 PZKoDe.2Wert
execute if score #VarKoDe.2EingabeZahl PZKoDe.2Wert matches 1.. run function kodierer_und_dekodierer:v2eingabe
execute if score #VarKoDe.2EingabeZahl PZKoDe.2Wert matches 0 run function kodierer_und_dekodierer:v2ausgabe
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1..}] run scoreboard players operation VarKoDe.2SystemVariable1 PZKoDe.2Wert = #VarKoDe.2AusgabeZahl PZKoDe.2Wert

# Der Wert der Variable 1 wird nochmal in die Eingabe-Variable gespeichert und das zweite Zahlensystem ebenfalls in die System-Variable. Anschließend wird mit diesen Variablen die Zahl im vorgegebenen Zahlensystem ausgerechnet.
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1..}] run scoreboard players operation #VarKoDe.2EingabeZahl PZKoDe.2Wert = VarKoDe.2Variable1 PZKoDe.2Wert
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1..}] run scoreboard players operation #VarKoDe.2AusgabeSystem PZKoDe.2Wert = VarKoDe.2System2 PZKoDe.2Wert
execute if score #VarKoDe.2EingabeZahl PZKoDe.2Wert matches 1.. run function kodierer_und_dekodierer:v2eingabe
execute if score #VarKoDe.2EingabeZahl PZKoDe.2Wert matches 0 run function kodierer_und_dekodierer:v2ausgabe
execute if entity @a[distance=..25,scores={PZKoDe.2Wert=1..}] run scoreboard players operation VarKoDe.2SystemVariable2 PZKoDe.2Wert = #VarKoDe.2AusgabeZahl PZKoDe.2Wert

# Wenn die Variable 1 existiert werden Spieler im Umkreis von 25 Metern ausgewählt, welche nicht den Wert null besitzen und erhalten die Chat-Nachricht. In ihr können sie die Variable 1 festlegen und die beiden Zahlensysteme nach belieben ändern.
execute if score VarKoDe.2Variable1 PZKoDe.2Wert matches 0.. as @a[distance=..25] unless entity @s[scores={PZKoDe.2Wert=0}] run tellraw @s ["Kodierer und Dekodierer.2: ",{"text":"\nvar1 == ","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für [var1 + 1]System1"} },"clickEvent":{"action":"run_command","value":"/trigger PZKoDe.2Wert set 1"} },{"text":"[","color":"gray","bold":true},{"score":{"name":"VarKoDe.2SystemVariable1","objective":"PZKoDe.2Wert"},"color":"dark_purple","bold":true},{"text":"]","color":"gray","bold":true},{"score":{"name":"VarKoDe.2System1","objective":"PZKoDe.2Wert"},"color":"gold","bold":true,"italic":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für das Zahlensystem1"} },"clickEvent":{"action":"run_command","value":"/trigger PZKoDe.2Wert set 2"} },{"text":"\nvar2 == ","bold":true},{"text":"[","color":"gray","bold":true},{"score":{"name":"VarKoDe.2SystemVariable2","objective":"PZKoDe.2Wert"},"color":"dark_purple","bold":true},{"text":"]","color":"gray","bold":true},{"score":{"name":"VarKoDe.2System2","objective":"PZKoDe.2Wert"},"color":"gold","bold":true,"italic":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für das Zahlensystem2"} },"clickEvent":{"action":"run_command","value":"/trigger PZKoDe.2Wert set 3"} }]

# Spieler die noch keinen Wert besitzen oder nicht den Wert null besitzen, erhalten die Auslöser-Erlaubis und den Wert null. 
execute as @a[distance=..25] unless entity @s[scores={PZKoDe.2Wert=0}] run scoreboard players enable @s PZKoDe.2Wert
execute as @a[distance=..25] unless entity @s[scores={PZKoDe.2Wert=0}] run scoreboard players set @s PZKoDe.2Wert 0
