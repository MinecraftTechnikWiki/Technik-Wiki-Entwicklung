
# Der Wert für die aktuelle Nachricht wird aktualisiert und die Gesamt-Anzahl der Nachrichten wird aus dem Markierer ausgelesen
scoreboard players add VarBeziehS.1Nachricht PZBeziehS.1Reden 1
###
$execute store result score VarBeziehS.1Nachrichten PZBeziehS.1Reden run data get entity @s data."EigBeziehS.1Nachrichten"[{ID:$(ID)}].Rede

# Von dem Dorfbewohner aus wird die Chat-Nachricht ausgesendet.
$tellraw @p[tag=EtiBeziehS.1Spieler] ["Dialog-System.2:\n",{text:"[",color:"gray"},{score:{name:"VarBeziehS.1Nachricht",objective:"PZBeziehS.1Reden"},color:"gray"},{text:"/",color:"gray"},{score:{name:"VarBeziehS.1Nachrichten",objective:"PZBeziehS.1Reden"},color:"gray"},{text:"]",color:"gray"},{text:" «",color:"gold",bold:true},{entity:"@s",nbt:"CustomName",color:"white",interpret:true},{text:"» ",color:"gold",bold:true},{entity:"@s",nbt:'data."EigBeziehS.1Nachrichten"[{ID:$(ID)}].Rede[$(Nachricht)]',color:"yellow",interpret:true}]

# Die Gesamt-Anzahl der Nachrichten wird um eins reduziert um sie danach mit der aktuellen Nachricht besser vergleichen zu können.
scoreboard players remove VarBeziehS.1Nachrichten PZBeziehS.1Reden 1

# Wenn die letzte Nachricht dran war, werden die Antworten in den Datenspeicher geladen.
$execute if score VarBeziehS.1Nachricht PZBeziehS.1Reden > VarBeziehS.1Nachrichten PZBeziehS.1Reden run data modify entity @s data."EigBeziehS.1Antworten" set from entity @s data."EigBeziehS.1Nachrichten"[{ID:$(ID)}].Antworten

# Die Antworten werden in den Markierer gespeichert.
$data modify entity @s data."EigBeziehS.1Spieler"[{UUID:$(UUID)}].Antworten set from entity @s data."EigBeziehS.1Antworten"

# Die Antwort-Variable beginnt bei null und wird später verwendet um bis zu dem Wert von der Antworten-Variablen zu laufen.
scoreboard players set VarBeziehS.1Antwort PZBeziehS.1Reden 0
execute store result score VarBeziehS.1Antworten PZBeziehS.1Reden run data get entity @s data."EigBeziehS.1Antworten"

# Wenn die letzte Nachricht ausgesendet wurde, wird bereits die ID der neuen Nachricht in den Markierer kopiert.
$execute if score VarBeziehS.1Nachricht PZBeziehS.1Reden > VarBeziehS.1Nachrichten PZBeziehS.1Reden store result entity @s data."EigBeziehS.1Spieler"[{UUID:$(UUID)}].Antwort int 1 run data get entity @s data."EigBeziehS.1Antworten"[0].ZurID

# Nur wenn die letzte Nachricht ausgesendet wurde, wird die Nachrichten-Funktion geladen.
$execute if score VarBeziehS.1Nachricht PZBeziehS.1Reden > VarBeziehS.1Nachrichten PZBeziehS.1Reden run function dialog-system:v2nachrichten with entity @s data."EigBeziehS.1Spieler"[{UUID:$(UUID)}]

# Wenn die letzte Nachricht gesendet wurde, wird der Wert der Nachricht wieder auf null zurück gesetzt.
execute if score VarBeziehS.1Nachricht PZBeziehS.1Reden > VarBeziehS.1Nachrichten PZBeziehS.1Reden run scoreboard players set VarBeziehS.1Nachricht PZBeziehS.1Reden 0

# Der geänderte Wert der Variable wird in den Markierer gespeichert.
$execute store result entity @s data."EigBeziehS.1Spieler"[{UUID:$(UUID)}].Nachricht int 1 run scoreboard players get VarBeziehS.1Nachricht PZBeziehS.1Reden
