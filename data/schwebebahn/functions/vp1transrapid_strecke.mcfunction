
teleport @s[y_rotation=135..-135] ~ ~ ~ 180 0
teleport @s[y_rotation=-135..-45] ~ ~ ~ -90 0
teleport @s[y_rotation=-45..45] ~ ~ ~ 0 0
teleport @s[y_rotation=45..135] ~ ~ ~ 90 0

execute at @s[tag=EtiSchwB.p1Hochstrecke] as @p[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ^ ^ ^-15 minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-15,posY:0,posZ:-2,name:"schwebebahn:vp1transrapid_hochstrecke"} replace
execute at @s[tag=EtiSchwB.p1Hochstrecke] as @p[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ^ ^ ^-15 minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:2,posY:0,posZ:-15,name:"schwebebahn:vp1transrapid_hochstrecke"} replace

execute at @s[tag=EtiSchwB.p1Gleis] as @p[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run setblock ^ ^ ^-15 minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-15,posY:0,posZ:-1,name:"schwebebahn:vp1transrapid_strecke"} replace
execute at @s[tag=EtiSchwB.p1Gleis] as @p[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run setblock ^ ^ ^-15 minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:1,posY:0,posZ:-15,name:"schwebebahn:vp1transrapid_strecke"} replace

execute at @s[tag=EtiSchwB.p1Rampe] if entity @p[y_rotation=45..135] run setblock ^ ^ ^-15 minecraft:structure_block{rotation:"NONE",mode:"LOAD",posX:-15,posY:0,posZ:-2,name:"schwebebahn:vp1transrapid_rampe"} replace
execute at @s[tag=EtiSchwB.p1Rampe] if entity @p[y_rotation=135..-135] run setblock ^ ^ ^-15 minecraft:structure_block{rotation:"CLOCKWISE_90",mode:"LOAD",posX:2,posY:0,posZ:-15,name:"schwebebahn:vp1transrapid_rampe"} replace
execute at @s[tag=EtiSchwB.p1Rampe] if entity @p[y_rotation=-135..-45] run setblock ^ ^ ^-15 minecraft:structure_block{rotation:"CLOCKWISE_180",mode:"LOAD",posX:15,posY:0,posZ:2,name:"schwebebahn:vp1transrapid_rampe"} replace
execute at @s[tag=EtiSchwB.p1Rampe] if entity @p[y_rotation=-45..45] run setblock ^ ^ ^-15 minecraft:structure_block{rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:-2,posY:0,posZ:15,name:"schwebebahn:vp1transrapid_rampe"} replace

execute at @s run setblock ^1 ^ ^-15 minecraft:redstone_block replace

kill @s
