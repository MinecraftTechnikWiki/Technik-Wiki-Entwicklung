
execute if entity @s[tag=EtiTuTor.1Aequator] run clone ~ ~ ~ ~ ~6 ~2 ~ ~ ~1 replace move
execute if entity @s[tag=EtiTuTor.1Pole] run clone ~ ~ ~ ~2 ~6 ~ ~1 ~ ~ replace move

scoreboard players add VarTuTor.1Stufe PZTuTor.1Tor 1
execute if score VarTuTor.1Stufe PZTuTor.1Tor < @s PZTuTor.1Tor run function tuer-_und_toranlage:v1tor_bewegen_1
