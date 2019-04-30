# Punktestand-Ziele werden erstellt
scoreboard objectives add PZHungS.2Zeit minecraft.custom:minecraft.play_one_minute ["Hungerpunkt-System.2: ",{"text":"Spielzeit","bold":true}]

scoreboard objectives add PZHungS.2Trinken dummy ["Hungerpunkt-System.2: ",{"text":"Trinken","bold":true}]
scoreboard objectives setdisplay list PZHungS.2Trinken

scoreboard objectives add PZHungS.2WasFl minecraft.used:minecraft.potion ["Hungerpunkt-System.2: ",{"text":"Wasserflasche trinken","bold":true}]
scoreboard objectives add PZHungS.2Milch minecraft.used:minecraft.milk_bucket ["Hungerpunkt-System.2 :",{"text":"Milch trinken","bold":true}]
scoreboard objectives add PZHungS.2Ragout minecraft.used:minecraft.rabbit_stew ["Hungerpunkt-System.2: ",{"text":"Kaninchenragout löffeln","bold":true}]
scoreboard objectives add PZHungS.2PilzS minecraft.used:minecraft.mushroom_stew ["Hungerpunkt-System.2: ",{"text":"Pilzsuppe löffeln","bold":true}]
scoreboard objectives add PZHungS.2Bortsch minecraft.used:minecraft.beetroot_soup ["Hungerpunkt-System.2: ",{"text":"Borschtsch löffeln","bold":true}]
scoreboard objectives add PZHungS.2Melone minecraft.used:minecraft.melon_slice ["Hungerpunkt-System.2: ",{"text":"Melonenscheibe essen","bold":true}]

# Der Spieler wird in den Überlebensmodus gesetzt
gamemode survival @s[gamemode=!survival]

effect give @s minecraft:hunger 6 255 true

scoreboard players set @s PZHungS.2Trinken 80

give @s minecraft:potion{display:{Lore:["Hungerpunkt-System.2"]},Potion:"minecraft:water"} 1
give @s minecraft:milk_bucket{display:{Lore:["Hungerpunkt-System.2"]} } 1
give @s minecraft:rabbit_stew{display:{Lore:["Hungerpunkt-System.2"]} } 1
give @s minecraft:mushroom_stew{display:{Lore:["Hungerpunkt-System.2"]} } 1
give @s minecraft:beetroot_soup{display:{Lore:["Hungerpunkt-System.2"]} } 1
give @s minecraft:melon_slice{display:{Lore:["Hungerpunkt-System.2"]} } 64
