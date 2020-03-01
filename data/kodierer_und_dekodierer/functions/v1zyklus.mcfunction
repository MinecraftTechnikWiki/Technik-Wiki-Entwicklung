# Wenn Spieler in einem Umkreis von 25 Metern den Wert eins besitzen, wird die Variable 1 um eins erhöht und das Ergebnis in die Zahl-Variable gespeichert.
execute if entity @a[distance=..25,scores={PZKoDe.1Wert=1}] store result score #VarKoDe.1Zahl PZKoDe.1Wert run scoreboard players add VarKoDe.1Variable1 PZKoDe.1Wert 1

# Wenn die Zahl-Variable einen Wert ab eins besitzt, so wird die Eingaben-Funktion aufgerufen. In ihr wird sie wieder auf null gesetzt wodurch die Ausgaben-Funktion danach ausgeführt wird.
execute if score #VarKoDe.1Zahl PZKoDe.1Wert matches 1.. run function kodierer_und_dekodierer:v1eingabe
execute if score #VarKoDe.1Zahl PZKoDe.1Wert matches 0 run function kodierer_und_dekodierer:v1ausgabe

# Wenn die Zahl-Variable exisitiert, wird nach Spielern in einem Umkreis von 25 Metern geschaut, ob sie einen Wert außer null besitzen und erhalten dann die Chat-Nachricht.
execute if score #VarKoDe.1Zahl PZKoDe.1Wert matches -1.. as @a[distance=..25] unless entity @s[scores={PZKoDe.1Wert=0}] run tellraw @s ["Kodierer und Dekodierer.1: ",{"text":"\nvar1 == ","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für [var1 + 1]10"} },"clickEvent":{"action":"run_command","value":"/trigger PZKoDe.1Wert set 1"} },{"text":"[","color":"gray","bold":true},{"score":{"name":"VarKoDe.1Variable1","objective":"PZKoDe.1Wert"},"color":"dark_purple","bold":true},{"text":"]","color":"gray","bold":true},{"text":"10","bold":true,"italic":true},{"text":"\nvar2 == ","bold":true},{"text":"[","color":"gray","bold":true},{"score":{"name":"VarKoDe.1Variable2","objective":"PZKoDe.1Wert"},"color":"dark_purple","bold":true},{"text":"]","color":"gray","bold":true},{"text":"2","bold":true,"italic":true}]

# Wenn Spieler keinen Wert hatten oder irgendeinen anderen Wert außer null, erhalten sie die Erlaubnis für den Auslöser und ihr Wert wird auf null gesetzt.
execute as @a[distance=..25] unless entity @s[scores={PZKoDe.1Wert=0}] run scoreboard players enable @s PZKoDe.1Wert
execute as @a[distance=..25] unless entity @s[scores={PZKoDe.1Wert=0}] run scoreboard players set @s PZKoDe.1Wert 0
