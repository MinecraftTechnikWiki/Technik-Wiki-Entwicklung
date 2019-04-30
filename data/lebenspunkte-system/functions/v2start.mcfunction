# Die Punktestand-Ziele werden erstellt
scoreboard objectives add PZLebP.2Leben dummy ["Lebenspunkte-System.2: ",{"text":"Die aktuellen Herzen der Kreaturen","bold":true}]
scoreboard objectives add PZLebP.2Vergl dummy ["Lebenspunkte-System.2: ",{"text":"Die Herzen der Kreaturen vor einem Tick","bold":true}]
scoreboard objectives add PZLebP.2MaxLeb dummy ["Lebenspunkte-System.2: ",{"text":"Das maximale Leben einer Kreatur","bold":true}]

# Den Spielern in einem Umkreis von 25 Blöcken werden vier Spawn-Eier gegeben. Mit denen lassen sich Tiere spawnen die ihre Lebensleiste als Namen tragen werden
give @a[distance=..25] minecraft:cod_spawn_egg{display:{Lore:["Eine Kreatur mit","Lebenspunkten"] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.2Herzen"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:salmon_spawn_egg{display:{Lore:["Eine Kreatur mit","Lebenspunkten"] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.2Herzen"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:pufferfish_spawn_egg{display:{Lore:["Eine Kreatur mit","Lebenspunkten"] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.2Herzen"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:dolphin_spawn_egg{display:{Lore:["Eine Kreatur mit","Lebenspunkten"] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.2Herzen"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:turtle_spawn_egg{display:{Lore:["Eine Kreatur mit","Lebenspunkten"] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.2Herzen"],DeathLootTable:"minecraft:empty"} }
