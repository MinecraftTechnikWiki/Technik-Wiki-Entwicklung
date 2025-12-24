# Der Wert erhöht um die neue aktuelle Nachricht anzuzeigen.
scoreboard players add VarDiaLS.1Nachricht PZDiaLS.1Reden 1

# Vom Dorfbewohner aus, wird dem Spieler die aktuelle Nachricht ausgegeben.
$execute on vehicle on vehicle run tellraw @p[tag=EtiDiaLS.1Spieler] ["Dialog-System.1:\n",{text:"[B=",color:"gray"},{score:{name:"VarDiaLS.1Nachricht",objective:"PZDiaLS.1Reden"},color:"gray"},{text:"]",color:"gray"},{text:" «",color:"gold",bold:true},{entity:"@s",nbt:"CustomName",color:"white",interpret:true},{text:"» ",color:"gold",bold:true},{storage:"dialog-system:v1daten",nbt:'"EigDiaLS.1Nachrichten"[$(Nachricht)]',color:"yellow",interpret:true}]

# Ziel ist es die Hälfte der Nachrichten in einer Variable zu speichern, da in einem Binärbeim ab der Hälfte alle Knoten Blätterknoten sind.
execute store result score VarDiaLS.1Nachrichten PZDiaLS.1Reden run data get entity @s data."EigDiaLS.1Nachrichten"
scoreboard players add VarDiaLS.1Nachrichten PZDiaLS.1Reden 1
scoreboard players operation VarDiaLS.1Nachrichten PZDiaLS.1Reden /= KonstDiaLS.1ZWEI PZDiaLS.1Reden

# Nur wenn die Nachrichten keine Blattknoten sind werden die beiden Antworten Ja und Nein zur Verfügung gestellt.
execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden < VarDiaLS.1Nachrichten PZDiaLS.1Reden run tellraw @p[tag=EtiDiaLS.1Spieler] ["",{text:"[Ja]",color:"green",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für Ja"} },click_event:{action:"run_command",command:"/trigger PZDiaLS.1Antwort set 1"} }," ",{text:"[Nein]",color:"red",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für Nein"} },click_event:{action:"run_command",command:"/trigger PZDiaLS.1Antwort set 2"} }]

# Der Wert wird wieder verringert damit er auf seinem Ursprungswert ist.
execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden < VarDiaLS.1Nachrichten PZDiaLS.1Reden run scoreboard players remove VarDiaLS.1Nachricht PZDiaLS.1Reden 1

# Sobald ein Blattknoten erreicht wurde, beginnt der Dialog wieder von vorne.
$execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden >= VarDiaLS.1Nachrichten PZDiaLS.1Reden store result entity @s data."EigDiaLS.1Spieler"[{UUID:$(UUID)}].Nachricht int 1 run scoreboard players set VarDiaLS.1Nachricht PZDiaLS.1Reden 0
