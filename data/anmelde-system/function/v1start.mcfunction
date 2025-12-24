
scoreboard objectives add PZAnmlS.1Nr dummy ["Anmelde-System.1: ",{text:"Nummern der Spieler",bold:true}]
scoreboard objectives add PZAnmlS.1Ausl trigger ["Anmelde-System.1: ",{text:"Auslöser",bold:true}]
scoreboard objectives add PZAnmlS.1Spieler dummy ["Anmelde-System.1: ",{text:"Nummer eines anderen Spielers",bold:true}]

data merge storage anmelde-system:v1daten {EigAnmlS.1Benutzer:[]}

give @a[distance=..15] minecraft:writable_book[minecraft:custom_data={EigAnmlS.1Alle:true,EigAnmlS.1Buch:true}]




execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigAnmlS.1Buch:true}] run tag @s add EtiAnmlS.1Ausgewaehlt

# Wenn das Buch ausgewählt ist und sie ins Buch etwas geschrieben haben, wird die Längen-Funktion aufgerufen.
execute as @a[tag=EtiAnmlS.1Ausgewaehlt] if data entity @s SelectedItem.components.minecraft:writable_book_content.pages run function anmelde-system:v1laenge

# Wenn Spieler das Buch gerade auswählen, wird ihnen noch eine Nachricht geschickt.
tellraw @a[tag=EtiAnmlS.1Ausgewaehlt,tag=!EtiAnmlS.1Auswahl] ["Anmelde-System.1:\n",{text:"Öffne das Buch und tippe in ihm einen Benutzernamen ein. Achte darauf dass der Benutzername mindestens 3 Zeichen lang sein.",color:"yellow",bold:true}]

# Es wird ein Etikett gegeben oder genommen, je nach dem ob man gerade das Buch ausgewählt hat, oder nicht.
tag @a[tag=EtiAnmlS.1Ausgewaehlt,tag=!EtiAnmlS.1Auswahl] add EtiAnmlS.1Auswahl
tag @a[tag=!EtiAnmlS.1Ausgewaehlt,tag=EtiAnmlS.1Auswahl] remove EtiAnmlS.1Auswahl

# Das Etikett wird wieder entfernt.
tag @a[tag=EtiAnmlS.1Ausgewaehlt] remove EtiAnmlS.1Ausgewaehlt





execute store result score VarAnmlS.1Laenge PZAnmlS.1Nr run data get entity @s SelectedItem.components.minecraft:writable_book_content.pages[0].raw

execute if score VarAnmlS.1Laenge PZAnmlS.1Nr matches 1..2 run tellraw @s ["Anmelde-System.1:\n",{text:"Bitte tippe den Benutzernamen mit mindestens 3 Zeichen ein. Der eingetippter Benutzername besteht nur aus ",color:"red",bold:true},{score:{name:"VarAnmlS.1Laenge",objective:"PZAnmlS.1Nr"},color:"dark_purple",bold:true},{text:" Zeichen und sieht aktuell so aus: ",color:"red",bold:true},{entity:"@s",nbt:"SelectedItem.components.minecraft:writable_book_content.pages[0].raw",bold:true}]


execute if score VarAnmlS.1Laenge PZAnmlS.1Nr matches 8.. run tag @s add EtiAnmlS.1LaengeStimmt
execute if score VarAnmlS.1Laenge PZAnmlS.1Nr matches 8.. run data modify storage anmelde-system:v1daten "EigAnmlS.1Anmelden" set from entity @s SelectedItem.components.minecraft:writable_book_content.pages[0].raw
execute if score VarAnmlS.1Laenge PZAnmlS.1Nr matches 8.. if entity @s[tag=!EtiAnmlS.1Passwort] run function passwort-system:v1zeichen










data modify storage anmelde-system:v1daten "EigAnmlS.1Kennung" set from storage anmelde-system:v1daten "EigAnmlS.1Anmelden"

# Beim Prüfen, ob das Zeichen im Passwort enthalten ist, wird dieses durch ein Zeichen aus der Zeichenliste ersetzt. Falls es das gleiche Zeichen war, schlägt dieser Vorgang fehl.
execute store success score VarAnmlS.1ZeichenUngleich PZAnmlS.1Nr run data modify storage anmelde-system:v1daten "EigAnmlS.1Kennung" set from storage anmelde-system:v1daten "EigAnmlS.1Benutzer"[0]."EigAnmlS.1Name"
data remove storage anmelde-system:v1daten "EigAnmlS.1Benutzer"[0]

# Beim Prüfen, ob das Zeichen im Passwort enthalten ist, wird dieses durch ein Zeichen aus der Zeichenliste ersetzt. Falls es das gleiche Zeichen war, schlägt dieser Vorgang fehl.
execute store success score VarAnmlS.1ZeichenUngleich PZAnmlS.1Nr run data modify storage anmelde-system:v1daten "EigAnmlS.1Kennung" set from storage anmelde-system:v1daten "EigAnmlS.1Benutzer"[0]."EigAnmlS.1Passwort"
data remove storage anmelde-system:v1daten "EigAnmlS.1Benutzer"[0]

# Wenn das Zeichen enthalten ist, dann wird die Variable auf eins gesetzt.
execute if score VarAnmlS.1ZeichenUngleich PZAnmlS.1Nr matches 0 run scoreboard players set VarAnmlS.1Zeichen PZAnmlS.1Nr 1

# Wenn das Zeichen noch nicht gefunden wurde und die Funktion noch nicht ans Ende angekommen ist, wird die Funktion erneut aufgerufen.
scoreboard players remove VarAnmlS.1Liste PZAnmlS.1Nr 1
execute if score VarAnmlS.1ZeichenUngleich PZAnmlS.1Nr matches 1 if score VarAnmlS.1Liste PZAnmlS.1Nr matches 1.. run function anmelde-system:v1zeichenliste






scoreboard objectives remove PZAnmlS.1Nr
scoreboard objectives remove PZAnmlS.1Ausl
scoreboard objectives remove PZAnmlS.1Spieler

data remove storage anmelde-system:v1daten "EigAnmlS.1Benutzer"

clear @a writable_book[minecraft:custom_data~{EigAnmlS.1Alle:true}]

tag @a[tag=EtiAnmlS.1Auswahl] remove EtiAnmlS.1Auswahl
