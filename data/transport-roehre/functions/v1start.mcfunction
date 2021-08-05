
scoreboard objectives add PZTranPR.1Ausl trigger ["Transport-Röhre.1: ",{"text":"Auslöser für Nachrichten","bold":true}]

scoreboard players set VarTranPR.1Laenge PZTranPR.1Ausl 4

give @a[distance=..15] minecraft:armor_stand{EigTranPR.1Alle:true,display:{Name:'{"text":"Rohreingang","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um einen Kanal zu erzeugen."']},EntityTag:{Small:true,Marker:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Rohreingang","color":"gold","bold":true}',Tags:["EtiTranPR.1Alle","EtiTranPR.1Bauwerk","EtiTranPR.1Rohreingang"] } } 16

give @a[distance=..15] minecraft:armor_stand{EigTranPR.1Alle:true,EigTranPR.1Roehre:true,display:{Name:'{"text":"Röhre","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um einen Kanal zu erzeugen."']},EntityTag:{Small:true,Marker:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Röhre","color":"gold","bold":true}',Tags:["EtiTranPR.1Alle","EtiTranPR.1Bauwerk","EtiTranPR.1Roehre"] } } 16

# Der Rüstungsständer für eine Kanalkreuzung wird gegeben.
give @a[distance=..15] minecraft:armor_stand{EigTranPR.1Alle:true,display:{Name:'{"text":"Röhrenkreuzung","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Kanalkreuzung zu erzeugen."']},EntityTag:{Small:true,Marker:true,NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:'{"text":"Röhrenkreuzung","color":"gold","bold":true}',Tags:["EtiTranPR.1Alle","EtiTranPR.1Bauwerk","EtiTranPR.1Roehrenkreuzung"] } } 16

forceload add ~ ~
