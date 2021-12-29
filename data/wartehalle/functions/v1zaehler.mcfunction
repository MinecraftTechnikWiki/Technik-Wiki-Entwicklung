
execute if score VarWartH.1Div PZWartH.1Wert matches 1..5 run playsound minecraft:block.note_block.chime master @a[team=TMWartH.1Lobby] ~ ~ ~ 1 0.6 1

execute if score VarWartH.1Div PZWartH.1Wert matches 0 run playsound minecraft:block.note_block.chime master @a[team=TMWartH.1Lobby] ~ ~ ~ 1 0.7 1

execute if score VarWartH.1Div PZWartH.1Wert matches 11..15 run title @a[team=TMWartH.1Lobby] title ["",{"score":{"name":"VarWartH.1Div","objective":"PZWartH.1Wert"},"color":"green","bold":true}]

execute if score VarWartH.1Div PZWartH.1Wert matches 6..10 run title @a[team=TMWartH.1Lobby] title ["",{"score":{"name":"VarWartH.1Div","objective":"PZWartH.1Wert"},"color":"yellow","bold":true}]

execute if score VarWartH.1Div PZWartH.1Wert matches 1..5 run title @a[team=TMWartH.1Lobby] title ["",{"score":{"name":"VarWartH.1Div","objective":"PZWartH.1Wert"},"color":"red","bold":true}]
