
execute if entity @s[nbt={Item:{id:"minecraft:furnace"} }] run scoreboard players operation @s PZDrRezM.2Drop = @s PZDrRezM.2Fort

scoreboard players set @s[nbt={Item:{id:"minecraft:oak_log"} }] PZDrRezM.2Drop -1
scoreboard players set @s[nbt={Item:{id:"minecraft:coal"} }] PZDrRezM.2Drop -2
scoreboard players set @s[nbt={Item:{id:"minecraft:lava_bucket"} }] PZDrRezM.2Drop -3

scoreboard players set @s[nbt={Item:{id:"minecraft:cod"} }] PZDrRezM.2Drop 1
scoreboard players set @s[nbt={Item:{id:"minecraft:porkchop"} }] PZDrRezM.2Drop 2
scoreboard players set @s[nbt={Item:{id:"minecraft:mutton"} }] PZDrRezM.2Drop 3
scoreboard players set @s[nbt={Item:{id:"minecraft:potato"} }] PZDrRezM.2Drop 4

data merge entity @s {Age:-32768s}
tag @s add EtiDrRezM.2Drop

scoreboard players set @a[scores={PZDrRezM.2Drop=1..}] PZDrRezM.2Drop 0
