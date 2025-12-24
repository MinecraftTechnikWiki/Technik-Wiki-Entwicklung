
execute if entity @s[nbt={Item:{id:"minecraft:brewing_stand"} }] run scoreboard players operation @s PZDrRezM.3Drop = @s PZDrRezM.3Fort
#execute if entity @s[nbt={Item:{id:"minecraft:cauldron"} }] run scoreboard players operation @s PZDrRezM.3Drop = @s PZDrRezM.3Fort

tag @s[nbt={Item:{id:"minecraft:blaze_powder"} }] add EtiDrRezM.3Brauen

scoreboard players set @s[nbt={Item:{id:"minecraft:fermented_spider_eye"} }] PZDrRezM.3Drop 1
scoreboard players set @s[nbt={Item:{id:"minecraft:gunpowder"} }] PZDrRezM.3Drop 2
scoreboard players set @s[nbt={Item:{id:"minecraft:dragon_breath"} }] PZDrRezM.3Drop 3

#scoreboard players set @s[nbt={Item:{id:"minecraft:rabbit_foot"} }] PZDrRezM.3Drop -4
#scoreboard players set @s[nbt={Item:{id:"minecraft:glistering_melon_slice"} }] PZDrRezM.3Drop -5

tag @s[nbt={Item:{id:"minecraft:potion"} }] add EtiDrRezM.3Trank
#scoreboard players set @s[tag=EtiDrRezM.3Trank,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:night_vision"} } } }] PZDrRezM.3Drop -1
#scoreboard players set @s[tag=EtiDrRezM.3Trank,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:strength"} } } }] PZDrRezM.3Drop -2
#scoreboard players set @s[tag=EtiDrRezM.3Trank,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:luck"} } } }] PZDrRezM.3Drop -3
#scoreboard players set @s[tag=EtiDrRezM.3Trank,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:regeneration"} } } }] PZDrRezM.3Drop -4
#scoreboard players set @s[tag=EtiDrRezM.3Trank,nbt={Item:{components:{"minecraft:potion_contents":{potion:"minecraft:swiftness"} } } }] PZDrRezM.3Drop -5

#tag @s[tag=EtiDrRezM.3Trank] remove EtiDrRezM.3Trank

data merge entity @s {Age:-32768s}
tag @s add EtiDrRezM.3Drop

scoreboard players set @a[scores={PZDrRezM.3Drop=1..}] PZDrRezM.3Drop 0
