# Wenn man eine Hacke in der Schnellzugriffsleiste ausgewählt hat, erhält man ein Etikett
tag @s[nbt={SelectedItem:{id:"minecraft:wooden_hoe"} } ] add EtiWerkS.1Hacke
tag @s[nbt={SelectedItem:{id:"minecraft:stone_hoe"} } ] add EtiWerkS.1Hacke
tag @s[nbt={SelectedItem:{id:"minecraft:iron_hoe"} } ] add EtiWerkS.1Hacke
tag @s[nbt={SelectedItem:{id:"minecraft:golden_hoe"} } ] add EtiWerkS.1Hacke
tag @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe"} } ] add EtiWerkS.1Hacke

# Bei Spielern die ihre Hacke mit Haltbarkeit verzaubert haben, wird dessen Verzauberungsstufe in einem Punktestand-Ziel gespeichert
execute store result score @s[tag=EtiWerkS.1Hacke,nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:unbreaking"} ] } } } ] PZWerkS.1Verz run data get entity @s SelectedItem.tag.Enchantments[0].lvl

# Nur wenn die Hacke verzaubert ist, wird die Funktion zwei Blöcke vor dem Spieler aufgerufen
execute if entity @s[tag=EtiWerkS.1Hacke,scores={PZWerkS.1Verz=1..}] at @s rotated ~90 0 positioned ^2 ^1 ^ run function werkzeug-system:v1schritt2

# Die Beschädigung wird um eins erhöht, wenn die Hacke verzaubert war
execute store result score @s[tag=EtiWerkS.1Hacke,scores={PZWerkS.1Verz=1..}] PZWerkS.1Haltb run data get entity @s SelectedItem.tag.Damage
scoreboard players add @s PZWerkS.1Haltb 1
execute store result entity @s[tag=EtiWerkS.1Hacke,scores={PZWerkS.1Verz=1..}] SelectedItem.tag.Damage int 1 run scoreboard players get @s PZWerkS.1Haltb

# Wenn der Spieler eine verzauberte Hacke besaß wird sein Punktestand zurück gesetzt und das Etikett wird entfernt
scoreboard players reset @s[scores={PZWerkS.1Verz=1..}] PZWerkS.1Verz
tag @s[tag=EtiWerkS.1Hacke] remove EtiWerkS.1Hacke
