# Punktestand-Ziele werden erstellt
scoreboard objectives add PZWerkS.1Verz dummy ["Werkzeug-System.1: ",{"text":"Verzauberungsstufe","bold":true}]
scoreboard objectives add PZWerkS.1Haltb dummy ["Werkzeug-System.1: ",{"text":"Haltbarkeit","bold":true}]

scoreboard objectives add PZWerkS.1Weizen minecraft.mined:minecraft.wheat ["Werkzeug-System.1: ",{"text":"Weizen geerntet","bold":true}]
scoreboard objectives add PZWerkS.1Karotte minecraft.mined:minecraft.carrots ["Werkzeug-System.1: ",{"text":"Karotten geerntet","bold":true}]
scoreboard objectives add PZWerkS.1Kartoff minecraft.mined:minecraft.potatoes ["Werkzeug-System.1: ",{"text":"Kartoffeln geerntet","bold":true}]
scoreboard objectives add PZWerkS.1Bete minecraft.mined:minecraft.beetroots ["Werkzeug-System.1: ",{"text":"Rote Bete geerntet","bold":true}]

# Die fünf verschiedenen Hacken mit verschiedenen Verzauberungsstufen werden dem Spieler gegeben
give @a[distance=..25] minecraft:wooden_hoe{werzeug-system:"v1gegenstand",Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],display:{Lore:['"Klicke mit der linken Maustaste"','"mit Hacke um Feldfrüchte"','"in einem bestimmten"','"Umkreis zu ernten"'] } }
give @a[distance=..25] minecraft:stone_hoe{werzeug-system:"v1gegenstand",Enchantments:[{id:"minecraft:unbreaking",lvl:2s}],display:{Lore:['"Klicke mit der linken Maustaste"','"mit Hacke um Feldfrüchte"','"in einem bestimmten"','"Umkreis zu ernten"'] } }
give @a[distance=..25] minecraft:iron_hoe{werzeug-system:"v1gegenstand",Enchantments:[{id:"minecraft:unbreaking",lvl:3s}],display:{Lore:['"Klicke mit der linken Maustaste"','"mit Hacke um Feldfrüchte"','"in einem bestimmten"','"Umkreis zu ernten"'] } }
give @a[distance=..25] minecraft:golden_hoe{werzeug-system:"v1gegenstand",Enchantments:[{id:"minecraft:unbreaking",lvl:4s}],display:{Lore:['"Klicke mit der linken Maustaste"','"mit Hacke um Feldfrüchte"','"in einem bestimmten"','"Umkreis zu ernten"'] } }
give @a[distance=..25] minecraft:diamond_hoe{werzeug-system:"v1gegenstand",Enchantments:[{id:"minecraft:unbreaking",lvl:5s}],display:{Lore:['"Klicke mit der linken Maustaste"','"mit Hacke um Feldfrüchte"','"in einem bestimmten"','"Umkreis zu ernten"'] } }

# Den Spielmodus auf Überleben setzen
gamemode survival @a[distance=..25,gamemode=!survival]

# Ackerboden samt Wasserquellen und ausgewachsenen Feldfrüchte werden um die Befehlsquelle platziert
fill ~-15 ~ ~-15 ~15 ~ ~15 minecraft:farmland[moisture=7] replace minecraft:air
fill ~-15 ~1 ~-15 ~ ~1 ~ minecraft:wheat[age=7] replace minecraft:air
fill ~15 ~1 ~-15 ~1 ~1 ~ minecraft:carrots[age=7] replace minecraft:air
fill ~15 ~1 ~15 ~1 ~1 ~ minecraft:potatoes[age=7] replace minecraft:air
fill ~-15 ~1 ~15 ~ ~1 ~ minecraft:beetroots[age=3] replace minecraft:air

setblock ~-7 ~ ~-7 minecraft:water replace
setblock ~7 ~ ~-7 minecraft:water replace
setblock ~-7 ~ ~7 minecraft:water replace
setblock ~7 ~ ~7 minecraft:water replace
