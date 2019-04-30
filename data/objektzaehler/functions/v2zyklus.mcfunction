
execute as @a[distance=..50] store result score @s PZObjZae.2Anz at @s if entity @e[distance=..50,type=minecraft:armor_stand,tag=EtiObjZae.2Alle]
execute as @a[distance=..50] store result score @s PZObjZae.2Grenz run clear @s minecraft:magenta_glazed_terracotta{display:{Lore:["Objektzähler.2"] } } 0
execute as @a[distance=..50] run title @s actionbar ["",{"text":"[ ","color":"gold","bold":true},{"score":{"name":"@s","objective":"PZObjZae.2Anz"},"color":"dark_green","bold":true},{"text":" / ","color":"gold","bold":true},{"score":{"name":"@s","objective":"PZObjZae.2Grenz"},"color":"dark_red","bold":true},{"text":" ]","color":"gold","bold":true} ]

execute as @a[distance=..50] if score @s PZObjZae.2Anz > @s PZObjZae.2Grenz run tellraw @s ["Objektzähler.2 ",{"text":"Die Obergrenze wurde überschritten!","color":"red","bold":true} ]
execute as @a[distance=..50] if score @s PZObjZae.2Anz > @s PZObjZae.2Grenz at @s run kill @e[type=minecraft:armor_stand,distance=..15,sort=nearest,limit=1]
