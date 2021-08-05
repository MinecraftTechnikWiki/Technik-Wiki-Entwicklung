
scoreboard objectives add PZKonG.2Ausl trigger ["Konstruktionsgerüst.2: ",{"text":"Auslöser für Nachrichten","bold":true}]
scoreboard objectives add PZKonG.2Groess dummy ["Direktzugriffsspeicher.1: ",{"text":"Feldposition","bold":true}]

scoreboard players set KonstKonG.2MINUSEINS PZKonG.2Groess -1
scoreboard players set @a[distance=..15] PZKonG.2Groess 5

# Spieler im Umkreis von 15 Blöcken erhalten einen Stock mit Verzauberungsschimmer.
give @a[distance=..15] minecraft:stick{EigKonG.2Alle:true,EigKonG.2Stock:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Konstruktionsgerüst","color":"green","bold":true}',Lore:['"Wähle den Stock aus"','"um Optionen des"','"Konstruktionsgerüstes"','"einzustellen."'] } }

give @a[distance=..15] minecraft:armor_stand{EigKonG.2Alle:true,display:{Name:'{"text":"Konstruktionsgerüst","color":"green","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um ein angepasstes"','"Konstruktionsgerüstes"','"zu erstellen."'] },EntityTag:{Small:true,NoGravity:true,Invisible:true,Tags:["EtiKonG.2Alle","EtiKonG.2Geruest"]} }

execute at @e[type=minecraft:armor_stand,tag=EtiKonG.2Geruest] run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-18,posY:0,posZ:-18,name:"konstruktionsgeruest:v2geruest"} replace
execute at @e[type=minecraft:armor_stand,tag=EtiKonG.2Geruest] run setblock ~-1 ~ ~ minecraft:redstone_block replace








# Wenn Spieler den Stock ausgewählkt haben, erhalten sie ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigKonG.2Stock:true} } }] add EtiKonG.2Ausgewaehlt

# Wenn Spieler den Stock gerade erst ausgewählt haben, wird ihnen der Auslöser-Wert und die Position gesetzt.
scoreboard players set @a[tag=EtiKonG.2Ausgewaehlt,tag=!EtiKonG.2Auswahl] PZKonG.2Ausl -99

# Wenn Spieler den Stock ausgewählt haben und irgend einen Auslöser angeklickt haben, wird die Auslöser-Funktion gestartet.
execute as @a[tag=EtiKonG.2Ausgewaehlt] unless entity @s[scores={PZKonG.2Ausl=0}] run function konstruktionsgeruest:v2ausloeser

# Es wird ein Etikett gegeben oder genommen, je nach dem ob man gerade Stock ausgewählt hat, oder nicht.
tag @a[tag=EtiKonG.2Ausgewaehlt,tag=!EtiKonG.2Auswahl] add EtiKonG.2Auswahl
tag @a[tag=!EtiKonG.2Ausgewaehlt,tag=EtiKonG.2Auswahl] remove EtiKonG.2Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiKonG.2Ausgewaehlt] remove EtiKonG.2Ausgewaehlt

execute as @e[type=minecraft:armor_stand,tag=EtiKonG.2Geruest,tag=!EtiKonG.2Groesse] at @s run function konstruktionsgeruest:v2erstellen




scoreboard players add @s[scores={PZKonG.2Ausl=1,PZKonG.2Groess=..47}] PZKonG.2Groess 1
scoreboard players remove @s[scores={PZKonG.2Ausl=-1,PZKonG.2Groess=6..}] PZKonG.2Groess 1

tellraw @s ["Konstruktionsgerüst.2: ",{"text":"\ngroesse = ","bold":true},{"text":"groesse + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Größe + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZKonG.2Ausl set 1"} },{"text":"\ngroesse = ","bold":true},{"text":"groesse - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für Größe - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZKonG.2Ausl set -1"} },{"text":"\ngroesse == ","bold":true},{"score":{"name":"","objective":""},"color":"dark_purple","bold":true} ]

scoreboard players enable @s PZKonG.2Ausl
scoreboard players set @s PZKonG.2Ausl 0




schedule function konstruktionsgeruest:v2aktualisieren 1t replace
scoreboard players operation @s PZKonG.2Groess = @p[distance=..5] PZKonG.2Groess
tag @s add EtiKonG.2Groesse
scoreboard players set VarKonG.2Richtung PZKonG.2Groes 0
function konstruktionsgeruest:v2geruest



# Die Variable für den Selbstaufruf wird um eins erhöht.
scoreboard players add VarKonG.2Richtung PZKonG.2Groes 1

# Bevor die Zonen-Abstands-Funktion geladen wird, werden die Variablen dafür vorbereitet.
scoreboard players set VarKonG.2Abstand PZKonG.2Groess 0
execute positioned ^1 ^ ^-1 run function konstruktionsgeruest:v2geruest_abstand

# Diese Funktion wird dreimal sich selbst aufrufen und dabei die Rotion jeweils um 90° drehen.
execute if score VarKonG.2Richtung PZKonG.2Groes matches 1..3 rotated ~90 0 run function konstruktionsgeruest:v2geruest




# Die Abstands-Variable wird um eins erhöht.
scoreboard players add VarKonG.2Abstand PZKonG.2Groess 1
scoreboard players operation VarKonG.2Laenge PZKonG.2Groess = VarKonG.2Abstand PZKonG.2Groess
scoreboard players operation VarKonG.2Laenge PZKonG.2Groess *= KonstKonG.2MINUSEINS PZKonG.2Groess
function konstruktionsgeruest:v2geruest_plattform
execute if score VarKonG.2Abstand PZKonG.2Ausl < @s PZKonG.2Ausl positioned ^1 ^ ^-1 run function konstruktionsgeruest:v2geruest_abstand


setblock ~ ~ ~ minecraft:quartz_block replace
execute if score VarKonG.2Richtung PZKonG.2Groes matches 0 if score VarKonG.2Laenge PZKonG.2Groess matches ..0 run setblock ~ ~ ~ minecraft:blue_terracotta replace
scoreboard players add VarKonG.2Laenge PZKonG.2Groess 1
execute if score VarKonG.2Laenge PZKonG.2Groess < @s PZKonG.2Groess positioned ^ ^ ^1 run function konstruktionsgeruest:v2geruest_plattform




schedule function konstruktionsgeruest:v2aktualisieren 100t replace
scoreboard players set VarKonG.2Volumen PZKonG.2Groess 0
function konstruktionsgeruest:v2geruest_volumen
setblock ~ ~ ~ minecraft:structure_block{mode:"SAVE",mirror:"NONE",rotation:"NONE",posX:-30,posY:1,posZ:-30,sizeX:32,sizeY:32,sizeZ:31,name:"konstruktionsgeruest:v2volumen"} replace

setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",mirror:"NONE",rotation:"NONE",posX:-30,posY:1,posZ:-30,sizeX:32,sizeY:32,sizeZ:31,name:"konstruktionsgeruest:v2volumen"} replace
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",mirror:"NONE",rotation:"NONE",posX:-30,posY:1,posZ:-30,sizeX:32,sizeY:32,sizeZ:31,name:"konstruktionsgeruest:v2volumen"} replace
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",mirror:"NONE",rotation:"NONE",posX:-30,posY:1,posZ:-30,sizeX:32,sizeY:32,sizeZ:31,name:"konstruktionsgeruest:v2volumen"} replace



setblock ~ ~ ~ minecraft:structure_block{mode:"SAVE",mirror:"NONE",rotation:"NONE",posX:1,posY:1,posZ:-30,sizeX:1,sizeY:32,sizeZ:30,name:"konstruktionsgeruest:v2volumen"} replace
execute store result block ^ ^ ^2 sizeZ byte 1 store result block ~ ~ ~ sizeZ byte 1 run scoreboard players add VarKonG.2Volumen PZKonG.2Groess 1
setblock ~ ~ ~ minecraft:redstone_block replace
execute if score VarKonG.2Volumen PZKonG.2Groess < @s PZKonG.2Groess run function konstruktionsgeruest:v2geruest_volumen
