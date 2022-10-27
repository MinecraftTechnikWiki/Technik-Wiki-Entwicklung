# Es werden drei Punkte-Ziele erstellt, mit denen man das Schleichen oder das Auslösen erfassen und Werte speichern kann.
scoreboard objectives add PZStraBM.2Schl minecraft.custom:minecraft.sneak_time ["Straßenbaumaschine.2: ",{"text":"Schleich-Zeit","bold":true}]
scoreboard objectives add PZStraBM.2Ausl trigger ["Straßenbaumaschine.2: ",{"text":"Auslöser für Nachrichten","bold":true}]
scoreboard objectives add PZStraBM.2Laen dummy ["Straßenbaumaschine.2: ",{"text":"Spuren und Länge","bold":true}]

# Es wird eine globale Variable angelegt, die jeder Spieler später ändern kann.
scoreboard players set VarStraBM.2Spuren PZStraBM.2Laen 1
scoreboard players set VarStraBM.2Laenge PZStraBM.2Laen 64

# Spielern im Umkreis von 15 Blöcken erhalten eine Angel, die man halten muss, um eine Straße erzeugen zu können.
give @a[distance=..15] minecraft:fishing_rod{EigStraBM.2Angel:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Straßenbaumaschine","bold":true}',Lore:['"Wähle die Angel aus"','"und schleiche eine Zeit lang"','"um die Kanallänge festzulegen,"','"sobald du los lässt wird der Kanal gebaut."'] } }

# Eine kurze Anleitung, wie die Straßenbaumaschine aktiviert werden kann.
tellraw @a[distance=..15] ["Straßenbaumaschine.2:\n",{"text":"Wähle die Angel aus um den Kanaltyp einzustellen und schleiche und lasse dann los, wenn die gewünschte Länge erreicht wird. Breche den Kanalbau beim Schleichen ab, in dem der Köder geworfen wird.","bold":true}]

# Der Chunk in dem die Technik steht wird dauerhaft geladen.
forceload add ~ ~
