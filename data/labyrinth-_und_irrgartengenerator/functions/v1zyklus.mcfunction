# Wenn irgendein Spieler im Umkreis von 150 Metern den Auslöser der tellraw-Nachricht aktiviert hat, wird die Größen-Variable mal zwei gerechnet, wenn der Wert eins war, bei minus eins wird er durch zwei geteilt.
execute if entity @a[distance=..150,scores={PZLaUIr.2Gross=1}] if score #VarLaUIr.2Groesse PZLaUIr.2Gross matches ..1023 run scoreboard players operation #VarLaUIr.2Groesse PZLaUIr.2Gross *= #KonstLaUIr.2ZWEI PZLaUIr.2Gross
execute if entity @a[distance=..150,scores={PZLaUIr.2Gross=-1}] if score #VarLaUIr.2Groesse PZLaUIr.2Gross matches 8.. run scoreboard players operation #VarLaUIr.2Groesse PZLaUIr.2Gross /= #KonstLaUIr.2ZWEI PZLaUIr.2Gross

# Wenn die Größen-Variable exisitert, erhalten alle Spieler in einem Radius von 150 Metern, falls sie nicht den Wert null besitzen eine tellraw-Nachricht. In dieser kann man die Gräße des Labyrinths beginnend bei vier einstellen.
execute if score #VarLaUIr.2Groesse PZLaUIr.2Gross matches 0.. as @a[distance=..150] unless entity @s[scores={PZLaUIr.2Gross=0}] run tellraw @s ["Labyrinth- und Irrgartengenerator.1: ",{"text":"\nhilbertkurve (","bold":true},{"text":"*2","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Größe *2"} },"clickEvent":{"action":"run_command","value":"/trigger PZLaUIr.2Gross set 1"},"bold":true},{"text":"!","bold":true},{"text":"/2","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für die Größe /2"} },"clickEvent":{"action":"run_command","value":"/trigger PZLaUIr.2Gross set -1"},"bold":true},{"text":") == ","bold":true},{"score":{"name":"#VarLaUIr.2Groesse","objective":"PZLaUIr.2Gross"},"color":"dark_purple","bold":true}]

# Wenn der Spieler den Auslöser aktiviert hat, oder noch nie, dann erhält er erneut die Erlaubnis des Auslösers und sein Wert wird auf null gesetzt.
execute as @a[distance=..150] unless entity @s[scores={PZLaUIr.2Gross=0}] run scoreboard players enable @s PZLaUIr.2Gross
execute as @a[distance=..150] unless entity @s[scores={PZLaUIr.2Gross=0}] run scoreboard players set @s PZLaUIr.2Gross 0

# Wenn der Rüstungsständer platziert wurde, wird die Erstellen-Funktion aufgerufen um weitere Einstellungen vorzunehmen und um die Wand-Rüstungsständer zu erzeugen.
execute as @e[type=minecraft:armor_stand,tag=EtiLaUIr.1Erstellen] at @s run function labyrinth-_und_irrgartengenerator:v1erstellen

# Die Querwand-Funktion wird vom Wand-Rüstungsständer aufgerufen, wenn links nach hinten von seiner Blickrichtung aus der Generieren-Rüstungsständer vorbeigezogen ist und hinter ihm Quarzblöcke an entsprechender Stelle sich befinden, sodass man ausgehen kann, dass dort das Labyrinth sein muss.
execute as @e[type=minecraft:armor_stand,tag=EtiLaUIr.1Wand] at @s positioned ^5 ^ ^ if entity @e[distance=..3,type=minecraft:armor_stand,tag=EtiLaUIr.1Generieren] positioned ^-5 ^ ^ if block ~ ~ ~ minecraft:quartz_block if block ~ ~1 ~ minecraft:air if block ^ ^ ^-2 minecraft:quartz_block if block ^ ^1 ^-2 minecraft:air if block ^1 ^ ^-1 minecraft:quartz_block if block ^1 ^1 ^-1 minecraft:quartz_block if block ^-1 ^ ^-1 minecraft:quartz_block if block ^-1 ^1 ^-1 minecraft:quartz_block run function labyrinth-_und_irrgartengenerator:v1querwand

# Der platzierte Rüstungsständer ruft von sich aus die Generieren-Funktion auf um die Wände des Labyrinths zu generieren.
execute as @e[type=minecraft:armor_stand,tag=EtiLaUIr.1Generieren] at @s run function labyrinth-_und_irrgartengenerator:v1generieren

# Wenn der Größen-Wert des Generieren-Rüstungsständers auf null gelandet ist, wird den Spielern in einem Umkreis von 100 Metern die Nachricht ausgegeben und alle Rüstungsständer die für das Generieren verantowrtlich sind, werden entfernt.
execute at @e[type=minecraft:armor_stand,tag=EtiLaUIr.1Generieren,scores={PZLaUIr.2Gross=..0}] run tellraw @a[distance=..100] ["Labyrinth- und Irrgartengenerator.1:\n",{"text":"Labyrinth wurde generiert","color":"gray","bold":true}]
execute at @e[type=minecraft:armor_stand,tag=EtiLaUIr.1Generieren,scores={PZLaUIr.2Gross=..0}] run kill @e[distance=..100,type=minecraft:armor_stand,tag=EtiLaUIr.1Erzeuger,sort=nearest,limit=4]
