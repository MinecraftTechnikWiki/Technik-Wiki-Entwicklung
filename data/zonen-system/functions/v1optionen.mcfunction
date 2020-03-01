# Die geworfene Truhe wird mit einem Etikett ausgestattet und sie kann nach einer Verzögerung wieder aufgehoben werden
data merge entity @e[distance=..5,sort=nearest,limit=1,type=minecraft:item,nbt={Item:{id:"minecraft:barrel",tag:{Enchantments:[{id:-1} ] } } }] {PickupDelay:100s,CustomNameVisible:true,CustomName:'{"text":"Zonenoptionen"}',Tags:["EtiZone.1ZoneErstellen"]}

# Wenn man eine Truhe geworfen hat, erhält man die Freigabe, dass man einen Auslöser anklicken kann
execute if entity @e[distance=..5,type=minecraft:item,tag=EtiZone.1ZoneErstellen] run tellraw @s ["Zonen-System.1:\n",{"text":"Drücke T und klicke mit der Maus auf eine Option:","bold":true},{"text":"\nzone = ","bold":true},{"text":"Markieren","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Zone markieren"} },"clickEvent":{"action":"run_command","value":"/trigger PZZone.1Ausl set 1"} },{"text":"\nzone = ","bold":true},{"text":"Erstellen","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Zone erstellen"} },"clickEvent":{"action":"run_command","value":"/trigger PZZone.1Ausl set 2"} },{"text":"\nzone = ","bold":true},{"text":"Löschen","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Zone löschen"} },"clickEvent":{"action":"run_command","value":"/trigger PZZone.1Ausl set 3"} } ]

execute if entity @e[distance=..5,type=minecraft:item,tag=EtiZone.1ZoneErstellen] run scoreboard players enable @s PZZone.1Ausl
scoreboard players set @s PZZone.1Fass 0

execute store success score @e[distance=..5,type=minecraft:item,nbt={Item:{id:"minecraft:barrel"} },sort=nearest,limit=1] PZZone.1Fass if entity @e[distance=..5,type=minecraft:item,nbt={Item:{id:"minecraft:stick"} },sort=nearest,limit=1]
execute at @e[distance=..5,type=minecraft:item,scores={PZZone.1Fass=1}] store success score @s PZZone.1Fass run kill @e[distance=..5,type=minecraft:item,nbt={Item:{id:"minecraft:stick"} },sort=nearest,limit=1]
data merge entity @e[distance=..5,type=minecraft:item,tag=!EtiZone.1MagischesFass,scores={PZZone.1Fass=1},sort=nearest,limit=1] {Item:{tag:{Enchantments:[{id:-1} ] } },Tags:["EtiZone.1MagischesFass"]}
