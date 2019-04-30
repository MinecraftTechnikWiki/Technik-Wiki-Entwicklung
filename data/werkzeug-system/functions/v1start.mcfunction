# Punktestand-Ziele werden erstellt
scoreboard objectives add PZWerkS.1Verz dummy {"text":"Werkzeug-System.1: Verzauberungsstufe"}
scoreboard objectives add PZWerkS.1Haltb dummy {"text":"Werkzeug-System.1: Haltbarkeit"}

scoreboard objectives add PZWerkS.1Weizen minecraft.mined:minecraft.wheat {"text":"Werkzeug-System.1: Weizen geerntet"}
scoreboard objectives add PZWerkS.1Karotte minecraft.mined:minecraft.carrots {"text":"Werkzeug-System.1: Karotten geerntet"}
scoreboard objectives add PZWerkS.1Kartoff minecraft.mined:minecraft.potatoes {"text":"Werkzeug-System.1: Kartoffeln geerntet"}
scoreboard objectives add PZWerkS.1Bete minecraft.mined:minecraft.beetroots {"text":"Werkzeug-System.1: Rote Bete geerntet"}

# Die fünf verschiedenen Hacken mit verschiedenen Verzauberungsstufen werden dem Spieler gegeben
give @s minecraft:wooden_hoe{Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],display:{Name:"{\"text\":\"Werkzeug-System.1\"}",Lore:["Ernte mit der Hacke","die Feldfrüchte"] } }
give @s minecraft:stone_hoe{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}],display:{Name:"{\"text\":\"Werkzeug-System.1\"}",Lore:["Ernte mit der Hacke","die Feldfrüchte"] } }
give @s minecraft:iron_hoe{Enchantments:[{id:"minecraft:unbreaking",lvl:3s}],display:{Name:"{\"text\":\"Werkzeug-System.1\"}",Lore:["Ernte mit der Hacke","die Feldfrüchte"] } }
give @s minecraft:golden_hoe{Enchantments:[{id:"minecraft:unbreaking",lvl:4s}],display:{Name:"{\"text\":\"Werkzeug-System.1\"}",Lore:["Ernte mit der Hacke","die Feldfrüchte"] } }
give @s minecraft:diamond_hoe{Enchantments:[{id:"minecraft:unbreaking",lvl:5s}],display:{Name:"{\"text\":\"Werkzeug-System.1\"}",Lore:["Ernte mit der Hacke","die Feldfrüchte"] } }

# Den Spielmodus auf Überleben setzen
gamemode survival @s[gamemode=!survival]

# Ackerboden samt Wasserquellen und ausgewachsenen Karotten werden um die Befehlsquelle platziert
fill ~-15 ~ ~-15 ~15 ~ ~15 minecraft:farmland replace minecraft:air
fill ~-15 ~1 ~-15 ~15 ~1 ~15 minecraft:carrots[age=7] replace minecraft:air
setblock ~-7 ~ ~-7 minecraft:water replace
setblock ~7 ~ ~-7 minecraft:water replace
setblock ~-7 ~ ~7 minecraft:water replace
setblock ~7 ~ ~7 minecraft:water replace
