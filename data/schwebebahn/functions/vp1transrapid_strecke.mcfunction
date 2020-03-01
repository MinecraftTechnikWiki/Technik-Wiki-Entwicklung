
teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 0
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0

execute at @s as @p if entity @s[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ^ ^ ^-15 minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-15,posY:0,posZ:-2,name:"schwebebahn:vp1transrapid_strecke"} replace
execute at @s as @p if entity @s[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ^ ^ ^-15 minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:2,posY:0,posZ:-15,name:"schwebebahn:vp1transrapid_strecke"} replace

execute at @s run setblock ^ ^1 ^-15 minecraft:redstone_block replace

kill @s
