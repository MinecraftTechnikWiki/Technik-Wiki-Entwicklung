
gamemode adventure @s

team join TMWartH.1Lobby @s

clear @s minecraft:leather_helmet{EigWartH.1Alle:true}

tellraw @a[team=TMWartH.1Lobby] ["Wartehalle.1:\n",{"text":"[","color":"dark_gray"},{"text":"Minispiel","color":"gray","bold":true},{"text":"] ","color":"dark_gray"},{"selector":"@s","color":"gray","bold":true},{"text":" hat die Lobby betreten","color":"yellow","bold":true},"\n",{"text":"spieler == ","color":"yellow","bold":true},{"score":{"name":"VarWartH.1Anzahl","objective":"PZWartH.1Wert"},"color":"dark_purple","bold":true},"\n",{"text":"max == ","color":"yellow","bold":true},{"score":{"name":"VarWartH.1Max","objective":"PZWartH.1Wert"},"color":"dark_purple","bold":true}]

give @s minecraft:red_bed{EigWartH.1Alle:true,EigWartH.1Verlassen:true,display:{Name:'{"text":"Lobby verlassen","color":"gray","bold":true}',Lore:['"Droppe das Bett"','"um die Lobby"','"zu verlassen"'] } } 1

#execute as @p[distance=..1,team=TMWartH.1Lobby] at @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle] run spreadplayers ~ ~ 0 8 false @s
execute at @e[type=minecraft:armor_stand,tag=EtiWartH.1Wartehalle,sort=nearest,limit=1] run teleport @s ~ ~1 ~
