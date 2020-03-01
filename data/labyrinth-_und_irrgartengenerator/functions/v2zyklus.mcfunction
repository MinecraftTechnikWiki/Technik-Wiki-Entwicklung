# Wenn irgendein Spieler im Umkreis von 150 Metern einen Auslöser-Wert besitzt, wird die Breiten- oder Längen-Variable um eins erhöht oder verringert.
execute if entity @a[distance=..150,scores={PZLaUIr.2Gross=1}] if score #VarLaUIr.2Breite PZLaUIr.2Gross matches ..63 run scoreboard players add #VarLaUIr.2Breite PZLaUIr.2Gross 1
execute if entity @a[distance=..150,scores={PZLaUIr.2Gross=-1}] if score #VarLaUIr.2Breite PZLaUIr.2Gross matches 3.. run scoreboard players remove #VarLaUIr.2Breite PZLaUIr.2Gross 1
execute if entity @a[distance=..150,scores={PZLaUIr.2Gross=2}] if score #VarLaUIr.2Laenge PZLaUIr.2Gross matches ..63 run scoreboard players add #VarLaUIr.2Laenge PZLaUIr.2Gross 1
execute if entity @a[distance=..150,scores={PZLaUIr.2Gross=-2}] if score #VarLaUIr.2Laenge PZLaUIr.2Gross matches 3.. run scoreboard players remove #VarLaUIr.2Laenge PZLaUIr.2Gross 1

# Falls die Längen-Variable existiert wird in einem Umkreis von 150 Metern Spielern, die nicht den Wert null besitzen eine tellraw-Nachricht gesendet. Diese ermöglicht es die Optionen für Breite und Länge des Irrgartens einzustellen.
execute if score #VarLaUIr.2Laenge PZLaUIr.2Gross matches 0.. as @a[distance=..150] unless entity @s[scores={PZLaUIr.2Gross=0}] run tellraw @s ["Labyrinth- und Irrgartengenerator.2: ",{"text":"\nbreite (","bold":true},{"text":"+1","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Breite +1"} },"clickEvent":{"action":"run_command","value":"/trigger PZLaUIr.2Gross set 1"},"bold":true},{"text":"!","bold":true},{"text":"-1","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Breite -1"} },"clickEvent":{"action":"run_command","value":"/trigger PZLaUIr.2Gross set -1"},"bold":true},{"text":") == ","bold":true},{"score":{"name":"#VarLaUIr.2Breite","objective":"PZLaUIr.2Gross"},"color":"dark_purple","bold":true},{"text":"\nlänge (","bold":true},{"text":"+1","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Länge +1"} },"clickEvent":{"action":"run_command","value":"/trigger PZLaUIr.2Gross set 2"},"bold":true},{"text":"!","bold":true},{"text":"-1","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Länge -1"} },"clickEvent":{"action":"run_command","value":"/trigger PZLaUIr.2Gross set -2"} },{"text":") == ","bold":true},{"score":{"name":"#VarLaUIr.2Laenge","objective":"PZLaUIr.2Gross"},"color":"dark_purple","bold":true}]

# Wenn Spieler im Umkreis von 150 Metern einen Auslöser-Wert angeklickt hatten oder noch nie, dann erhalten sie die Erlaubnis den Auslöser zu aktiiveren und ihr Wert wird auf null gesetzt.
execute as @a[distance=..150] unless entity @s[scores={PZLaUIr.2Gross=0}] run scoreboard players enable @s PZLaUIr.2Gross
execute as @a[distance=..150] unless entity @s[scores={PZLaUIr.2Gross=0}] run scoreboard players set @s PZLaUIr.2Gross 0

# Wurde der Erstellen-Rüstungsständer paltziert, so wird von seiner zentrierten Position mittig die Erstellen-Funktion aufgerufen.
execute as @e[type=minecraft:armor_stand,tag=EtiLaUIr.2Erstellen] at @s align xz positioned ~0.5 ~ ~0.5 run function labyrinth-_und_irrgartengenerator:v2erstellen

# Der Rüstungsständer ruft von sich aus zentriert mittig die Generieren-Funktion auf.
execute as @e[type=minecraft:armor_stand,tag=EtiLaUIr.2Generieren] at @s align xz positioned ~0.5 ~ ~0.5 run function labyrinth-_und_irrgartengenerator:v2generieren
