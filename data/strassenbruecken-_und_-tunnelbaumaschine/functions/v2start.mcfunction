# Es werden drei Punkte-Ziele erstellt, mit denen man das Schleichen oder das Auslösen erfassen und Werte speichern kann.
scoreboard objectives add PZStrBTBM.2Schl minecraft.custom:minecraft.sneak_time ["Kanalbrücken- und -tunnelbaumaschine.2: ",{"text":"Schleich-Zeit","bold":true}]
scoreboard objectives add PZStrBTBM.2Ausl trigger ["Kanalbrücken- und -tunnelbaumaschine.2: ",{"text":"Auslöser für Nachrichten","bold":true}]
scoreboard objectives add PZStrBTBM.2Laen dummy ["Kanalbrücken- und -tunnelbaumaschine.2: ",{"text":"Kanal-Länge","bold":true}]

# Es wird eine globale Variable angelegt, die jeder Spieler später ändern kann.
scoreboard players set VarStrBTBM.2Laenge PZStrBTBM.2Laen 64
scoreboard players set VarStrBTBM.2Spur PZStrBTBM.2Laen 1

# Spielern im Umkreis von 15 Blöcken erhalten eine Angel, die man halten muss, um einen Kanal erzeugen zu können.
give @a[distance=..15] minecraft:fishing_rod{EigStrBTBM.2Angel:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Kanalbrücken- und -tunnelbaumaschine"}',Lore:['"Wähle die Angel aus"','"und schleiche eine Zeit lang"','"um die Kanallänge festzulegen,"','"sobald du los lässt wird der Kanal gebaut."'] } }

# Eine kurze Anleitung, wie die Kanalbrücken- und -tunnelbaumaschine aktiviert werden kann.
tellraw @a[distance=..15] ["Kanalbrücken- und -tunnelbaumaschine.2: ",{"text":"Wähle die Angel aus um den Kanaltyp einzustellen und schleiche und lasse dann los, wenn die gewünschte Länge erreicht wird. Breche den Kanalbau beim schleichen ab, in dem der Köder geworfen wird.","bold":true}]

# Der Chunk in dem die Technik steht wird dauerhaft geladen.
forceload add ~ ~
