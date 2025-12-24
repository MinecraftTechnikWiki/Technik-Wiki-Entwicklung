
scoreboard players add VarSkyWaMS.1Warten PZSkyWaMS.1Wert 1
execute if score VarSkyWaMS.1Warten PZSkyWaMS.1Wert matches 1..9 run return 0
scoreboard players set VarSkyWaMS.1Warten PZSkyWaMS.1Wert 0

scoreboard players add VarSkyWaMS.1Meldung PZSkyWaMS.1Wert 1

execute if score VarSkyWaMS.1Spielen PZSkyWaMS.1Wert matches 0 if score VarSkyWaMS.1Meldung PZSkyWaMS.1Wert matches ..9 unless score VarSkyWaMS.1Meldung PZSkyWaMS.1Wert matches 5 if score VarSkyWaMS.1Zaehlen PZSkyWaMS.1Wert matches 0 if score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMSkyWaMS.1Lobby] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{text:"Es wird noch auf ",color:"yellow",bold:true},{text:"1",color:"dark_purple",bold:true},{text:" weitere(n) Spieler gewartet.",color:"yellow",bold:true}]

execute if score VarSkyWaMS.1Meldung PZSkyWaMS.1Wert matches 10.. if score VarSkyWaMS.1Zaehlen PZSkyWaMS.1Wert matches 0 if score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMSkyWaMS.1Lobby] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{text:"Es ist/sind derzeit ",color:"yellow",bold:true},{score:{name:"VarSkyWaMS.1Wartende",objective:"PZSkyWaMS.1Wert"},color:"green",bold:true},{text:" Spieler anwesend.",color:"yellow",bold:true}]

execute if score VarSkyWaMS.1Meldung PZSkyWaMS.1Wert matches 5 if score VarSkyWaMS.1Zaehlen PZSkyWaMS.1Wert matches 0 if score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMSkyWaMS.1Lobby] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{text:"Chatte durch /teammsg",hover_event:{action:"show_text",value:{text:"Tippe für Chat-Nachricht",color:"green",bold:true} },click_event:{action:"suggest_command",command:"/teammsg "},color:"green",bold:true},{text:" mit den anderen Spielern in der Lobby.",color:"yellow",bold:true}]

execute if score VarSkyWaMS.1Zaehlen PZSkyWaMS.1Wert matches 1 if score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMSkyWaMS.1Lobby] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{text:"Der Zähler wurde abgebrochen.",color:"red",bold:true}]

execute if score VarSkyWaMS.1Spielen PZSkyWaMS.1Wert matches 1 if score VarSkyWaMS.1Meldung PZSkyWaMS.1Wert matches ..9 if score VarSkyWaMS.1Zaehlen PZSkyWaMS.1Wert matches 0 if score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMSkyWaMS.1Lobby] ["Skywars-Minispiel.1:\n",{storage:"skywars-minispiel:v1daten",nbt:'"EigSkyWaMS.1Name"',interpret:true},{text:"Warte bis das laufende Spiel endet.",color:"yellow",bold:true}]

execute if score VarSkyWaMS.1Meldung PZSkyWaMS.1Wert matches 10.. run scoreboard players set VarSkyWaMS.1Meldung PZSkyWaMS.1Wert 0

execute if score VarSkyWaMS.1Zaehlen PZSkyWaMS.1Wert matches 0 if score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert matches 2.. run scoreboard players set VarSkyWaMS.1Beginnen PZSkyWaMS.1Wert 16

execute store success score VarSkyWaMS.1Zaehlen PZSkyWaMS.1Wert if score VarSkyWaMS.1Wartende PZSkyWaMS.1Wert matches 2..
