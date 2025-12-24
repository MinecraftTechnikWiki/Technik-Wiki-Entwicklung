# Es wird im Chat angezeigt, welche Antwort der Spieler angetippt hat.
tellraw @s[scores={PZDiaLS.1Antwort=1}] ["Dialog-System.1:\n",{text:"Du hast mit ",color:"gray"},{text:"[Ja]",color:"green",bold:true},{text:" geantwortet.",color:"gray"}]
tellraw @s[scores={PZDiaLS.1Antwort=2}] ["Dialog-System.1:\n",{text:"Du hast mit ",color:"gray"},{text:"[Nein]",color:"red",bold:true},{text:" geantwortet.",color:"gray"}]

# Das Interaktionsobjekt bekommt den Spieler als Interagierer, damit der Dorfbewohner weiter redet.
$data modify entity @n[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.1Reden] interaction set value {player:$(UUID),timestamp:0L}

# Es wird ausgelesen bei welcher Nachricht der Spieler gerade ist.
$execute as @n[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.1Reden] on passengers store result score VarDiaLS.1Nachricht PZDiaLS.1Reden run data get entity @s data."EigDiaLS.1Spieler"[{UUID:$(UUID)}].Nachricht

# Es wird ausgelesen wie viele Nachrichten der Dorfbewohner reden kann.
execute as @n[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.1Reden] on passengers store result score VarDiaLS.1Nachrichten PZDiaLS.1Reden run data get entity @s data."EigDiaLS.1Nachrichten"
scoreboard players remove VarDiaLS.1Nachrichten PZDiaLS.1Reden 1

# Im Binärbeum für Ja-Knoten ist es (aktuelle Nachtricht * 2) + 1, für Nein-Knoten ist es (aktuelle Nachricht + 1) *2
execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden <= VarDiaLS.1Nachrichten PZDiaLS.1Reden if entity @s[scores={PZDiaLS.1Antwort=2}] run scoreboard players add VarDiaLS.1Nachricht PZDiaLS.1Reden 1
execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden <= VarDiaLS.1Nachrichten PZDiaLS.1Reden run scoreboard players operation VarDiaLS.1Nachricht PZDiaLS.1Reden *= KonstDiaLS.1ZWEI PZDiaLS.1Reden
execute if score VarDiaLS.1Nachricht PZDiaLS.1Reden <= VarDiaLS.1Nachrichten PZDiaLS.1Reden if entity @s[scores={PZDiaLS.1Antwort=1}] run scoreboard players add VarDiaLS.1Nachricht PZDiaLS.1Reden 1

# Der neue Nachricht-Wert wird in den Markierer des Dorfbewohners gespeichert
$execute as @n[distance=..5,type=minecraft:interaction,tag=EtiDiaLS.1Reden] on passengers store result entity @s data."EigDiaLS.1Spieler"[{UUID:$(UUID)}].Nachricht int 1 run scoreboard players get VarDiaLS.1Nachricht PZDiaLS.1Reden

# Damit der Spieler erneut auf die Ja- oder Nein-Schaltfläche klicken kann.
scoreboard players enable @s PZDiaLS.1Antwort
scoreboard players set @s PZDiaLS.1Antwort 0
