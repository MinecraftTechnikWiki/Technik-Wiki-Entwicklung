# Zwei Punkte-Ziele werden erstellt.
#scoreboard objectives add PZLagerM.1Stapel dummy ["Lagermaschine.1: ",{"text":"Droppen","bold":true}]
scoreboard objectives add PZLagerM.1Ausl trigger ["Lagermaschine.1: ",{"text":"Auslöser","bold":true}]

# Ein Datenspeicher wird angelegt.
data merge storage lagermaschine:v1daten {EigLagerM.1Lager:[],EigLagerM.1Vergleich:""}

# Spieler im Umkreis von 15 Blöcken, erhalten einen verzauberten Stock.
give @a[distance=..15] minecraft:stick{EigLagerM.1Alle:true,EigLagerM.1Lager:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Lager","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock"','"in der Zweithand aus"','"um Gegenstände ins Lager"','"aufzufüllen oder zu leeren."'] } }

# Eine Anleitung in Form einer Nachricht an die Spieler.
tellraw @a[distance=..15] ["Lagermaschine.1:\n",{"text":"Wähle den Stock aus und rechtsklicke in die Güterlore um das Menü zu öffnen. Dann wähle einen Gegenstand aus dem Inventar und legen ihn in den Slot über der Truhe und klicke auf die Truhe um den Gegenstand einzulagern.","bold":true}]
