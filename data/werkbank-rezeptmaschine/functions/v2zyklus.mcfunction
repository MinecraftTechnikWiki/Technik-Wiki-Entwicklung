
#execute at @r as @e[distance=..6,type=minecraft:item] at @s if block ~ ~-1 ~ minecraft:crafting_table run data merge entity @s {PickupDelay:10s}

#execute at @r as @e[distance=..6,type=minecraft:item,tag=!EtiRezM.2Rezept,nbt={Item:{id:"minecraft:stone",Count:1b} }] at @s if block ~ ~-1 ~ minecraft:crafting_table run scoreboard players set @s PZRezM.2ID 1
#execute at @r as @e[distance=..6,type=minecraft:item,tag=!EtiRezM.2Rezept,nbt={Item:{id:"minecraft:lapis_lazuli",Count:5b} }] at @s if block ~ ~-1 ~ minecraft:crafting_table run scoreboard players set @s PZRezM.2ID 2
#tag @e[type=minecraft:item,tag=!EtiRezM.2Rezept,scores={PZRezM.2ID=1..}] add EtiRezM.2Rezept

#execute as @e[type=minecraft:item,scores={PZRezM.2ID=2}] at @s if entity @e[distance=..1,type=minecraft:item,scores={PZRezM.2ID=1}] run scoreboard players set @s PZRezM.2ID -1

#execute at @e[type=minecraft:item,scores={PZRezM.2ID=-1}] run kill @e[distance=..1,type=minecraft:item,scores={PZRezM.2ID=1},sort=nearest,limit=1]
#execute at @e[type=minecraft:item,scores={PZRezM.2ID=-1}] run playsound minecraft:block.anvil.use master @a[distance=..5]
#execute at @e[type=minecraft:item,scores={PZRezM.2ID=-1}] run particle minecraft:smoke ~ ~2 ~ 0 0 0 0.1 10 force @a[distance=..25]
#execute as @e[type=minecraft:item,scores={PZRezM.2ID=-1}] run data merge entity @s {Item:{id:"minecraft:lapis_ore",Count:1b},Motion:[0.0d,0.3d,0.0d]}

execute at @e[type=minecraft:armor_stand,tag=EtiRezM.2Werkbank] unless block ~ ~ ~ minecraft:crafting_table run setblock ~ ~ ~ minecraft:crafting_table

#execute as @e[type=armor_stand,tag=EtiRezM.2Spender,tag=EtiRezM.2Alle,tag=!EtiRezM.2RezeptElytren] at @s if block ~ ~-1 ~ dropper{Items:[{Slot:0b,id:"minecraft:leather",Count:1b},{Slot:1b,id:"minecraft:leather",Count:1b},{Slot:2b,id:"minecraft:leather",Count:1b},{Slot:3b,id:"minecraft:leather",Count:1b},{Slot:4b,id:"minecraft:string",Count:1b},{Slot:5b,id:"minecraft:leather",Count:1b},{Slot:6b,id:"minecraft:leather",Count:1b},{Slot:7b,id:"minecraft:iron_ingot",Count:1b},{Slot:8b,id:"minecraft:leather",Count:1b}]} run tag @s add EtiRezM.2RezeptElytren

#execute at @e[type=armor_stand,tag=EtiRezM.2Spender,tag=EtiRezM.2Alle,tag=EtiRezM.2RezeptElytren] run playsound minecraft:block.anvil.use master @a[distance=..5]
#execute at @e[type=armor_stand,tag=EtiRezM.2Spender,tag=EtiRezM.2Alle,tag=EtiRezM.2RezeptElytren] run particle minecraft:smoke ~ ~2 ~ 0 0 0 0.1 10 force @a[distance=..25]
#execute at @e[type=armor_stand,tag=EtiRezM.2Spender,tag=EtiRezM.2Alle,tag=EtiRezM.2RezeptElytren] run data merge block ~ ~-1 ~ {Items:[{Slot:4b,id:"minecraft:elytra",Count:1b}]}

#tag @e[type=armor_stand,name=ObjRezM.2Spender,tag=EtiRezM.2Alle,tag=EtiRezM.2RezeptElytren] remove EtiRezM.2RezeptElytren
