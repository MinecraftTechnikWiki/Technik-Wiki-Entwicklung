
scoreboard players add VarBoSplMS.1Warten PZBoSplMS.1Wert 1
execute if score VarBoSplMS.1Warten PZBoSplMS.1Wert matches 1..9 run return 0
scoreboard players set VarBoSplMS.1Warten PZBoSplMS.1Wert 0

scoreboard players add VarBoSplMS.1Meldung PZBoSplMS.1Wert 1

execute if score VarBoSplMS.1Spielen PZBoSplMS.1Wert matches 0 if score VarBoSplMS.1Meldung PZBoSplMS.1Wert matches ..9 unless score VarBoSplMS.1Meldung PZBoSplMS.1Wert matches 5 if score VarBoSplMS.1Zaehlen PZBoSplMS.1Wert matches 0 if score VarBoSplMS.1Wartende PZBoSplMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMBoSplMS.1Lobby] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{text:"Es wird noch auf ",color:"yellow",bold:true},{text:"1",color:"dark_purple",bold:true},{text:" weitere(n) Spieler gewartet.",color:"yellow",bold:true}]

execute if score VarBoSplMS.1Meldung PZBoSplMS.1Wert matches 10.. if score VarBoSplMS.1Zaehlen PZBoSplMS.1Wert matches 0 if score VarBoSplMS.1Wartende PZBoSplMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMBoSplMS.1Lobby] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{text:"Es ist/sind derzeit ",color:"yellow",bold:true},{score:{name:"VarBoSplMS.1Wartende",objective:"PZBoSplMS.1Wert"},color:"green",bold:true},{text:" Spieler anwesend.",color:"yellow",bold:true}]

execute if score VarBoSplMS.1Meldung PZBoSplMS.1Wert matches 5 if score VarBoSplMS.1Zaehlen PZBoSplMS.1Wert matches 0 if score VarBoSplMS.1Wartende PZBoSplMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMBoSplMS.1Lobby] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{text:"Chatte durch /teammsg",hover_event:{action:"show_text",value:{text:"Tippe für Chat-Nachricht",color:"green",bold:true} },click_event:{action:"suggest_command",command:"/teammsg "},color:"green",bold:true},{text:" mit den anderen Spielern in der Lobby.",color:"yellow",bold:true}]

execute if score VarBoSplMS.1Zaehlen PZBoSplMS.1Wert matches 1 if score VarBoSplMS.1Wartende PZBoSplMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMBoSplMS.1Lobby] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{text:"Der Zähler wurde abgebrochen.",color:"red",bold:true}]

execute if score VarBoSplMS.1Spielen PZBoSplMS.1Wert matches 1 if score VarBoSplMS.1Meldung PZBoSplMS.1Wert matches ..9 if score VarBoSplMS.1Zaehlen PZBoSplMS.1Wert matches 0 if score VarBoSplMS.1Wartende PZBoSplMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMBoSplMS.1Lobby] ["Bow-Spleef-Minispiel.1:\n",{storage:"bow-spleef-minispiel:v1daten",nbt:'"EigBoSplMS.1Name"',interpret:true},{text:"Warte bis das laufende Spiel endet.",color:"yellow",bold:true}]

execute if score VarBoSplMS.1Meldung PZBoSplMS.1Wert matches 10.. run scoreboard players set VarBoSplMS.1Meldung PZBoSplMS.1Wert 0

execute if score VarBoSplMS.1Zaehlen PZBoSplMS.1Wert matches 0 if score VarBoSplMS.1Wartende PZBoSplMS.1Wert matches 2.. run scoreboard players set VarBoSplMS.1Beginnen PZBoSplMS.1Wert 16

execute store success score VarBoSplMS.1Zaehlen PZBoSplMS.1Wert if score VarBoSplMS.1Wartende PZBoSplMS.1Wert matches 2..
