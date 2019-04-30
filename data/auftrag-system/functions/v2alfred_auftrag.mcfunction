
scoreboard players add @a[distance=..3,scores={PZAufS.2Reden=1..}] PZAufS.2Nachr 1
scoreboard players set @a[distance=..3,scores={PZAufS.2Reden=1..,PZAufS.2Nachr=4..}] PZAufS.2Nachr 1

tellraw @a[distance=..3,scores={PZAufS.2Reden=1..,PZAufS.2Nachr=1}] ["",{"text":"[1/3]","color":"gray"},{"text":" «","color":"gold","bold":true},{"selector":"@s"},{"text":"» ","color":"gold","bold":true},{"text":"Hey du, du siehst aus, als ob du","color":"yellow"},{"text":" [sechs Zäune und ein Zauntor] ","color":"green","hoverEvent":{"action":"show_text","value":{"text":"Stelle 6x Zäune und 1x Zauntor her"} } },{"text":"herstellen könntest.","color":"yellow"} ]
