# Punktestand-Ziele werden erstellt
scoreboard objectives add PZHungS.1GlEss dummy ["Hungerpunkte-System.1: ",{"text":"Gleiches Essen","bold":true}]

scoreboard objectives add PZHungS.1Apfel minecraft.used:minecraft.apple ["Hungerpunkte-System.1: ",{"text":"Apfel essen","bold":true}]
scoreboard objectives add PZHungS.1GeSchfl minecraft.used:minecraft.cooked_porkchop ["Hungerpunkte-System.1 :",{"text":"Gebratenes Schweinefleisch essen","bold":true}]
scoreboard objectives add PZHungS.1Brot minecraft.used:minecraft.bread ["Hungerpunkte-System.1: ",{"text":"Brot essen","bold":true}]
scoreboard objectives add PZHungS.1GeKabj minecraft.used:minecraft.cooked_cod ["Hungerpunkte-System.1: ",{"text":"Gebratener Kabeljau essen","bold":true}]

# Der Spieler wird in den Überlebensmodus gesetzt
gamemode survival @a[distance=..15,gamemode=!survival]

# Der Spieler bekommt den Hunger-Effekt, damit er die Nahrung sofort essen kann
effect give @a[distance=..15] minecraft:hunger 6 255 true

# Dem Spieler werden verschiedene Nahrungsmittel gegeben, die er essen kann
give @a[distance=..15] minecraft:apple{hungerpunkte-system:"v1gegenstand",display:{Lore:['"Iss mich"']} } 64
give @a[distance=..15] minecraft:cooked_porkchop{hungerpunkte-system:"v1gegenstand",display:{Lore:['"Iss mich"']} } 64
give @a[distance=..15] minecraft:bread{hungerpunkte-system:"v1gegenstand",display:{Lore:['"Iss mich"']} } 64
give @a[distance=..15] minecraft:cooked_cod{hungerpunkte-system:"v1gegenstand",display:{Lore:['"Iss mich"']} } 64

# Eine Nachricht mit Anleitung für den Spieler
tellraw @a[distance=..15] ["Hungerpunkte-System.1: ",{"text":"Iss verschiedene Nahrungsmittel, damit dein Nahrungshaushalt abwechselungsreich bleibt, isst du dagegen immer nur das gleiche, so schadest du dir nach einiger Zeit selbst.","bold":true}]
