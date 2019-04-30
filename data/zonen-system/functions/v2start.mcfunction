# Punktestand-Ziele werden erstellt
scoreboard objectives add PZZone.2Lang dummy {"text":"Zonen-System.2: Länge"}
scoreboard objectives add PZZone.2Breit dummy {"text":"Zonen-System.2: Breite"}
scoreboard objectives add PZZone.2Nr dummy {"text":"Zonen-System.2: Spielernummer"}
scoreboard objectives add PZZone.2ZonenNr dummy {"text":"Zonen-System.2: Zonenanzahlsnummer"}
scoreboard objectives add PZZone.2Nachr minecraft.dropped:minecraft.chest {"text":"Zonen-System.2: Truhe geworfen"}
scoreboard objectives add PZZone.2Eing trigger {"text":"Zonen-System.2: Zonenoption angeklickt"}

# Der Spielmodus wird auf Überleben gesetzt
gamemode survival @s[gamemode=!survival]

# Spieler die von dem System betroffen sein sollen, erhalten ein Etikett
tag @s add EtiZone.2Spieler

# Gibt dem Spieler die Truhen, mit denen er die Zone erstellen kann
give @s minecraft:chest{display:{Name:"{\"text\":\"Zonen-System.2\"}",Lore:["Wirf die Truhe mit Q","auf den Boden","um die Zonenoptionen","zu erhalten"] } } 10
