
execute store result score VarWartS.1IstNull PZWartS.1Wert run scoreboard players remove VarWartS.1Beenden PZWartS.1Wert 1
scoreboard players operation VarWartS.1IstNull PZWartS.1Wert %= KonstWartS.1FUENF PZWartS.1Wert

execute if score VarWartS.1Beenden PZWartS.1Wert matches 1.. run return run execute if score VarWartS.1IstNull PZWartS.1Wert matches 0 run tellraw @a[tag=EtiWartS.1Spielen] ["Wartesaal.1:\n",{"storage":"wartesaal:v1daten","nbt":"\"EigWartS.1Name\"","interpret":true},{"text":"Spiel endet in ","color":"yellow","bold":true},{"score":{"name":"VarWartS.1Beenden","objective":"PZWartS.1Wert"},"color":"dark_purple","bold":true},{"text":" Sekunden!","bold":true}]

scoreboard players set VarWartS.1Spielen PZWartS.1Wert 0

title @a[tag=EtiWartS.1Spielen] title ["",{"text":"Spiel vorbei!","color":"red","bold":true}]

execute as @a[tag=EtiWartS.1Spielen] run function wartesaal:v1beitreten
