# Der Labyrinth-Schacht wird erzeugt, in dem Quarzblöcke entsprechend platziert werden.
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:quartz_block replace
fill ^1 ^ ^-3 ^1 ^2 ^1 minecraft:quartz_block replace
fill ^ ^1 ^-2 ^ ^2 ^ minecraft:air replace minecraft:quartz_block
fill ^-1 ^ ^-1 ^-1 ^2 ^1 minecraft:quartz_block replace

# Der Generieren-Rüstungsständer wird zwei Meter in Blickrichtung nach vorne teleportiert, falls jedoch rechts von ihm in Blickrichtung keine Labyrinth-Wand befindet wird er um 90° gedreht und entsprechend teleportiert, sodass er beim nächsten Schritt um die Ecke läuft.
teleport @s ^ ^ ^2
execute unless block ^-2 ^ ^ minecraft:quartz_block run teleport @s ^-2 ^ ^ ~90 ~

# Dem Rüstungsständer wird der Wert um eins verringert.
scoreboard players remove @s PZLaUIr.2Gross 1

# Eine Partikelwolke wird erzeugt, damit das Labyrinth wieder entfernt werden kann, falls man den Generator wieder ausschaltet.
summon minecraft:area_effect_cloud ~1 ~ ~1 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Particle:"minecraft:block minecraft:air",Tags:["EtiLaUIr.1Alle","EtiLaUIr.1Gang"]}
