
# Der Wert für die aktuelle Nachricht wird aktualisiert und die Gesamt-Anzahl der Nachrichten wird aus dem Markierer ausgelesen.
scoreboard players add VarDiaLS.2Nachricht PZDiaLS.2Reden 1
$execute store result score VarDiaLS.2Nachrichten PZDiaLS.2Reden run data get entity @s data."EigDiaLS.2Nachrichten"[{ID:$(ID)}].Rede

# Von dem Dorfbewohner aus wird die Chat-Nachricht ausgesendet.
$execute on vehicle on vehicle run tellraw @p[tag=EtiDiaLS.2Spieler] ["Dialog-System.2:\n",{text:"[",color:"gray"},{score:{name:"VarDiaLS.2Nachricht",objective:"PZDiaLS.2Reden"},color:"gray"},{text:"/",color:"gray"},{score:{name:"VarDiaLS.2Nachrichten",objective:"PZDiaLS.2Reden"},color:"gray"},{text:"]",color:"gray"},{text:" «",color:"gold",bold:true},{entity:"@s",nbt:"CustomName",color:"white",interpret:true},{text:"» ",color:"gold",bold:true},{storage:"dialog-system:v2daten",nbt:'"EigDiaLS.2Nachrichten"[{ID:$(ID)}].Rede[$(Nachricht)]',color:"yellow",interpret:true}]

# Die Gesamt-Anzahl der Nachrichten wird um eins reduziert um sie danach mit der aktuellen Nachricht besser vergleichen zu können.
scoreboard players remove VarDiaLS.2Nachrichten PZDiaLS.2Reden 1

# Wenn die letzte Nachricht dran war, werden die Antworten in den Datenspeicher geladen.
$execute if score VarDiaLS.2Nachricht PZDiaLS.2Reden > VarDiaLS.2Nachrichten PZDiaLS.2Reden run data modify storage dialog-system:v2daten "EigDiaLS.2Antworten" set from entity @s data."EigDiaLS.2Nachrichten"[{ID:$(ID)}].Antworten

# Die Antworten werden in den Markierer gespeichert.
$data modify entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].Antworten set from storage dialog-system:v2daten "EigDiaLS.2Antworten"

# Die Antwort-Variable beginnt bei null und wird in der Nachrichten-Funktion verwendet um bis zu dem Wert von der Antworten-Variablen zu laufen.
scoreboard players set VarDiaLS.2Antwort PZDiaLS.2Reden 0
execute store result score VarDiaLS.2Antworten PZDiaLS.2Reden run data get storage dialog-system:v2daten "EigDiaLS.2Antworten"

# Wenn die letzte Nachricht ausgesendet wurde, wird bereits die ID der neuen Nachricht in den Markierer kopiert.
$execute if score VarDiaLS.2Nachricht PZDiaLS.2Reden > VarDiaLS.2Nachrichten PZDiaLS.2Reden store result entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].Antwort int 1 run data get storage dialog-system:v2daten "EigDiaLS.2Antworten"[0].ZurID

# Nur wenn die letzte Nachricht ausgesendet wurde, wird die Nachrichten-Funktion geladen.
$execute if score VarDiaLS.2Nachricht PZDiaLS.2Reden > VarDiaLS.2Nachrichten PZDiaLS.2Reden run function dialog-system:v2nachrichten with entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}]

# Wenn die letzte Nachricht gesendet wurde, wird der Wert der Nachricht wieder auf null zurück gesetzt.
execute if score VarDiaLS.2Nachricht PZDiaLS.2Reden > VarDiaLS.2Nachrichten PZDiaLS.2Reden run scoreboard players set VarDiaLS.2Nachricht PZDiaLS.2Reden 0

# Der geänderte Wert der Variable wird in den Markierer gespeichert.
$execute store result entity @s data."EigDiaLS.2Spieler"[{UUID:$(UUID)}].Nachricht int 1 run scoreboard players get VarDiaLS.2Nachricht PZDiaLS.2Reden
