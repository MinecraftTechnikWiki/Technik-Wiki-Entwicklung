
execute if score VarSchwB.p1Hoehe PZSchwB.p1Wert matches 0 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",name:"schwebebahn:vp1transrapid_strecke"} replace

execute if score VarSchwB.p1Hoehe PZSchwB.p1Wert matches 0 as @p[y_rotation=-135..135] unless entity @s[y_rotation=-45..45] run data merge block ~ ~ ~ {rotation:"NONE",posX:-15,posY:0,posZ:-1}
execute if score VarSchwB.p1Hoehe PZSchwB.p1Wert matches 0 as @p[y_rotation=135..45] unless entity @s[y_rotation=-135..-45] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",posX:1,posY:0,posZ:-15}

execute if score VarSchwB.p1Hoehe PZSchwB.p1Wert matches 0 run setblock ~1 ~ ~ minecraft:redstone_block replace

execute if score VarSchwB.p1Hoehe PZSchwB.p1Wert matches 1.. run setblock ^1 ^ ^ minecraft:quartz_pillar replace
execute if score VarSchwB.p1Hoehe PZSchwB.p1Wert matches 1.. run setblock ^-1 ^ ^ minecraft:quartz_pillar replace

scoreboard players remove VarSchwB.p1Hoehe PZSchwB.p1Wert 1
execute if score VarSchwB.p1Hoehe PZSchwB.p1Wert matches 0.. positioned ~ ~1 ~ run function schwebebahn:vp1strecke
