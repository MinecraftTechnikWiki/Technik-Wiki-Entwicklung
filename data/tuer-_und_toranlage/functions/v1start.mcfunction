# Das Auslöser-Punktestand-Ziel wird erstellt.
scoreboard objectives add PZTuTor.1Tor dummy ["Tür- und Toranlage.1: ",{"text":"Wert wie weit Tor offen ist","bold":true}]
scoreboard objectives add PZTuTor.1Zeit dummy ["Tür- und Toranlage.1: ",{"text":"Zeit in Ticks","bold":true}]
#scoreboard objectives add PZTuTor.1BeimTor dummy ["Tür- und Toranlage.1: ",{"text":"Spieler beim Tor","bold":true}]

# Die Variablen werden mit den entsprechenden Werten gesetzt.
scoreboard players set KonstTuTor.1ZWANZIG PZTuTor.1Tor 20
scoreboard players set VarTuTor.1Ergebnis PZTuTor.1Tor 0

give @a[distance=..15] minecraft:armor_stand{tuer-_und_toranlage:"v1gegenstand",Enchantments:[{id:-1}],display:{Name:'{"text":"Tor"}',Lore:['"Platziere den Rüstungsständer"','"um das Tor zu erstellen"']},EntityTag:{Small:true,Marker:true,Invisible:true,NoGravity:true,Tags:["EtiTuTor.1Alle","EtiTuTor.1Erstellen"]} } 16
