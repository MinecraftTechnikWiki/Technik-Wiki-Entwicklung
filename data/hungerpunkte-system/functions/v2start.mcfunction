# Punktestand-Ziele werden erstellt
scoreboard objectives add PZHungS.2Zeit minecraft.custom:minecraft.play_one_minute ["Hungerpunkte-System.2: ",{"text":"Spielzeit","bold":true}]

scoreboard objectives add PZHungS.2Trinken dummy ["Hungerpunkte-System.2: ",{"text":"Trinken","bold":true}]
scoreboard objectives setdisplay list PZHungS.2Trinken

scoreboard objectives add PZHungS.2WasFl minecraft.used:minecraft.potion ["Hungerpunkte-System.2: ",{"text":"Wasserflasche trinken","bold":true}]
scoreboard objectives add PZHungS.2Milch minecraft.used:minecraft.milk_bucket ["Hungerpunkte-System.2 :",{"text":"Milch trinken","bold":true}]
scoreboard objectives add PZHungS.2Ragout minecraft.used:minecraft.rabbit_stew ["Hungerpunkte-System.2: ",{"text":"Kaninchenragout löffeln","bold":true}]
scoreboard objectives add PZHungS.2PilzS minecraft.used:minecraft.mushroom_stew ["Hungerpunkte-System.2: ",{"text":"Pilzsuppe löffeln","bold":true}]
scoreboard objectives add PZHungS.2Bortsch minecraft.used:minecraft.beetroot_soup ["Hungerpunkte-System.2: ",{"text":"Borschtsch löffeln","bold":true}]
scoreboard objectives add PZHungS.2Melone minecraft.used:minecraft.melon_slice ["Hungerpunkte-System.2: ",{"text":"Melonenscheibe essen","bold":true}]

# Der Spieler wird in den Überlebensmodus gesetzt
gamemode survival @a[distance=..15,gamemode=!survival]

# Der Spieler erhält einen Hungereffekt, damit er direkt die Nahrung zu sich nehmen kann
effect give @a[distance=..15] minecraft:hunger 6 255 true

# Dem Spieler wird direkt eine Trinkbilanz von 80 gegeben, damit er nicht direkt dehydriert aber auch nicht zu viel getrunken hat
scoreboard players set @a[distance=..15] PZHungS.2Trinken 80

# Den Spielern werden verschiedene Nahrungsmittel gegeben die den Wasserhaushalt des Spielers erhöhen
give @a[distance=..15] minecraft:potion{hungerpunkte-system:"v2gegenstand",display:{Lore:['"Drink mich"']},Potion:"minecraft:water"} 1
give @a[distance=..15] minecraft:milk_bucket{hungerpunkte-system:"v2gegenstand",display:{Lore:['"Drink mich"']} } 1
give @a[distance=..15] minecraft:rabbit_stew{hungerpunkte-system:"v2gegenstand",display:{Lore:['"Drink mich"']} } 1
give @a[distance=..15] minecraft:mushroom_stew{hungerpunkte-system:"v2gegenstand",display:{Lore:['"Drink mich"']} } 1
give @a[distance=..15] minecraft:beetroot_soup{hungerpunkte-system:"v2gegenstand",display:{Lore:['"Drink mich"']} } 1
give @a[distance=..15] minecraft:melon_slice{hungerpunkte-system:"v2gegenstand",display:{Lore:['"Drink mich"']} } 64

# Eine Nachricht mit Anleitung für den Spieler
tellraw @a[distance=..15] ["Hungerpunkte-System.2: ",{"text":"Trinke nach Gelegenheit immer etwas, da sich dein Wasserhaushalt nach Zeiten immer verringert. Den Wasserhaushalt kann man sich mit der Shift-Taste oben in der Mitte anzeigen lassen.","bold":true}]
