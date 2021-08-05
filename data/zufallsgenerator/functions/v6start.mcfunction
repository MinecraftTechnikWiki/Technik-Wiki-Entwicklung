# Zwei Punkte-Ziele werden erstellt.
scoreboard objectives add PZZufG.6Pos dummy ["Zufallsgenerator.6: ",{"text":"Feldposition","bold":true}]
scoreboard objectives add PZZufG.6Wert trigger ["Zufallsgenerator.6: ",{"text":"Wert der Variablen","bold":true}]

scoreboard players set KonstZufG.6HUNDERT PZZufG.6Pos 100

# Ein NBT-Speicher wird angelegt.
data merge storage zufallsgenerator:v6daten {EigZufG.6Felder:[]}

# Spieler im Umkreis von 15 Blöcken erhalten einen Stock mit Verzauberungsschimmer.
give @a[distance=..15] minecraft:stick{EigZufG.6Alle:true,EigZufG.6Felder:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Felder-Speicher","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um Zahlenwerte in eine"','"Felderreihe zu speichern"','"und um einen zufälligen"','"Zahlenwert davon zu erhalten."'] } }
