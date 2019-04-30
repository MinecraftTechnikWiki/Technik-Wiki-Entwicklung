
scoreboard players set @p[distance=..50,scores={PZMausKS.2Klick=1..},nbt=!{SelectedItem:{id:"minecraft:lime_dye"} },nbt=!{SelectedItem:{id:"minecraft:orange_dye"} },nbt=!{SelectedItem:{id:"minecraft:rose_red"} }] PZMausKS.2Klick 0
scoreboard players set @p[distance=..50,nbt={SelectedItem:{id:"minecraft:lime_dye",tag:{display:{Lore:["Mausklick-Sensor.2"]} } } }] PZMausKS.2Klick 1
scoreboard players set @p[distance=..50,nbt={SelectedItem:{id:"minecraft:orange_dye",tag:{display:{Lore:["Mausklick-Sensor.2"]} } } }] PZMausKS.2Klick 2
scoreboard players set @p[distance=..50,nbt={SelectedItem:{id:"minecraft:rose_red",tag:{display:{Lore:["Mausklick-Sensor.2"]} } } }] PZMausKS.2Klick 3
execute at @p[distance=..50,scores={PZMausKS.2Klick=0}] run kill @e[distance=..3,type=minecraft:armor_stand,tag=EtiMausKS.2Sensor,sort=nearest,limit=1]
execute at @p[distance=..50,scores={PZMausKS.2Klick=1..}] run teleport @e[type=minecraft:armor_stand,tag=EtiMausKS.2Sensor] ^ ^1 ^0.5
execute at @p[distance=..50,scores={PZMausKS.2Klick=1..}] unless entity @e[type=minecraft:armor_stand,tag=EtiMausKS.2Sensor] run summon minecraft:armor_stand ^ ^1 ^0.5 {NoGravity:true,ShowArms:true,Invisible:true,Tags:["EtiMausKS.2Alle","EtiMausKS.2Sensor"]}


scoreboard players set @e[type=minecraft:armor_stand,tag=EtiMausKS.2Sensor,nbt={HandItems:[{id:"minecraft:lime_dye"}]}] PZMausKS.2Klick 1
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiMausKS.2Sensor,nbt={HandItems:[{id:"minecraft:orange_dye"}]}] PZMausKS.2Klick 2
scoreboard players set @e[type=minecraft:armor_stand,tag=EtiMausKS.2Sensor,nbt={HandItems:[{id:"minecraft:rose_red"}]}] PZMausKS.2Klick 3

execute at @e[type=minecraft:armor_stand,tag=EtiMausKS.2Sensor,scores={PZMausKS.2Klick=1}] run title @p[scores={PZMausKS.2Klick=1}] actionbar ["",{"text":"[ ","color":"gray","bold":true},{"text":"Klick 1","color":"green","bold":true},{"text":" ]","color":"gray","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiMausKS.2Sensor,scores={PZMausKS.2Klick=2}] run title @p[scores={PZMausKS.2Klick=2}] actionbar ["",{"text":"[ ","color":"gray","bold":true},{"text":"Klick 2","color":"gold","bold":true},{"text":" ]","color":"gray","bold":true} ]
execute at @e[type=minecraft:armor_stand,tag=EtiMausKS.2Sensor,scores={PZMausKS.2Klick=3}] run title @p[scores={PZMausKS.2Klick=3}] actionbar ["",{"text":"[ ","color":"gray","bold":true},{"text":"Klick 3","color":"red","bold":true},{"text":" ]","color":"gray","bold":true} ]

data remove entity @e[type=minecraft:armor_stand,tag=EtiMausKS.2Sensor,scores={PZMausKS.2Klick=1..},sort=nearest,limit=1] HandItems[0]
scoreboard players reset @e[type=minecraft:armor_stand,tag=EtiMausKS.2Alle,scores={PZMausKS.2Klick=1..}] PZMausKS.2Klick
