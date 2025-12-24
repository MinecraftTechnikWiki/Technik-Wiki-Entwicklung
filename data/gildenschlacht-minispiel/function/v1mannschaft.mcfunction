# Die Anzahl der Spieler wird in zwei Variablen gespeichert und dann verrechnet.
execute store result score VarGildSMS.1Ungerade PZGildSMS.1Wert run scoreboard players operation VarGildSMS.1Aufteilung PZGildSMS.1Wert = VarGildSMS.1Wartende PZGildSMS.1Wert
scoreboard players operation VarGildSMS.1Aufteilung PZGildSMS.1Wert /= KonstGildSMS.1ZWEI PZGildSMS.1Wert
scoreboard players operation VarGildSMS.1Ungerade PZGildSMS.1Wert %= KonstGildSMS.1ZWEI PZGildSMS.1Wert

# Alle Spieler auf der Plattform bekommen eine Nummer für eine zufällige Reihenfolge.
scoreboard players set VarGildSMS.1Reihenfolge PZGildSMS.1Wert 0
execute as @a[tag=EtiGildSMS.1Spielen,sort=random] store result score @s PZGildSMS.1Wert run scoreboard players add VarGildSMS.1Reihenfolge PZGildSMS.1Wert 1

# Grundsätzlich werden alle Spieler in die erste Mannschaft gesteckt um anschließend die Hälfte davon in die zweite Mannschaft zu verschieben.
team join TMGildSMS.1Team1 @a[tag=EtiGildSMS.1Spielen]
execute as @a[team=TMGildSMS.1Team1] if score @s PZGildSMS.1Wert > VarGildSMS.1Aufteilung PZGildSMS.1Wert run team join TMGildSMS.1Team2 @s

# Falls die Anzahl der Spieler ungerade ist, wird eine Zufallszahl erzeugt, deren Wert bei null oder eins liegt. Falls der Zufallswert eins ist, wird ein zufälliger Spieler von der zweiten Mannschaft in die erste gesteckt.
execute if score VarGildSMS.1Ungerade PZGildSMS.1Wert matches 1 store result score VarGildSMS.1Zufallszahl PZGildSMS.1Wert run random value 0..1 mannschaftsverteiler:v1zufall
execute if score VarGildSMS.1Ungerade PZGildSMS.1Wert matches 1 if score VarGildSMS.1Zufallszahl PZGildSMS.1Wert matches 1 run team join TMGildSMS.1Team1 @r[team=TMGildSMS.1Team2]

# Ein zufälliger Spieler aus der Mannschaft die einen Spieler weniger hat, bekommt doppelt so viele Herzen.
execute if score VarGildSMS.1Ungerade PZGildSMS.1Wert matches 1 if score VarGildSMS.1Zufallszahl PZGildSMS.1Wert matches 0 run attribute @r[team=TMGildSMS.1Team1] minecraft:max_health base set 40
execute if score VarGildSMS.1Ungerade PZGildSMS.1Wert matches 1 if score VarGildSMS.1Zufallszahl PZGildSMS.1Wert matches 1 run attribute @r[team=TMGildSMS.1Team2] minecraft:max_health base set 40

# Spieler in den beiden Teams erhalten im Kopfslot einen farbenen Helm mit der Mannschaftsfarbe.
item replace entity @a[team=TMGildSMS.1Team1] armor.head with minecraft:leather_helmet[minecraft:enchantments={"minecraft:binding_curse":1},minecraft:tooltip_display={hidden_components:["minecraft:enchantments","minecraft:dyed_color"]},minecraft:custom_data={EigGildSMS.1Alle:true},minecraft:dyed_color=16711680]
item replace entity @a[team=TMGildSMS.1Team2] armor.head with minecraft:leather_helmet[minecraft:enchantments={"minecraft:binding_curse":1},minecraft:tooltip_display={hidden_components:["minecraft:enchantments","minecraft:dyed_color"]},minecraft:custom_data={EigGildSMS.1Alle:true},minecraft:dyed_color=255]

# Die Spieler erhalten in ihrer Farbe eine Titelnachricht und eine Aufzählung aller Mannschaftskameraden.
title @a[team=TMGildSMS.1Team1] title ["",{text:"Rote Gilde!",color:"red",bold:true}]
tellraw @a[team=TMGildSMS.1Team1] ["Gildenschlacht-Minispiel.1:\n",{storage:"gildenschlacht-minispiel:v1daten",nbt:'"EigGildSMS.1Name"',interpret:true},{text:"Deine Gilde besteht aus ",color:"red",bold:true},{selector:"@a[team=TMGildSMS.1Team1]",bold:true}]

title @a[team=TMGildSMS.1Team2] title ["",{text:"Blaue Gilde!",color:"blue",bold:true}]
tellraw @a[team=TMGildSMS.1Team2] ["Gildenschlacht-Minispiel.1:\n",{storage:"gildenschlacht-minispiel:v1daten",nbt:'"EigGildSMS.1Name"',interpret:true},{text:"Deine Gilde besteht aus ",color:"blue",bold:true},{selector:"@a[team=TMGildSMS.1Team2]",bold:true}]
