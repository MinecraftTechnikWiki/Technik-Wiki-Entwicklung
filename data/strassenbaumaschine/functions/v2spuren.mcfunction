
scoreboard players add VarStraBM.2Spur PZStraBM.2Laen 1
scoreboard players set VarStraBM.2StrichLinie PZStraBM.2Laen 0
scoreboard players operation VarStraBM.2Weite PZStraBM.2Laen = @s PZStraBM.2Laen
function strassenbaumaschine:v2spur

execute if score VarStraBM.2Spur PZStraBM.2Laen < VarStraBM.2Spuren PZStraBM.2Laen positioned ^-4 ^ ^ run function strassenbaumaschine:v2spuren
