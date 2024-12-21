
execute if entity @s[tag=EtiZaRezM.1Zauberbuch,tag=!EtiZaRezM.1Gefunden] run data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1NeuerZauber" set from storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber"[0]
execute if entity @s[tag=EtiZaRezM.1Zauberbuch,tag=!EtiZaRezM.1Gefunden] store success score VarZaRezM.1Ungleich PZZaRezM.1Wert run data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1NeuerZauber".id set from block ~ ~ ~ Items[{Slot:0b}].components.minecraft:stored_enchantments[0].id

execute if entity @s[tag=EtiZaRezM.1Zauberbuch,tag=!EtiZaRezM.1Gefunden,tag=!EtiZaRezM.1StufeGroesser] if score VarZaRezM.1Ungleich PZZaRezM.1Wert matches 0 store result score VarZaRezM.1Stufe PZZaRezM.1Wert run data get storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1NeuerZauber".lvl
execute if entity @s[tag=EtiZaRezM.1Zauberbuch,tag=!EtiZaRezM.1Gefunden,tag=!EtiZaRezM.1StufeGroesser] if score VarZaRezM.1Ungleich PZZaRezM.1Wert matches 0 store result score VarZaRezM.1NeueStufe PZZaRezM.1Wert run data get block ~ ~ ~ Items[{Slot:0b}].components.minecraft:stored_enchantments[0].lvl

execute if entity @s[tag=EtiZaRezM.1Zauberbuch,tag=!EtiZaRezM.1Gefunden,tag=!EtiZaRezM.1StufeGroesser] if score VarZaRezM.1Ungleich PZZaRezM.1Wert matches 0 if score VarZaRezM.1NeueStufe PZZaRezM.1Wert > VarZaRezM.1Stufe PZZaRezM.1Wert run tag @s add EtiZaRezM.1StufeGroesser

execute if entity @s[tag=EtiZaRezM.1Zauberbuch,tag=!EtiZaRezM.1Gefunden] if score VarZaRezM.1Ungleich PZZaRezM.1Wert matches 0 run tag @s add EtiZaRezM.1Gefunden

execute if entity @s[tag=!EtiZaRezM.1Zauberbuch] if score VarZaRezM.1Position PZZaRezM.1Wert = VarZaRezM.1Zufallszahl PZZaRezM.1Wert run data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1NeuerZauber".components.minecraft:stored_enchantments[0] set from storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber"[0]

data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber" append from storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber"[0]
data remove storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber"[0]

scoreboard players add VarZaRezM.1Position PZZaRezM.1Wert 1
execute if score VarZaRezM.1Position PZZaRezM.1Wert <= VarZaRezM.1Laenge PZZaRezM.1Wert run function zaubertisch-rezeptmaschine:v1zauber
