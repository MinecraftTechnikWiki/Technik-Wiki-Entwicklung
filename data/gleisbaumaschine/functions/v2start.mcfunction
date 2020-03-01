# Punktestand-Ziele werden erstellt
scoreboard objectives add PZGleisB.2Schl minecraft.custom:minecraft.sneak_time ["Gleisbaumaschine.2: ",{"text":"Schleichzeit","bold":true}]
scoreboard objectives add PZGleisB.2Gleis dummy ["Gleisbaumaschine.2: ",{"text":"Schienen für die Gleisbaumaschine","bold":true}]
scoreboard objectives add PZGleisB.2Andes dummy ["Gleisbaumaschine.2: ",{"text":"Andesit für die Gleisbaumaschine","bold":true}]
scoreboard objectives add PZGleisB.2Stein dummy ["Gleisbaumaschine.2: ",{"text":"Steine für die Gleisbaumaschine","bold":true}]

give @a[distance=..25] minecraft:chest_minecart{gleisbaumaschine:"v2gegenstand",display:{Lore:['"Wirf den Gegenstand mit weiteren"','"auf den Boden, um daraus"','"beim richtigen Rezept die"','"Gleisbaumaschine zu erhalten"']}}
give @a[distance=..25] minecraft:sticky_piston{gleisbaumaschine:"v2gegenstand",display:{Lore:['"Wirf den Gegenstand mit weiteren"','"auf den Boden, um daraus"','"beim richtigen Rezept die"','"Gleisbaumaschine zu erhalten"']}}
give @a[distance=..25] minecraft:dispenser{gleisbaumaschine:"v2gegenstand",display:{Lore:['"Wirf den Gegenstand mit weiteren"','"auf den Boden, um daraus"','"beim richtigen Rezept die"','"Gleisbaumaschine zu erhalten"']}}
give @a[distance=..25] minecraft:redstone_block{gleisbaumaschine:"v2gegenstand",display:{Lore:['"Wirf den Gegenstand mit weiteren"','"auf den Boden, um daraus"','"beim richtigen Rezept die"','"Gleisbaumaschine zu erhalten"']}}
give @a[distance=..25] minecraft:gold_block{gleisbaumaschine:"v2gegenstand",display:{Lore:['"Wirf den Gegenstand mit weiteren"','"auf den Boden, um daraus"','"beim richtigen Rezept die"','"Gleisbaumaschine zu erhalten"']}}
give @a[distance=..25] minecraft:diamond_pickaxe{gleisbaumaschine:"v2gegenstand",Enchantments:[{id:"minecraft:mending",lvl:1s}],display:{Lore:['"Wirf den Gegenstand mit weiteren"','"auf den Boden, um daraus"','"beim richtigen Rezept die"','"Gleisbaumaschine zu erhalten"']}}

# Dem Spieler in der Nähe werden Schienen, Andesit und Steine gegeben
give @p[distance=..25] minecraft:rail{gleisbaumaschine:"v2gegenstand",display:{Lore:['"Baumaterial für die Gleisbaumaschine"'] } } 64
give @p[distance=..25] minecraft:andesite{gleisbaumaschine:"v2gegenstand",display:{Lore:['"Baumaterial für die Gleisbaumaschine"'] } } 64
give @p[distance=..25] minecraft:smooth_stone{gleisbaumaschine:"v2gegenstand",display:{Lore:['"Baumaterial für die Gleisbaumaschine"'] } } 128
