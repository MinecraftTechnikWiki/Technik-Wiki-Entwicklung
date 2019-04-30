# Die Punktestand-Ziele werden erstellt
scoreboard objectives add PZLebP.1Leben dummy ["Lebenspunkte-System.1: ",{"text":"Die aktuellen Herzen der Kreaturen","bold":true}]
scoreboard objectives add PZLebP.1Vergl dummy ["Lebenspunkte-System.1: ",{"text":"Die Herzen der Kreaturen vor einem Tick","bold":true}]

# Den Spielern in einem Umkreis von 25 Blöcken werden vier Spawn-Eier gegeben. Mit denen lassen sich Tiere spawnen die ihre Lebensleiste als Namen tragen werden
give @a[distance=..25] minecraft:chicken_spawn_egg{display:{Lore:["Eine Kreatur mit","Lebenspunkten"] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.1Herzen"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:cow_spawn_egg{display:{Lore:["Eine Kreatur mit","Lebenspunkten"] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.1Herzen"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:pig_spawn_egg{display:{Lore:["Eine Kreatur mit","Lebenspunkten"] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.1Herzen"],DeathLootTable:"minecraft:empty"} }
give @a[distance=..25] minecraft:sheep_spawn_egg{display:{Lore:["Eine Kreatur mit","Lebenspunkten"] },EntityTag:{CustomNameVisible:true,Tags:["EtiLebP.1Herzen"],DeathLootTable:"minecraft:empty"} }
