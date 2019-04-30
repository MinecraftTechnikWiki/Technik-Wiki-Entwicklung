
execute if entity @e[distance=..1,type=minecraft:armor_stand,tag=EtiBlWS.3Alle,name="schau auf mich!"] run title @s actionbar ["",{"text":"[ ","color":"gold"},{"text":"Blickkontakt","color":"green","bold":true},{"text":" ]","color":"gold"} ]

execute if entity @e[distance=1..25,type=minecraft:armor_stand,tag=EtiBlWS.3Alle,name="schau auf mich!"] positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air run function blickwinkel-sensor:v3kontakt
