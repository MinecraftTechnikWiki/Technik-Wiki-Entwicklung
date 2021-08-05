
execute as @a[distance=..5] store success score @s PZVorH.1Wert run clear @s #vorhalle:v1menu{EigVorH.1Alle:true}
execute as @a[distance=..5,scores={PZVorH.1Wert=0}] store success score @s PZVorH.1Wert run kill @e[distance=..5,type=minecraft:item,nbt={Item:{tag:{EigVorH.1Alle:true} } }]

execute if entity @s[nbt=!{Items:[{Slot:3b,Count:1b}]}] if score VarVorH.1Min PZVorH.1Wert < VarVorH.1Max PZVorH.1Wert run scoreboard players add VarVorH.1Min PZVorH.1Wert 1

execute if entity @s[nbt=!{Items:[{Slot:5b,Count:1b}]}] run scoreboard players add VarVorH.1Max PZVorH.1Wert 1

execute if entity @s[nbt=!{Items:[{Slot:21b,Count:1b}]}] if score VarVorH.1Min PZVorH.1Wert matches 2.. run scoreboard players remove VarVorH.1Min PZVorH.1Wert 1

execute if entity @s[nbt=!{Items:[{Slot:23b,Count:1b}]}] if score VarVorH.1Max PZVorH.1Wert > VarVorH.1Min PZVorH.1Wert run scoreboard players remove VarVorH.1Max PZVorH.1Wert 1

tellraw @a[distance=..5,scores={PZVorH.1Wert=1}] ["Vorhalle.1: ",{"text":"\nmin == ","bold":true},{"score":{"name":"VarVorH.1Min","objective":"PZVorH.1Wert"},"color":"dark_purple","bold":true},{"text":"\nmax == ","bold":true},{"score":{"name":"VarVorH.1Max","objective":"PZVorH.1Wert"},"color":"dark_purple","bold":true}]

data merge entity @s {Items:[{Slot:3b,id:"minecraft:lime_concrete_powder",Count:1b,tag:{EigVorH.1Alle:true,display:{Name:'{"text":"Minimum Spieler + 1","color":"green","bold":true}'} } },{Slot:5b,id:"minecraft:lime_concrete_powder",Count:1b,tag:{EigVorH.1Alle:true,display:{Name:'{"text":"Maximum Spieler + 1","color":"green","bold":true}'} } },{Slot:12b,id:"minecraft:player_head",Count:1b,tag:{EigVorH.1Alle:true,display:{Name:'{"text":"Minimum Spieler","color":"dark_aqua","bold":true}'} } },{Slot:14b,id:"minecraft:barrier",Count:1b,tag:{EigVorH.1Alle:true,display:{Name:'{"text":"Maximum Spieler","color":"dark_red","bold":true}'} } },{Slot:21b,id:"minecraft:red_concrete_powder",Count:1b,tag:{EigVorH.1Alle:true,display:{Name:'{"text":"Minimum Spieler - 1","color":"red","bold":true}'} } },{Slot:23b,id:"minecraft:red_concrete_powder",Count:1b,tag:{EigVorH.1Alle:true,display:{Name:'{"text":"Maximum Spieler - 1","color":"red","bold":true}'} } }]}
