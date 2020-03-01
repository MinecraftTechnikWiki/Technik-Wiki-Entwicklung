
execute at @e[type=minecraft:armor_stand,tag=EtiBlWS.3Alle,name="schau auf mich!"] as @a[distance=..25] run title @s actionbar ["",{"text":"[ ","color":"gold"},{"text":"kein Blickkontakt","color":"red","bold":true},{"text":" ]","color":"gold"} ]

execute at @e[type=minecraft:armor_stand,tag=EtiBlWS.3Alle,name="schau auf mich!"] as @a[distance=..25] at @s positioned ~ ~1 ~ run function blickwinkel-sensor:v3kontakt
