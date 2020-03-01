
scoreboard objectives add PZTuTor.4Tor dummy ["Tür- und Toranlage.1: ",{"text":"Wert wie weit Tor offen ist","bold":true}]
scoreboard objectives add PZTuTor.4Zeit dummy ["Tür- und Toranlage.1: ",{"text":"Zeit in Ticks","bold":true}]

scoreboard players set KonstTuTor.4ZWANZIG PZTuTor.4Tor 20
scoreboard players set VarTuTor.4Ergebnis PZTuTor.4Tor 0

give @a[distance=..15] minecraft:armor_stand{tuer-_und_toranlage:"v4gegenstand",Enchantments:[{id:-1}],display:{Name:'{"text":"Tor"}',Lore:['"Platziere den Rüstungsständer"','"um das Tor zu erstellen"']},EntityTag:{Small:true,Marker:true,Invisible:true,NoGravity:true,Tags:["EtiTuTor.4Alle","EtiTuTor.4Erstellen"]} } 16
