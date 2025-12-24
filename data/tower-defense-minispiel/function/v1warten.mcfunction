
scoreboard players add VarTowDefMS.1Warten PZTowDefMS.1Wert 1
execute if score VarTowDefMS.1Warten PZTowDefMS.1Wert matches 1..9 run return 0
scoreboard players set VarTowDefMS.1Warten PZTowDefMS.1Wert 0

scoreboard players add VarTowDefMS.1Meldung PZTowDefMS.1Wert 1

execute if score VarTowDefMS.1Spielen PZTowDefMS.1Wert matches 0 if score VarTowDefMS.1Meldung PZTowDefMS.1Wert matches ..9 unless score VarTowDefMS.1Meldung PZTowDefMS.1Wert matches 5 if score VarTowDefMS.1Zaehlen PZTowDefMS.1Wert matches 0 if score VarTowDefMS.1Wartende PZTowDefMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMTowDefMS.1Lobby] ["Tower-Defense-Minispiel.1:\n",{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Name"',interpret:true},{text:"Es wird noch auf ",color:"yellow",bold:true},{text:"1",color:"dark_purple",bold:true},{text:" weitere(n) Spieler gewartet.",color:"yellow",bold:true}]

execute if score VarTowDefMS.1Meldung PZTowDefMS.1Wert matches 10.. if score VarTowDefMS.1Zaehlen PZTowDefMS.1Wert matches 0 if score VarTowDefMS.1Wartende PZTowDefMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMTowDefMS.1Lobby] ["Tower-Defense-Minispiel.1:\n",{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Name"',interpret:true},{text:"Es ist/sind derzeit ",color:"yellow",bold:true},{score:{name:"VarTowDefMS.1Wartende",objective:"PZTowDefMS.1Wert"},color:"green",bold:true},{text:" Spieler anwesend.",color:"yellow",bold:true}]

execute if score VarTowDefMS.1Meldung PZTowDefMS.1Wert matches 5 if score VarTowDefMS.1Zaehlen PZTowDefMS.1Wert matches 0 if score VarTowDefMS.1Wartende PZTowDefMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMTowDefMS.1Lobby] ["Tower-Defense-Minispiel.1:\n",{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Name"',interpret:true},{text:"Chatte durch /teammsg",hover_event:{action:"show_text",value:{text:"Tippe für Chat-Nachricht",color:"green",bold:true} },click_event:{action:"suggest_command",command:"/teammsg "},color:"green",bold:true},{text:" mit den anderen Spielern in der Lobby.",color:"yellow",bold:true}]

execute if score VarTowDefMS.1Zaehlen PZTowDefMS.1Wert matches 1 if score VarTowDefMS.1Wartende PZTowDefMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMTowDefMS.1Lobby] ["Tower-Defense-Minispiel.1:\n",{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Name"',interpret:true},{text:"Der Zähler wurde abgebrochen.",color:"red",bold:true}]

execute if score VarTowDefMS.1Spielen PZTowDefMS.1Wert matches 1 if score VarTowDefMS.1Meldung PZTowDefMS.1Wert matches ..9 if score VarTowDefMS.1Zaehlen PZTowDefMS.1Wert matches 0 if score VarTowDefMS.1Wartende PZTowDefMS.1Wert matches ..1 run tellraw @a[distance=..50,team=TMTowDefMS.1Lobby] ["Tower-Defense-Minispiel.1:\n",{storage:"tower-defense-minispiel:v1daten",nbt:'"EigTowDefMS.1Name"',interpret:true},{text:"Warte bis das laufende Spiel endet.",color:"yellow",bold:true}]

execute if score VarTowDefMS.1Meldung PZTowDefMS.1Wert matches 10.. run scoreboard players set VarTowDefMS.1Meldung PZTowDefMS.1Wert 0

execute if score VarTowDefMS.1Wartende PZTowDefMS.1Wert matches ..1 run return run scoreboard players set VarTowDefMS.1Zaehlen PZTowDefMS.1Wert 0

execute store result score VarTowDefMS.1Team1 PZTowDefMS.1Wert if entity @a[team=TMTowDefMS.1Lobby,scores={PZTowDefMS.1Wert=1}]
execute store result score VarTowDefMS.1Team2 PZTowDefMS.1Wert if entity @a[team=TMTowDefMS.1Lobby,scores={PZTowDefMS.1Wert=2}]

scoreboard players operation VarTowDefMS.1Teams PZTowDefMS.1Wert = VarTowDefMS.1Team1 PZTowDefMS.1Wert
scoreboard players operation VarTowDefMS.1Teams PZTowDefMS.1Wert += VarTowDefMS.1Team2 PZTowDefMS.1Wert

scoreboard players operation VarTowDefMS.1Ausgewogen PZTowDefMS.1Wert = VarTowDefMS.1Team1 PZTowDefMS.1Wert
scoreboard players operation VarTowDefMS.1Ausgewogen PZTowDefMS.1Wert -= VarTowDefMS.1Team2 PZTowDefMS.1Wert

scoreboard players set VarTowDefMS.1Zaehlen PZTowDefMS.1Wert 0
execute if score VarTowDefMS.1Ausgewogen PZTowDefMS.1Wert matches -1..1 if score VarTowDefMS.1Wartende PZTowDefMS.1Wert = VarTowDefMS.1Teams PZTowDefMS.1Wert run scoreboard players set VarTowDefMS.1Zaehlen PZTowDefMS.1Wert 1

execute if score VarTowDefMS.1Zaehlen PZTowDefMS.1Wert matches 0 run scoreboard players set VarTowDefMS.1Beginnen PZTowDefMS.1Wert 16
execute if score VarTowDefMS.1Zaehlen PZTowDefMS.1Wert matches 1 run scoreboard players remove VarTowDefMS.1Beginnen PZTowDefMS.1Wert 1

execute if score VarTowDefMS.1Zaehlen PZTowDefMS.1Wert matches 0 if score VarTowDefMS.1Ausgewogen PZTowDefMS.1Wert matches -1..1 run title @a[team=TMTowDefMS.1Lobby] actionbar ["",{text:"Nicht alle Spieler sind in Mannschaften!",color:"red",bold:true}]
execute if score VarTowDefMS.1Zaehlen PZTowDefMS.1Wert matches 0 if score VarTowDefMS.1Ausgewogen PZTowDefMS.1Wert matches 2.. run title @a[team=TMTowDefMS.1Lobby] actionbar ["",{text:"Die ROTE Mannschaft hat zu viele Mitglieder!",color:"red",bold:true}]
execute if score VarTowDefMS.1Zaehlen PZTowDefMS.1Wert matches 0 if score VarTowDefMS.1Ausgewogen PZTowDefMS.1Wert matches ..-2 run title @a[team=TMTowDefMS.1Lobby] actionbar ["",{text:"Die BLAUE Mannschaft hat zu viele Mitglieder!",color:"red",bold:true}]
