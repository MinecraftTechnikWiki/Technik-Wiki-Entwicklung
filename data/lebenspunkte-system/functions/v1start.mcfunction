# Die Punktestand-Ziele werden erstellt
scoreboard objectives add PZLebP.1Leben dummy ["Lebenspunkte-System.1: ",{"text":"Die aktuellen Herzen der Kreaturen","bold":true}]
scoreboard objectives add PZLebP.1Vergl dummy ["Lebenspunkte-System.1: ",{"text":"Die Herzen der Kreaturen vor einem Tick","bold":true}]
scoreboard objectives add PZLebP.1MaxLeb dummy ["Lebenspunkte-System.1: ",{"text":"Das maximale Leben einer Kreatur","bold":true}]

# Den Spielern in einem Umkreis von 25 Blöcken werden Spawn-Eier gegeben. Mit denen lassen sich Tiere spawnen die ihre Lebensleiste als Namen tragen werden
give @a[distance=..25] minecraft:chicken_spawn_egg{lebenspunkte-system:"v1gegenstand",display:{Lore:['"Eine Kreatur mit"','"Lebenspunkten"'] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.1Alle","EtiLebP.1Herzen"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:cow_spawn_egg{lebenspunkte-system:"v1gegenstand",display:{Lore:['"Eine Kreatur mit"','"Lebenspunkten"'] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.1Alle","EtiLebP.1Herzen"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:pig_spawn_egg{lebenspunkte-system:"v1gegenstand",display:{Lore:['"Eine Kreatur mit"','"Lebenspunkten"'] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.1Alle","EtiLebP.1Herzen"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:sheep_spawn_egg{lebenspunkte-system:"v1gegenstand",display:{Lore:['"Eine Kreatur mit"','"Lebenspunkten"'] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.1Alle","EtiLebP.1Herzen"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:rabbit_spawn_egg{lebenspunkte-system:"v1gegenstand",display:{Lore:['"Eine Kreatur mit"','"Lebenspunkten"'] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.1Alle","EtiLebP.1Herzen"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:horse_spawn_egg{lebenspunkte-system:"v1gegenstand",display:{Lore:['"Eine Kreatur mit"','"Lebenspunkten"'] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.1Alle","EtiLebP.1Herzen"],DeathLootTable:"minecraft:empty"} }

# Partikelwolken mit Herz-Zeichen im Namen werden gespawnt und ein Schild wird platziert dass die Zeichen kombinieren kann
summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiLebP.1Alle","EtiLebP.1Herz"],CustomName:'{"text":"❤","color":"gray"}'}
summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiLebP.1Alle","EtiLebP.1HerzRot"],CustomName:'{"text":"❤","color":"red"}'}
execute at @e[tag=EtiLebP.1Herz] run setblock ~ ~ ~ minecraft:oak_sign{Text1:'[{"text":""}]'} replace
