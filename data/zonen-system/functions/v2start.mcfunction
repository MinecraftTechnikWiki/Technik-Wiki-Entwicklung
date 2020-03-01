# Punktestand-Ziele werden erstellt
scoreboard objectives add PZZone.2Lang dummy {"text":"Zonen-System.2: Länge"}
scoreboard objectives add PZZone.2Breit dummy {"text":"Zonen-System.2: Breite"}
scoreboard objectives add PZZone.2Nr dummy {"text":"Zonen-System.2: Spielernummer"}
scoreboard objectives add PZZone.2ZonenNr dummy {"text":"Zonen-System.2: Zonenanzahlsnummer"}
scoreboard objectives add PZZone.2Nachr minecraft.dropped:minecraft.chest {"text":"Zonen-System.2: Truhe geworfen"}
scoreboard objectives add PZZone.2Eing trigger {"text":"Zonen-System.2: Zonenoption angeklickt"}
scoreboard objectives add PZZone.2Schl minecraft.custom:minecraft.sneak_time ["Zonen-System.2: ",{"text":"Schleichzeit","bold":true}]

# Der Spielmodus wird auf Überleben gesetzt
gamemode survival @a[distance=..15,gamemode=!survival]

# Spieler die von dem System betroffen sein sollen, erhalten ein Etikett
tag @a[distance=..15] add EtiZone.2Spieler

# Gibt dem Spieler die Truhen, mit denen er die Zone erstellen kann
give @a[distance=..15] minecraft:chest{zonen-system:"v2gegenstand",display:{Lore:['"Wirf die Truhe mit Q"','"auf den Boden"','"um die Zonenoptionen"','"zu erhalten"'] } } 10

tellraw @a[distance=..15] ["Zonen-System.2: ",{"text":"Test","bold":true}]

effect give @a[distance=..30,scores={PVPZone=..1}] minecraft:mining_fatigue 1 0
effect give @a[distance=..30,scores={PVPZone=..1}] minecraft:regeneration 1 0
effect give @a[distance=..30,scores={PVPZone=..1}] minecraft:weakness 1 0
gamemode survival @a[distance=..30,scores={PVPZone=..0}]
scoreboard players set @a[distance=..30,scores={PVPZone=..0}] PVPZone 1
scoreboard players set @a[distance=..30,scores={SaveZone=1..}] SaveZone 0
execute if entity @a[distance=..10,scores={PVPZone=..0}]
tellraw @a[distance=..30,scores={PVPZone=..0}] ["",{"text":"Warnung!","color":"red"},{"text":" Du bist nicht in der PVPZone!"}]
