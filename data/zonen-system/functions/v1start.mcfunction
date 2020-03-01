# Punktestand-Ziele werden erstellt
scoreboard objectives add PZZone.1Nr dummy ["Zonen-System.1: ",{"text":"Spielernummer","bold":true}]
scoreboard objectives add PZZone.1ZonenNr dummy ["Zonen-System.1: ",{"text":"Zonennummer","bold":true}]
scoreboard objectives add PZZone.1Fass minecraft.dropped:minecraft.barrel ["Zonen-System.1: ",{"text":"Fass geworfen","bold":true}]
scoreboard objectives add PZZone.1Ausl trigger ["Zonen-System.1: ",{"text":"Zonenoption angeklickt","bold":true}]

# Der Spielmodus wird auf Überleben gesetzt
gamemode survival @a[distance=..15,gamemode=!survival]

# Gibt dem Spieler die Truhen, mit denen er die Zone erstellen kann
give @a[distance=..15] minecraft:stick{zonen-system:"v1gegenstand",display:{Lore:['"Wirf zuerst den Stock mit Q"','"und erst dann das Fass"'] } } 64
give @a[distance=..15] minecraft:barrel{zonen-system:"v1gegenstand",display:{Lore:['"Wirf das Fass mit Q"','"auf den Boden"','"um die Zonenoptionen"','"zu erhalten"'] } } 64

tellraw @a[distance=..15] ["Zonen-System.1: ",{"text":"Drücke E um in das Inventar zu gelangen und bewege die Maus über die Gegenstände um zu erfahren wie man sie benutzt um eine Zone zu errichten.","bold":true}]
