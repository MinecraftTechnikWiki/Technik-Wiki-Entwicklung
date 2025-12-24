# Dem Spieler wird pro Durchlauf dieser Funktion eine Antwort-Möglichkeit als Schaltfläche im Chat angeboten.
$tellraw @p[tag=EtiDiaLS.2Spieler] ["",{text:"[",color:"gray",bold:true},{storage:"dialog-system:v2daten",nbt:'"EigDiaLS.2Antworten"[0].Text',color:"yellow",interpret:true,bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für die Antwort ID:$(Antwort)"} },click_event:{action:"run_command",command:"/trigger PZDiaLS.2Antwort set $(Antwort)"} },{text:"]",color:"gray",bold:true}]

# Die erste Antwort wird aus der Datenspeicher-Liste entfernt, sodass die dahinter liegende eins aufrückt.
data remove storage dialog-system:v2daten "EigDiaLS.2Antworten"[0]

# Wenn die letzte Antwort erreicht wurde, wird im Markierer die neue ID abgespeichert.
$execute if score VarDiaLS.2Antwort PZDiaLS.2Reden < VarDiaLS.2Antworten PZDiaLS.2Reden store result entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].Antwort int 1 run data get storage dialog-system:v2daten "EigDiaLS.2Antworten"[0].ZurID

# Wenn noch nicht die letzte Antwort erreicht wurde, wird diese Funktion erneut selbst aufgerufen.
scoreboard players add VarDiaLS.2Antwort PZDiaLS.2Reden 1
$execute if score VarDiaLS.2Antwort PZDiaLS.2Reden < VarDiaLS.2Antworten PZDiaLS.2Reden run function dialog-system:v2nachrichten with entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}]
