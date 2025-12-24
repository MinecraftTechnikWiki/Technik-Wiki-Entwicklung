
$tellraw @p[tag=EtiAufTraS.2Spieler] ["",{text:"[",color:"gray"},{storage:"auftrag-system:v2daten",nbt:'"EigAufTraS.2Antworten"[0].Text',color:"yellow",interpret:true,bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für die Antwort ID:$(Antwort)"} },click_event:{action:"run_command",command:"/trigger PZAufTraS.2Antwort set $(Antwort)"} },{text:"]",color:"gray"}]

scoreboard players add VarAufTraS.2Antwort PZAufTraS.2Reden 1

data remove storage auftrag-system:v2daten "EigAufTraS.2Antworten"[0]

$execute if score VarAufTraS.2Nachricht PZAufTraS.2Reden > VarAufTraS.2Nachrichten PZAufTraS.2Reden store result entity @s data."EigAufTraS.2Spieler"[{UUID:$(UUID)}].Antwort int 1 run data get storage auftrag-system:v2daten "EigAufTraS.2Antworten"[0].ZurID

$execute if score VarAufTraS.2Antwort PZAufTraS.2Reden < VarAufTraS.2Antworten PZAufTraS.2Reden run function auftrag-system:v2nachrichten with entity @s data."EigAufTraS.2Spieler"[{UUID:$(UUID)}]
