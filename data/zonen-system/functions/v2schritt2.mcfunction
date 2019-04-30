# Die geworfene Truhe wird mit einem Etikett ausgestattet und sie kann nach einer Verzögerung wieder aufgehoben werden
execute at @s run data merge entity @e[distance=..5,sort=nearest,limit=1,type=minecraft:item,nbt={Item:{tag:{display:{Name:"{\"text\":\"Zonen-System.1\"}"} } } }] {PickupDelay:100s,CustomName:"{\"text\":\"Zonenoptionen\"}",CustomNameVisible:true,Tags:["EtiZone.2ZoneErstellen"]}

# Wenn man eine Truhe geworfen hat, erhält man die Freigabe, dass man einen Auslöser anklicken kann
scoreboard players enable @s PZZone.2Eing
tellraw @s ["Zonen-System.1:\n",{"text":" Drücke T und klicke mit der Maus auf eine Option:\n","bold":true},{"text":" [1] Zone markieren\n","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Zone positionieren"} },"clickEvent":{"action":"run_command","value":"/trigger PZZone.2Eing set 1"} },{"text":" [2] Zone erstellen\n","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Zone erstellen"} },"clickEvent":{"action":"run_command","value":"/trigger PZZone.2Eing set 2"} }, {"text":" [3] Zone löschen\n","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Zone löschen"} },"clickEvent":{"action":"run_command","value":"/trigger PZZone.2Eing set 3"} } ]
scoreboard players reset @s PZZone.2Truhe
