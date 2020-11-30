
execute at @a if entity @e[distance=..2,type=minecraft:item,nbt={Item:{id:"minecraft:blue_dye",tag:{EigObjZae.2Alle:true} } }] run scoreboard players add VarObjZae.2Grenze PZObjZae.2Anz 1
execute at @a if entity @e[distance=..2,type=minecraft:item,nbt={Item:{id:"minecraft:red_dye",tag:{EigObjZae.2Alle:true} } }] if score VarObjZae.2Grenze PZObjZae.2Anz matches 0.. run scoreboard players remove VarObjZae.2Grenze PZObjZae.2Anz 1

execute at @a as @e[distance=..2,type=minecraft:item,nbt={Item:{tag:{EigObjZae.2Alle:true} } }] run data merge entity @s {PickupDelay:0s}

execute store result score VarObjZae.2Anzahl PZObjZae.2Anz if entity @e[type=minecraft:armor_stand,tag=EtiObjZae.2Objekt]

#execute as @a[distance=..50] store result score VarObjZae.2Grenze PZObjZae.2Anz run clear @s minecraft:magenta_glazed_terracotta{EigObjZae.2Alle:true} 0

execute unless score VarObjZae.2Grenze PZObjZae.2Anz matches -1 run title @a[distance=..50] actionbar ["",{"text":"anzahl == ","color":"gray","bold":true},{"score":{"name":"VarObjZae.2Anzahl","objective":"PZObjZae.2Anz"},"color":"dark_purple","bold":true},{"text":", grenze == ","color":"gray","bold":true},{"score":{"name":"VarObjZae.2Grenze","objective":"PZObjZae.2Anz"},"color":"dark_red","bold":true} ]

execute if score VarObjZae.2Grenze PZObjZae.2Anz matches -1 run title @a[distance=..50] actionbar ["",{"text":"anzahl == ","color":"gray","bold":true},{"score":{"name":"VarObjZae.2Anzahl","objective":"PZObjZae.2Anz"},"color":"dark_purple","bold":true},{"text":", grenze == ","color":"gray","bold":true},{"text":"∞","color":"dark_red","bold":true} ]

execute unless score VarObjZae.2Grenze PZObjZae.2Anz matches -1 if score VarObjZae.2Anzahl PZObjZae.2Anz > VarObjZae.2Grenze PZObjZae.2Anz run tellraw @a[distance=..50] ["Objekt-Zähler.2:\n",{"text":"anzahl > grenze == ","color":"gray","bold":true},{"text":"wahr","color":"green","bold":true} ]
execute unless score VarObjZae.2Grenze PZObjZae.2Anz matches -1 if score VarObjZae.2Anzahl PZObjZae.2Anz > VarObjZae.2Grenze PZObjZae.2Anz at @p[distance=..50] run kill @e[distance=..15,type=minecraft:armor_stand,sort=nearest,limit=1]
