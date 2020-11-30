# Zwei Punkte-Ziele werden erstellt.
scoreboard objectives add PZLagerM.1Stapel dummy ["Lagermaschine.1: ",{"text":"Droppen","bold":true}]
scoreboard objectives add PZLagerM.1Ausl trigger ["Lagermaschine.1: ",{"text":"Auslöser","bold":true}]

# Ein NBT-Speicher wird angelegt.
data merge storage lagermaschine:v1daten {EigLagerM.1Lager:[]}

# Spieler im Umkreis von 15 Blöcken, erhalten einen verzauberten Stock.
give @a[distance=..15] minecraft:stick{EigLagerM.1Alle:true,EigLagerM.1Lager:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Lager","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock"','"in der Zweithand aus"','"um Gegenstände ins Lager"','"aufzufüllen oder zu leeren."'] } }

# Eine Anleitung in Form einer Nachricht an die Spieler.
tellraw @a[distance=..15] ["Lagermaschine.1:\n",{"text":"Wähle den Stock aus und drücke F um ihn in die Zweithand zu holen. Dann wähle einen Gegenstand in der Schnellleiste aus, um weitere Optionen durchführen zu können.","bold":true}]
