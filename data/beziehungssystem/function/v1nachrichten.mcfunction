# Dem Spieler wird pro Durchlauf dieser Funktion eine Antwort-Möglichkeit als Schaltfläche im Chat angeboten.
$tellraw @p[tag=EtiBeziehS.1Spieler] ["",{text:"[",color:"gray",bold:true},{entity:"@s",nbt:'data."EigBeziehS.1Antworten"[0].Text',color:"yellow",interpret:true,bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für die Antwort ID:$(Antwort)"} },click_event:{action:"run_command",command:"/trigger PZBeziehS.1Antwort set $(Antwort)"} },{text:"]",color:"gray",bold:true}]

# Die erste Antwort wird aus der Datenspeicher-Liste entfernt, sodass die dahinter liegende eins aufrückt.
data remove entity @s data."EigBeziehS.1Antworten"[0]

# Wenn die letzte Antwort erreicht wurde, wird im Markierer die neue ID abgespeichert.
$execute if score VarBeziehS.1Antwort PZBeziehS.1Reden < VarBeziehS.1Antworten PZBeziehS.1Reden store result entity @s data."EigBeziehS.1Spieler"[{UUID:$(UUID)}].Antwort int 1 run data get entity @s data."EigBeziehS.1Antworten"[0].ZurID

# Wenn noch nicht die letzte Antwort erreicht wurde, wird diese Funktion erneut selbst aufgerufen.
scoreboard players add VarBeziehS.1Antwort PZBeziehS.1Reden 1
$execute if score VarBeziehS.1Antwort PZBeziehS.1Reden < VarBeziehS.1Antworten PZBeziehS.1Reden run function dialog-system:v2nachrichten with entity @s data."EigBeziehS.1Spieler"[{UUID:$(UUID)}]
