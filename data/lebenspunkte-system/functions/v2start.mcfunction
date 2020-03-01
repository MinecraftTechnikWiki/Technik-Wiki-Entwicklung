# Die Punktestand-Ziele werden erstellt
scoreboard objectives add PZLebP.2Leben dummy ["Lebenspunkte-System.2: ",{"text":"Die aktuellen Herzen der Kreaturen","bold":true}]
scoreboard objectives add PZLebP.2Vergl dummy ["Lebenspunkte-System.2: ",{"text":"Die Herzen der Kreaturen vor einem Tick","bold":true}]
scoreboard objectives add PZLebP.2MaxLeb dummy ["Lebenspunkte-System.2: ",{"text":"Das maximale Leben einer Kreatur","bold":true}]

# Die Konstante 100 für die Prozentrechnung wird gesetzt
scoreboard players set #KonstLebP.2HUNDERTPROZENT PZLebP.2MaxLeb 100

# Zehn Teams für die Leben in Prozent werden angelegt
team add TMLebP.2Leb100 ["Lebenspunkte-System.2: ",{"text":"100% Leben","bold":true}]
team add TMLebP.2Leb90 ["Lebenspunkte-System.2: ",{"text":"90% Leben","bold":true}]
team add TMLebP.2Leb80 ["Lebenspunkte-System.2: ",{"text":"80% Leben","bold":true}]
team add TMLebP.2Leb70 ["Lebenspunkte-System.2: ",{"text":"70% Leben","bold":true}]
team add TMLebP.2Leb60 ["Lebenspunkte-System.2: ",{"text":"60% Leben","bold":true}]
team add TMLebP.2Leb50 ["Lebenspunkte-System.2: ",{"text":"50% Leben","bold":true}]
team add TMLebP.2Leb40 ["Lebenspunkte-System.2: ",{"text":"40% Leben","bold":true}]
team add TMLebP.2Leb30 ["Lebenspunkte-System.2: ",{"text":"30% Leben","bold":true}]
team add TMLebP.2Leb20 ["Lebenspunkte-System.2: ",{"text":"20% Leben","bold":true}]
team add TMLebP.2Leb10 ["Lebenspunkte-System.2: ",{"text":"10% Leben","bold":true}]
team add TMLebP.2Leb0 ["Lebenspunkte-System.2: ",{"text":"0% Leben","bold":true}]

# Die Lebensbalken als Nachschrift der Teams, werden hinter dem Namen der Kreaturen angezeigt
team modify TMLebP.2Leb100 suffix ["",{"text":" [","color":"red"},{"text":"LP: ","color":"gold"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"green"},{"text":"]","color":"red"}]
team modify TMLebP.2Leb90 suffix ["",{"text":" [","color":"red"},{"text":"LP: ","color":"gold"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"green"},{"text":"⬛","color":"dark_gray"},{"text":"]","color":"red"}]
team modify TMLebP.2Leb80 suffix ["",{"text":" [","color":"red"},{"text":"LP: ","color":"gold"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛","color":"green"},{"text":"⬛⬛","color":"dark_gray"},{"text":"]","color":"red"}]
team modify TMLebP.2Leb70 suffix ["",{"text":" [","color":"red"},{"text":"LP: ","color":"gold"},{"text":"⬛⬛⬛⬛⬛⬛⬛","color":"green"},{"text":"⬛⬛⬛","color":"dark_gray"},{"text":"]","color":"red"}]
team modify TMLebP.2Leb60 suffix ["",{"text":" [","color":"red"},{"text":"LP: ","color":"gold"},{"text":"⬛⬛⬛⬛⬛⬛","color":"gold"},{"text":"⬛⬛⬛⬛","color":"dark_gray"},{"text":"]","color":"red"}]
team modify TMLebP.2Leb50 suffix ["",{"text":" [","color":"red"},{"text":"LP: ","color":"gold"},{"text":"⬛⬛⬛⬛⬛","color":"gold"},{"text":"⬛⬛⬛⬛⬛","color":"dark_gray"},{"text":"]","color":"red"}]
team modify TMLebP.2Leb40 suffix ["",{"text":" [","color":"red"},{"text":"LP: ","color":"gold"},{"text":"⬛⬛⬛⬛","color":"gold"},{"text":"⬛⬛⬛⬛⬛⬛","color":"dark_gray"},{"text":"]","color":"red"}]
team modify TMLebP.2Leb30 suffix ["",{"text":" [","color":"red"},{"text":"LP: ","color":"gold"},{"text":"⬛⬛⬛","color":"red"},{"text":"⬛⬛⬛⬛⬛⬛⬛","color":"dark_gray"},{"text":"]","color":"red"}]
team modify TMLebP.2Leb20 suffix ["",{"text":" [","color":"red"},{"text":"LP: ","color":"gold"},{"text":"⬛⬛","color":"red"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_gray"},{"text":"]","color":"red"}]
team modify TMLebP.2Leb10 suffix ["",{"text":" [","color":"red"},{"text":"LP: ","color":"gold"},{"text":"⬛","color":"red"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_gray"},{"text":"]","color":"red"}]
team modify TMLebP.2Leb0 suffix ["",{"text":" [","color":"red"},{"text":"LP: ","color":"gold"},{"text":" ","color":"red"},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"dark_gray"},{"text":"]","color":"red"}]

# Spieler in einem Umkreis von bis zu 25 Metern erhalten Spawn-Eier, mit denen man Kreaturen mit Lebensleisten spawnen kann
give @a[distance=..25] minecraft:dolphin_spawn_egg{lebenspunkte-system:"v2gegenstand",display:{Lore:['"Eine Kreatur mit"','"Lebenspunkten"'] },EntityTag:{CustomNameVisible:true,CustomName:'{"text":""}',Tags:["EtiLebP.2Alle","EtiLebP.2Anzeige"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:panda_spawn_egg{lebenspunkte-system:"v2gegenstand",display:{Lore:['"Eine Kreatur mit"','"Lebenspunkten"'] },EntityTag:{CustomNameVisible:true,CustomName:'{"text":""}',Tags:["EtiLebP.2Alle","EtiLebP.2Anzeige"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:llama_spawn_egg{lebenspunkte-system:"v2gegenstand",display:{Lore:['"Eine Kreatur mit"','"Lebenspunkten"'] },EntityTag:{CustomNameVisible:true,CustomName:'{"text":""}',Tags:["EtiLebP.2Alle","EtiLebP.2Anzeige"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:fox_spawn_egg{lebenspunkte-system:"v2gegenstand",display:{Lore:['"Eine Kreatur mit"','"Lebenspunkten"'] },EntityTag:{CustomNameVisible:true,CustomName:'{"text":""}',Tags:["EtiLebP.2Alle","EtiLebP.2Anzeige"],DeathLootTable:"minecraft:empty"} }
