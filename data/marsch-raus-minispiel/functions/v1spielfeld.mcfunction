
scoreboard players add VarMADNMS.1Ecke PZMADNMS.1Wert 1

setblock ^-15 ^ ^15 minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"marsch-raus-minispiel:v1start_feld"} replace
setblock ^-12 ^ ^15 minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"marsch-raus-minispiel:v1start_feld"} replace
setblock ^-15 ^ ^12 minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"marsch-raus-minispiel:v1start_feld"} replace
setblock ^-12 ^ ^12 minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"marsch-raus-minispiel:v1start_feld"} replace

fill ^-13 ^ ^12 ^-14 ^ ^15 minecraft:redstone_block replace

setblock ^ ^ ^3 minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"marsch-raus-minispiel:v1ziel_feld"} replace
setblock ^ ^ ^6 minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"marsch-raus-minispiel:v1ziel_feld"} replace
setblock ^ ^ ^9 minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"marsch-raus-minispiel:v1ziel_feld"} replace
setblock ^ ^ ^12 minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"marsch-raus-minispiel:v1ziel_feld"} replace

fill ^-1 ^ ^3 ^-1 ^ ^12 minecraft:redstone_block replace

#summon minecraft:zombie ^ ^ ^ {NoAI:true,isBaby:true}

execute positioned ^-3 ^ ^3 run function marsch-raus-minispiel:v1feld

execute if score VarMADNMS.1Ecke PZMADNMS.1Wert matches 1 run fill ^ ^ ^3 ^-15 ^ ^15 minecraft:orange_concrete replace minecraft:bedrock
execute if score VarMADNMS.1Ecke PZMADNMS.1Wert matches 2 run fill ^ ^ ^3 ^-15 ^ ^15 minecraft:light_blue_concrete replace minecraft:bedrock
execute if score VarMADNMS.1Ecke PZMADNMS.1Wert matches 3 run fill ^ ^ ^3 ^-15 ^ ^15 minecraft:purple_concrete replace minecraft:bedrock
execute if score VarMADNMS.1Ecke PZMADNMS.1Wert matches 4 run fill ^ ^ ^3 ^-15 ^ ^15 minecraft:lime_concrete replace minecraft:bedrock

execute if score VarMADNMS.1Ecke PZMADNMS.1Wert matches 1..3 rotated ~90 ~ run function marsch-raus-minispiel:v1spielfeld
execute if score VarMADNMS.1Ecke PZMADNMS.1Wert matches 4 run kill @s
execute if score VarMADNMS.1Ecke PZMADNMS.1Wert matches 4 run scoreboard players set VarMADNMS.1Ecke PZMADNMS.1Wert 0
