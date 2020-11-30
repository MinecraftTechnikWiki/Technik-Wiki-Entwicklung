
scoreboard players add VarMADNMS.1Feld PZMADNMS.1Wert 1

setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",posX:-1,posY:0,posZ:-1,name:"marsch-raus-minispiel:v1feld"} replace
execute if score VarMADNMS.1Feld PZMADNMS.1Wert matches 5 run data merge block ~ ~ ~ {name:"marsch-raus-minispiel:v1start_feld"}
setblock ~ ~ ~1 minecraft:redstone_block replace

execute if score VarMADNMS.1Feld PZMADNMS.1Wert matches 1..9 unless score VarMADNMS.1Feld PZMADNMS.1Wert matches 5 unless score VarMADNMS.1Feld PZMADNMS.1Wert matches 7 positioned ^ ^ ^3 run function marsch-raus-minispiel:v1feld

execute if score VarMADNMS.1Feld PZMADNMS.1Wert matches 5..7 unless score VarMADNMS.1Feld PZMADNMS.1Wert matches 6 rotated ~-90 ~ positioned ^ ^ ^3 run function marsch-raus-minispiel:v1feld

execute if score VarMADNMS.1Feld PZMADNMS.1Wert matches 10 run scoreboard players set VarMADNMS.1Feld PZMADNMS.1Wert 0
