# Das Punktestand-Ziel für den Auslöser wird hinzugefügt, damit der Spieler auf Textnachrichten klicken kann
scoreboard objectives add PZTeleP.3Nr trigger ["Teleporter.3: ",{"text":"Portalnummer","bold":true}]

# Ein Rüstungsständer mit der Funktion Teleporter zu erschaffen beim Platzieren, wird dem Spieler gegeben
give @a[distance=..15] minecraft:armor_stand{teleporter:"v3gegenstand",Enchantments:[{id:-1}],display:{Name:'{"text":"Teleporter","color":"dark_purple","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um einen Teleporter zu bauen"','"und um zwischen"','"diesen zu wechseln"']},EntityTag:{NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Teleporter","color":"dark_purple","bold":true}',Tags:["EtiTeleP.3Alle","EtiTeleP.3Teleporter"]} } 16

# Die Meldungen vom Auslöser werden ausgeschaltet
gamerule sendCommandFeedback false

# Eine Nachricht mit Anleitung für den Spieler
tellraw @a[distance=..15] ["Teleporter.3: ",{"text":"Platziere mindestens zwei Teleporter um zwischen beiden wechseln zu können. Um einen Teleporter wieder entfernen zu können, wirf einen Teleporter als Gegenstand auf einen platzierten und du erhälst beide als Drop zurück","bold":true}]
