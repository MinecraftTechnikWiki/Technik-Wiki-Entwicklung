
gamemode adventure @s

team join TMVorH.1Lobby @s

clear @s minecraft:leather_helmet{EigVorH.1Alle:true}

tellraw @a[team=TMVorH.1Lobby] ["Vorhalle.1:\n",{"text":"[","color":"dark_gray"},{"text":"Minispiel","color":"gray","bold":true},{"text":"] ","color":"dark_gray"},{"selector":"@s","color":"gray","bold":true},{"text":" hat die Lobby betreten","color":"yellow","bold":true},{"text":"\nspieler == ","color":"yellow","bold":true},{"score":{"name":"VarVorH.1Anzahl","objective":"PZVorH.1Wert"},"color":"dark_purple","bold":true},{"text":"\nmax == ","color":"yellow","bold":true},{"score":{"name":"VarVorH.1Max","objective":"PZVorH.1Wert"},"color":"dark_purple","bold":true}]

give @s minecraft:red_bed{EigVorH.1Alle:true,EigVorH.1Verlassen:true,display:{Name:'{"text":"Lobby verlassen","color":"gray","bold":true}',Lore:['"Droppe das Bett"','"um die Lobby"','"zu verlassen"'] } } 1

#execute as @p[distance=..1,team=TMVorH.1Lobby] at @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle] run spreadplayers ~ ~ 0 8 false @s
execute at @e[type=minecraft:armor_stand,tag=EtiVorH.1Vorhalle] run teleport @s ~ ~1 ~
