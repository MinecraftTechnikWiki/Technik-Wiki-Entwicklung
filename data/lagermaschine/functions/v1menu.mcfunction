# Spieler die in dem Menü auf einen der Gegenstände geklickt haben, besitzen diese im eigenen Inventar. Genau diese werden aus dem Inventar gelöscht und so erhalten diese Spieler um die Güterlore einen Wert von eins. Falls man stattdessen mit Q den Gegenstand aus der Güterlore geworfen hat, wird der Drop gelöscht und der Spieler erhält ebenfalls den Wert eins, sofern er noch nichts anderes angeklickt hat.
execute as @p[distance=..2] store success score @s PZLagerM.1Ausl run clear @s #lagermaschine:v1menu{EigLagerM.1Alle:true}
execute as @p[distance=..2,scores={PZLagerM.1Ausl=0}] store success score @s PZLagerM.1Wert run kill @e[distance=..2,type=minecraft:item,nbt={Item:{tag:{EigLagerM.1Alle:true} } },sort=nearest]

# Alle Spieler die irgendwas angeklickt haben, erhalten eine Nachricht.
tellraw @a[distance=..2,scores={PZLagerM.1Ausl=1}] ["Lagermaschine.1:"]

execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[nbt=!{Items:[{Slot:19b,id:"minecraft:hopper",Count:1b}]}] run function lagermaschine:v1felder

execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[nbt=!{Items:[{Slot:14b,id:"minecraft:red_concrete_powder",Count:1b}]}] run data modify storage lagermaschine:v1daten "EigLagerM.1Lager" append from storage lagermaschine:v1daten "EigLagerM.1Lager"[0]
execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[nbt=!{Items:[{Slot:14b,id:"minecraft:red_concrete_powder",Count:1b}]}] run data remove storage lagermaschine:v1daten "EigLagerM.1Lager"[0]

execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[nbt=!{Items:[{Slot:16b,id:"minecraft:lime_concrete_powder",Count:1b}]}] run data modify storage lagermaschine:v1daten "EigLagerM.1Lager" prepend from storage lagermaschine:v1daten "EigLagerM.1Lager"[-1]
execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[nbt=!{Items:[{Slot:16b,id:"minecraft:lime_concrete_powder",Count:1b}]}] run data remove storage lagermaschine:v1daten "EigLagerM.1Lager"[-1]

execute store success score @s PZLagerM.1Ausl if data storage lagermaschine:v1daten "EigLagerM.1Lager"[{}]

execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[scores={PZLagerM.1Ausl=1},nbt=!{Items:[{Slot:24b,id:"minecraft:chest",Count:1b}]}] run function lagermaschine:v1drop

data modify entity @s Items append value {Slot:15b,id:"minecraft:stone",Count:1b}
data modify entity @s Items[{Slot:15b}].id set from storage lagermaschine:v1daten "EigLagerM.1Lager"[0].id
data modify entity @s Items[{Slot:15b}].tag set from storage lagermaschine:v1daten "EigLagerM.1Lager"[0].tag
data modify entity @s Items[{Slot:15b}].tag merge value {EigLagerM.1Symbol:true}

#data remove entity @s Items[{tag:{EigLagerM.1Menu:true} }]
#execute if data entity @s Items[0] unless data entity @s Items[{Slot:10b}] unless data entity @s Items[{tag:{EigLagerM.1Symbol:true} }] run summon minecraft:item ~ ~ ~ {PickupDelay:32767s,Item:{id:"minecraft:stone",Count:1b},Tags:["EtiLagerM.1Alle","EtiLagerM.1Drop"]}
#data modify entity @e[distance=..2,type=minecraft:item,tag=EtiLagerM.1Drop,sort=nearest,limit=1] Item merge from entity @s Items[0]
#data merge entity @e[distance=..2,type=minecraft:item,tag=EtiLagerM.1Drop,sort=nearest,limit=1] {PickupDelay:0s}

#data remove entity @s[scores={PZLagerM.1Ausl=0}] Items[{Slot:15b}]

item replace entity @s container.0 with minecraft:black_stained_glass_pane
item replace entity @s container.1 with minecraft:black_stained_glass_pane
item replace entity @s container.2 with minecraft:black_stained_glass_pane
item replace entity @s container.3 with minecraft:black_stained_glass_pane
item replace entity @s container.4 with minecraft:black_stained_glass_pane
item replace entity @s container.5 with minecraft:black_stained_glass_pane
item replace entity @s container.6 with minecraft:black_stained_glass_pane
item replace entity @s container.7 with minecraft:black_stained_glass_pane
item replace entity @s container.8 with minecraft:black_stained_glass_pane
item replace entity @s container.9 with minecraft:black_stained_glass_pane
item replace entity @s container.11 with minecraft:black_stained_glass_pane
item replace entity @s container.12 with minecraft:black_stained_glass_pane
item replace entity @s container.13 with minecraft:black_stained_glass_pane

item replace entity @s container.14 with minecraft:red_concrete_powder{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":"Zurück","color":"red","bold":true}'} }
item replace entity @s container.16 with minecraft:lime_concrete_powder{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":"Weiter","color":"green","bold":true}'} }

item replace entity @s container.17 with minecraft:black_stained_glass_pane
item replace entity @s container.18 with minecraft:black_stained_glass_pane

item replace entity @s container.19 with minecraft:hopper{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":"Einlagern und Abfrage","color":"gold","bold":true}'} }

item replace entity @s container.20 with minecraft:black_stained_glass_pane
item replace entity @s container.21 with minecraft:black_stained_glass_pane
item replace entity @s container.22 with minecraft:black_stained_glass_pane
item replace entity @s container.23 with minecraft:black_stained_glass_pane

item replace entity @s container.24 with minecraft:chest{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":"Herausholen","color":"dark_purple","bold":true}'} }

item replace entity @s container.25 with minecraft:black_stained_glass_pane
item replace entity @s container.26 with minecraft:black_stained_glass_pane

data modify entity @s Items[{id:"minecraft:black_stained_glass_pane"}].tag merge value {EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
