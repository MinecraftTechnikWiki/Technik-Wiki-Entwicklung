
execute as @a[distance=..5] store success score @s PZWartH.1Wert run clear @s #wartehalle:v1menu{EigWartH.1Alle:true}
execute as @a[distance=..5,scores={PZWartH.1Wert=0}] store success score @s PZWartH.1Wert run kill @e[distance=..5,type=minecraft:item,nbt={Item:{tag:{EigWartH.1Alle:true} } }]

execute if entity @s[nbt=!{Items:[{Slot:3b,Count:1b}]}] if score VarWartH.1Min PZWartH.1Wert < VarWartH.1Max PZWartH.1Wert run scoreboard players add VarWartH.1Min PZWartH.1Wert 1

execute if entity @s[nbt=!{Items:[{Slot:5b,Count:1b}]}] run scoreboard players add VarWartH.1Max PZWartH.1Wert 1

execute if entity @s[nbt=!{Items:[{Slot:21b,Count:1b}]}] if score VarWartH.1Min PZWartH.1Wert matches 2.. run scoreboard players remove VarWartH.1Min PZWartH.1Wert 1

execute if entity @s[nbt=!{Items:[{Slot:23b,Count:1b}]}] if score VarWartH.1Max PZWartH.1Wert > VarWartH.1Min PZWartH.1Wert run scoreboard players remove VarWartH.1Max PZWartH.1Wert 1

tellraw @a[distance=..5,scores={PZWartH.1Wert=1}] ["Wartehalle.1:\n",{"text":"min == ","bold":true},{"score":{"name":"VarWartH.1Min","objective":"PZWartH.1Wert"},"color":"dark_purple","bold":true},"\n",{"text":"max == ","bold":true},{"score":{"name":"VarWartH.1Max","objective":"PZWartH.1Wert"},"color":"dark_purple","bold":true}]

data merge entity @s {Items:[{Slot:3b,id:"minecraft:lime_concrete_powder",Count:1b,tag:{EigWartH.1Alle:true,display:{Name:'{"text":"Minimum Spieler + 1","color":"green","bold":true}'} } },{Slot:5b,id:"minecraft:lime_concrete_powder",Count:1b,tag:{EigWartH.1Alle:true,display:{Name:'{"text":"Maximum Spieler + 1","color":"green","bold":true}'} } },{Slot:12b,id:"minecraft:player_head",Count:1b,tag:{EigWartH.1Alle:true,display:{Name:'{"text":"Minimum Spieler","color":"dark_aqua","bold":true}'} } },{Slot:14b,id:"minecraft:barrier",Count:1b,tag:{EigWartH.1Alle:true,display:{Name:'{"text":"Maximum Spieler","color":"dark_red","bold":true}'} } },{Slot:21b,id:"minecraft:red_concrete_powder",Count:1b,tag:{EigWartH.1Alle:true,display:{Name:'{"text":"Minimum Spieler - 1","color":"red","bold":true}'} } },{Slot:23b,id:"minecraft:red_concrete_powder",Count:1b,tag:{EigWartH.1Alle:true,display:{Name:'{"text":"Maximum Spieler - 1","color":"red","bold":true}'} } }]}
