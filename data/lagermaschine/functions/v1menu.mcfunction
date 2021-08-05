# Spieler die in dem Menü auf einen der Gegenstände geklickt haben, besitzen diese im eigenen Inventar. Genau diese werden aus dem Inventar gelöscht und so erhalten diese Spieler um die Güterlore einen Wert von eins. Falls man stattdessen mit Q den Gegenstand aus der Güterlore geworfen hat, wird der Drop gelöscht und der Spieler erhält ebenfalls den Wert eins, sofern er noch nichts anderes angeklickt hat.
execute as @p[distance=..2] store success score @s PZLagerM.1Ausl run clear @s #lagermaschine:v1menu{EigLagerM.1Alle:true}
execute as @p[distance=..2,scores={PZLagerM.1Ausl=0}] store success score @s PZLagerM.1Wert run kill @e[distance=..2,type=minecraft:item,nbt={Item:{tag:{EigLagerM.1Alle:true} } },sort=nearest]

# Alle Spieler die irgendwas angeklickt haben, erhalten eine Nachricht.
tellraw @a[distance=..2,scores={PZLagerM.1Ausl=1}] ["Lagermaschine.1:"]

execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[nbt=!{Items:[{Slot:19b,Count:1b}]}] run function lagermaschine:v1felder

execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[nbt=!{Items:[{Slot:14b,Count:1b}]}] run say zurück
execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[nbt=!{Items:[{Slot:16b,Count:1b}]}] run say vorwärts
execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[nbt=!{Items:[{Slot:24b,Count:1b}]}] run say auslagern

execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[nbt=!{Items:[{Slot:14b,Count:1b}]}] run data modify storage lagermaschine:v1daten "EigLagerM.1Lager" append from storage lagermaschine:v1daten "EigLagerM.1Lager"[0]
execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[nbt=!{Items:[{Slot:14b,Count:1b}]}] run data remove storage lagermaschine:v1daten "EigLagerM.1Lager"[0]

execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[nbt=!{Items:[{Slot:16b,Count:1b}]}] run data modify storage lagermaschine:v1daten "EigLagerM.1Lager" prepend from storage lagermaschine:v1daten "EigLagerM.1Lager"[-1]
execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[nbt=!{Items:[{Slot:16b,Count:1b}]}] run data remove storage lagermaschine:v1daten "EigLagerM.1Lager"[-1]

execute store success score @s PZLagerM.1Ausl if data storage lagermaschine:v1daten "EigLagerM.1Lager"[{}]

execute if entity @p[distance=..2,scores={PZLagerM.1Ausl=1}] if entity @s[scores={PZLagerM.1Ausl=1},nbt=!{Items:[{Slot:24b,Count:1b}]}] run function lagermaschine:v1drop

data modify entity @s[scores={PZLagerM.1Ausl=1}] Items append value {Slot:15b,id:"minecraft:stone",Count:1b}
data modify entity @s[scores={PZLagerM.1Ausl=1}] Items[{Slot:15b}].id set from storage lagermaschine:v1daten "EigLagerM.1Lager"[0].id
data modify entity @s[scores={PZLagerM.1Ausl=1}] Items[{Slot:15b}].tag set from storage lagermaschine:v1daten "EigLagerM.1Lager"[0].tag
data modify entity @s[scores={PZLagerM.1Ausl=1}] Items[{Slot:15b}].tag merge value {EigLagerM.1Symbol:true}

data remove entity @s Items[{tag:{EigLagerM.1Menu:true} }]
execute if data entity @s Items[0] unless data entity @s Items[{Slot:10b}] unless data entity @s Items[{tag:{EigLagerM.1Symbol:true} }] run summon minecraft:item ~ ~ ~ {PickupDelay:32767s,Item:{id:"minecraft:stone",Count:1b},Tags:["EtiLagerM.1Drop"]}
data modify entity @e[distance=..2,type=minecraft:item,tag=EtiLagerM.1Drop,sort=nearest,limit=1] Item merge from entity @s Items[0]
data merge entity @e[distance=..2,type=minecraft:item,tag=EtiLagerM.1Drop,sort=nearest,limit=1] {PickupDelay:0s}

data remove entity @s[scores={PZLagerM.1Ausl=0}] Items[{Slot:15b}]

replaceitem entity @s container.0 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.1 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.2 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.3 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.4 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.5 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.6 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.7 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.8 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.9 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.11 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.12 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.13 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.14 minecraft:red_concrete_powder{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":"Zurück","color":"red","bold":true}'} }
replaceitem entity @s container.16 minecraft:lime_concrete_powder{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":"Weiter","color":"green","bold":true}'} }
replaceitem entity @s container.17 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.18 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.19 minecraft:chest{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":"Einlagern und Abfrage","color":"gold","bold":true}'} }
replaceitem entity @s container.20 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.21 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.22 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.23 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.24 minecraft:hopper{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":"Herausholen","color":"dark_purple","bold":true}'} }
replaceitem entity @s container.25 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
replaceitem entity @s container.26 minecraft:black_stained_glass_pane{EigLagerM.1Alle:true,EigLagerM.1Menu:true,display:{Name:'{"text":""}'} }
