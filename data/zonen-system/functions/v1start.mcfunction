# Punktestand-Ziele werden erstellt
scoreboard objectives add PZZone.1Nr dummy {"text":"Zonen-System.1: Spielernummer"}
scoreboard objectives add PZZone.1ZonenNr dummy {"text":"Zonen-System.1: Zonennummer"}
scoreboard objectives add PZZone.1Truhe minecraft.dropped:minecraft.chest {"text":"Zonen-System.1: Truhe geworfen"}
scoreboard objectives add PZZone.1Eing trigger {"text":"Zonen-System.1: Zonenoption angeklickt"}

# Der Spielmodus wird auf Überleben gesetzt
gamemode survival @s[gamemode=!survival]

# Spieler die von dem System betroffen sein sollen, erhalten ein Etikett
tag @s add EtiZone.1Spieler

# Gibt dem Spieler die Truhen, mit denen er die Zone erstellen kann
give @s minecraft:chest{display:{Name:"{\"text\":\"Zonen-System.1\"}",Lore:["Wirf die Truhe mit Q","auf den Boden","um die Zonenoptionen","zu erhalten"] } } 10
