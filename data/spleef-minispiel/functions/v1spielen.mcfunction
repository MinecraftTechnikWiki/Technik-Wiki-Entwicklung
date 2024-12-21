
give @s[scores={PZSpleeMS.1Abbauen=1..}] minecraft:snowball[minecraft:custom_data={EigSpleeMS.1Alle:true}]
execute if entity @s[scores={PZSpleeMS.1Abbauen=1..}] if block ~ ~-4 ~ minecraft:water run kill @e[distance=..10,type=minecraft:item,nbt={Item:{id:"minecraft:snowball"} }]
scoreboard players set @s[scores={PZSpleeMS.1Abbauen=1..}] PZSpleeMS.1Abbauen 0

execute if block ~ ~ ~ minecraft:water run function spleef-minispiel:v1verloren
execute if entity @s[gamemode=creative] run function spleef-minispiel:v1verloren
