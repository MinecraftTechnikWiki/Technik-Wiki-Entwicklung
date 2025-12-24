
scoreboard players add VarGildSMS.1Warten PZGildSMS.1Wert 1
execute if score VarGildSMS.1Warten PZGildSMS.1Wert matches 1..9 run return 0
scoreboard players set VarGildSMS.1Warten PZGildSMS.1Wert 0

scoreboard players add VarGildSMS.1Meldung PZGildSMS.1Wert 1

execute if score VarGildSMS.1Spielen PZGildSMS.1Wert matches 0 if score VarGildSMS.1Meldung PZGildSMS.1Wert matches ..9 unless score VarGildSMS.1Meldung PZGildSMS.1Wert matches 5 if score VarGildSMS.1Zaehlen PZGildSMS.1Wert matches 0 if score VarGildSMS.1Wartende PZGildSMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMGildSMS.1Lobby] ["Gildenschlacht-Minispiel.1:\n",{storage:"gildenschlacht-minispiel:v1daten",nbt:'"EigGildSMS.1Name"',interpret:true},{text:"Es wird noch auf ",color:"yellow",bold:true},{text:"1",color:"dark_purple",bold:true},{text:" weitere(n) Spieler gewartet.",color:"yellow",bold:true}]

execute if score VarGildSMS.1Meldung PZGildSMS.1Wert matches 10.. if score VarGildSMS.1Zaehlen PZGildSMS.1Wert matches 0 if score VarGildSMS.1Wartende PZGildSMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMGildSMS.1Lobby] ["Gildenschlacht-Minispiel.1:\n",{storage:"gildenschlacht-minispiel:v1daten",nbt:'"EigGildSMS.1Name"',interpret:true},{text:"Es ist/sind derzeit ",color:"yellow",bold:true},{score:{name:"VarGildSMS.1Wartende",objective:"PZGildSMS.1Wert"},color:"green",bold:true},{text:" Spieler anwesend.",color:"yellow",bold:true}]

execute if score VarGildSMS.1Meldung PZGildSMS.1Wert matches 5 if score VarGildSMS.1Zaehlen PZGildSMS.1Wert matches 0 if score VarGildSMS.1Wartende PZGildSMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMGildSMS.1Lobby] ["Gildenschlacht-Minispiel.1:\n",{storage:"gildenschlacht-minispiel:v1daten",nbt:'"EigGildSMS.1Name"',interpret:true},{text:"Chatte durch /teammsg",hover_event:{action:"show_text",value:{text:"Tippe für Chat-Nachricht",color:"green",bold:true} },click_event:{action:"suggest_command",command:"/teammsg "},color:"green",bold:true},{text:" mit den anderen Spielern in der Lobby.",color:"yellow",bold:true}]

execute if score VarGildSMS.1Zaehlen PZGildSMS.1Wert matches 1 if score VarGildSMS.1Wartende PZGildSMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMGildSMS.1Lobby] ["Gildenschlacht-Minispiel.1:\n",{storage:"gildenschlacht-minispiel:v1daten",nbt:'"EigGildSMS.1Name"',interpret:true},{text:"Der Zähler wurde abgebrochen.",color:"red",bold:true}]

execute if score VarGildSMS.1Spielen PZGildSMS.1Wert matches 1 if score VarGildSMS.1Meldung PZGildSMS.1Wert matches ..9 if score VarGildSMS.1Zaehlen PZGildSMS.1Wert matches 0 if score VarGildSMS.1Wartende PZGildSMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMGildSMS.1Lobby] ["Gildenschlacht-Minispiel.1:\n",{storage:"gildenschlacht-minispiel:v1daten",nbt:'"EigGildSMS.1Name"',interpret:true},{text:"Warte bis das laufende Spiel endet.",color:"yellow",bold:true}]

execute if score VarGildSMS.1Meldung PZGildSMS.1Wert matches 10.. run scoreboard players set VarGildSMS.1Meldung PZGildSMS.1Wert 0

execute if score VarGildSMS.1Zaehlen PZGildSMS.1Wert matches 0 if score VarGildSMS.1Wartende PZGildSMS.1Wert matches 2.. run scoreboard players set VarGildSMS.1Beginnen PZGildSMS.1Wert 16

execute store success score VarGildSMS.1Zaehlen PZGildSMS.1Wert if score VarGildSMS.1Wartende PZGildSMS.1Wert matches 2..
