# Wenn man auf die Länge geklickt hat, wird die Felderreihe verlängert oder gekürzt.

execute at @s[scores={PZZufG.6Wert=1..2}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["EtiZufG.6Alle"]}
execute at @s[scores={PZZufG.6Wert=1..2}] store result score VarZufG.6Zufallswert PZZufG.6Pos run data get entity @e[type=minecraft:area_effect_cloud,tag=EtiZufG.6Alle,sort=nearest,limit=1] UUID[0] 1
execute if entity @s[scores={PZZufG.6Wert=1}] run data modify storage zufallsgenerator:v6daten "EigZufG.6Felder" append value 0
execute if entity @s[scores={PZZufG.6Wert=1}] store result storage zufallsgenerator:v6daten "EigZufG.6Felder"[-1] int 1 run scoreboard players operation VarZufG.6Zufallswert PZZufG.6Pos %= KonstZufG.6HUNDERT PZZufG.6Pos

execute if score VarZufG.6Laenge PZZufG.6Pos matches 1.. run scoreboard players operation @s[scores={PZZufG.6Wert=2}] PZZufG.6Pos = VarZufG.6Zufallswert PZZufG.6Pos
execute if score VarZufG.6Laenge PZZufG.6Pos matches 1.. run scoreboard players operation @s[scores={PZZufG.6Wert=2}] PZZufG.6Pos %= VarZufG.6Laenge PZZufG.6Pos

execute if entity @s[scores={PZZufG.6Wert=-1}] run data remove storage zufallsgenerator:v6daten "EigZufG.6Felder"[-1]

# Die Anzahl der Felder wird ausgelesen und in eine Variable gespeichert.
execute store result score VarZufG.6Laenge PZZufG.6Pos run data get storage zufallsgenerator:v6daten "EigZufG.6Felder"

# Wenn man die Länge der Felderreihe verkleinern möchte, wird geprüft ob die aktuelle Position nicht auf dem gelöschten Feld lag, falls doch, wird die Position auf das erste Feld gesetzt.
execute if score @s[scores={PZZufG.6Wert=-1}] PZZufG.6Pos >= VarZufG.6Laenge PZZufG.6Pos run scoreboard players set @s PZZufG.6Pos 0

# Wenn man die Position erhöhen möchte, wird sie um eins erhöht und es wird geprüft ob sie dabei die Länge der Felderreihe übersteigt. Falls das der Fall ist, wird die Position wieder auf null gesetzt.
#scoreboard players add @s[scores={PZZufG.6Wert=2}] PZZufG.6Pos 1
#execute if score @s[scores={PZZufG.6Wert=2}] PZZufG.6Pos >= VarZufG.6Laenge PZZufG.6Pos run scoreboard players set @s PZZufG.6Pos 0

# Wenn man die Position verkleinert, wird die Position um eins verringert. Falls dann aber die Position kleiner als null ist, erhält sie den Wert der Länge minus eins.
#scoreboard players remove @s[scores={PZZufG.6Wert=-2}] PZZufG.6Pos 1
#execute store result score @s[scores={PZZufG.6Wert=-2,PZZufG.6Pos=..-1}] PZZufG.6Pos run scoreboard players remove VarZufG.6Laenge PZZufG.6Pos 1
#execute if score @s[scores={PZZufG.6Wert=-2}] PZZufG.6Pos = VarZufG.6Laenge PZZufG.6Pos run scoreboard players add VarZufG.6Laenge PZZufG.6Pos 1


# Für den Aufruf der Felder-Funktion wird die Variable für aktuelle Position auf null gesetzt.
scoreboard players set VarZufG.6AktuellePosition PZZufG.6Pos 0
function zufallsgenerator:v6felder

# Der Spieler mit dem Stock erhält eine Chat-Nachricht, mit allen Optionen für die Felderreihe.
tellraw @s ["Zufallsgenerator.6: ",{"text":"\nFelder == [","bold":true},{"storage":"zufallsgenerator:v6daten","nbt":"\"EigZufG.6Felder\"[]","color":"dark_purple","bold":true},{"text":"]","bold":true},{"text":"\nFelder.laenge (","bold":true},{"text":"=laenge + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Länge + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZZufG.6Wert set 1"} },{"text":",","bold":true},{"text":"=laenge - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Länge - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZZufG.6Wert set -1"} },{"text":") == ","bold":true},{"score":{"name":"VarZufG.6Laenge","objective":"PZZufG.6Pos"},"color":"gold","bold":true},{"text":"\nFelder.position = ","bold":true},{"text":"zufallswert(laenge)","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für eine zufällige Position"} },"clickEvent":{"action":"run_command","value":"/trigger PZZufG.6Wert set 2"} },{"text":"\nFelder.position == ","bold":true},{"score":{"name":"@s","objective":"PZZufG.6Pos"},"color":"green","bold":true},{"text":"\nFelder[","bold":true},{"score":{"name":"@s","objective":"PZZufG.6Pos"},"color":"green","bold":true},{"text":"] == ","bold":true},{"score":{"name":"VarZufG.6Wert","objective":"PZZufG.6Pos"},"color":"dark_purple","bold":true}]

# Der Spieler erhält die Berechtigung den Auslöser erneut auszuführen und sein Wert wird auf null gesetzt.
scoreboard players enable @s PZZufG.6Wert
scoreboard players set @s PZZufG.6Wert 0
