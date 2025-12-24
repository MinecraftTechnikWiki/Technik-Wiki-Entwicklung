
#execute at @a as @e[distance=..5,type=minecraft:item_frame,tag=!EtiZaRezM.1Spender,nbt={Facing:1b,Item:{id:"minecraft:enchanting_table"} }] at @s if block ~ ~-1 ~ minecraft:dropper[facing=up]{Items:[]} run data merge entity @s {Tags:["EtiZaRezM.1Alle","EtiZaRezM.1Spender","EtiZaRezM.1Werte"]}

#execute as @e[type=minecraft:item_frame,tag=EtiZaRezM.1Werte] run scoreboard players operation @s PZZaRezM.1Dau = @s PZZaRezM.1Fort
#tag @e[type=minecraft:item_frame,tag=EtiZaRezM.1Werte] remove EtiZaRezM.1Werte

#execute at @a as @n[distance=..5,type=minecraft:item_frame,tag=EtiZaRezM.1Spender] at @s unless block ~ ~-1 ~ minecraft:dropper[facing=up] run kill @s

#execute as @e[type=minecraft:item_frame,tag=EtiZaRezM.1Spender] at @s if entity @p[distance=..5,level=1..] positioned ~ ~-1 ~ run function zaubertisch-rezeptmaschine:v1menu

execute at @a as @e[distance=..5,type=minecraft:item_frame,tag=!EtiZaRezM.1Spender,nbt={Facing:1b,Item:{id:"minecraft:enchanting_table"} }] at @s if block ~ ~-1 ~ minecraft:dropper[facing=up]{Items:[]} run data merge entity @s {Tags:["EtiZaRezM.1Alle","EtiZaRezM.1Spender"]}

execute as @e[type=minecraft:item_frame,tag=EtiZaRezM.1Spender] at @s store success score @s PZZaRezM.1Wert unless block ~ ~-1 ~ minecraft:dropper

kill @e[type=minecraft:item_frame,tag=EtiZaRezM.1Spender,scores={PZZaRezM.1Wert=1}]

execute as @e[type=minecraft:item_frame,tag=EtiZaRezM.1Spender,scores={PZZaRezM.1Wert=0}] at @s if entity @p[distance=..5,level=1..] positioned ~ ~-1 ~ run function zaubertisch-rezeptmaschine:v1menu
