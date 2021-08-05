
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["EtiZaRezM.1Alle","EtiZaRezM.1Zufall"]}
execute store result score VarZaRezM.1Zufallszahl PZZaRezM.1Wert run data get entity @e[type=minecraft:area_effect_cloud,tag=EtiZaRezM.1Zufall,sort=nearest,limit=1] UUID[0]

execute store result score VarZaRezM.1Laenge PZZaRezM.1Wert run data get storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber"
scoreboard players operation VarZaRezM.1Zufallszahl PZZaRezM.1Wert %= VarZaRezM.1Laenge PZZaRezM.1Wert

scoreboard players set VarZaRezM.1Position PZZaRezM.1Wert 0
function zaubertisch-rezeptmaschine:v1zauber






execute if score VarZaRezM.1Position PZZaRezM.1Wert = VarZaRezM.1Zufallszahl PZZaRezM.1Wert run data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1NeuerZauber" set from storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber"[0]

data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber" append from storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber"[0]
data remove storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber"[0]

scoreboard players add VarZaRezM.1Position PZZaRezM.1Wert 1
execute if score VarZaRezM.1Position PZZaRezM.1Wert <= VarZaRezM.1Laenge PZZaRezM.1Wert run function zaubertisch-rezeptmaschine:v1inventar




execute store result score VarZaRezM.1Trank2 PZZaRezM.1Fort run scoreboard players set VarZaRezM.1Trank3 PZZaRezM.1Fort 0

execute store success score VarZaRezM.1Trank1 PZZaRezM.1Fort store success score VarZaRezM.1Traenke PZZaRezM.1Fort if data block ~ ~ ~ Items[{Slot:6b}]
execute store success score VarZaRezM.1Trank2 PZZaRezM.1Fort if data block ~ ~ ~ Items[{Slot:7b}] run scoreboard players add VarZaRezM.1Traenke PZZaRezM.1Fort 1
execute store success score VarZaRezM.1Trank3 PZZaRezM.1Fort if data block ~ ~ ~ Items[{Slot:8b}] run scoreboard players add VarZaRezM.1Traenke PZZaRezM.1Fort 1

execute if data block ~ ~ ~ Items[{Slot:2b}] run tag @s add EtiZaRezM.1Zutat
scoreboard players operation VarZaRezM.1Zutat PZZaRezM.1Zut = @s PZZaRezM.1Zut

execute if entity @s[tag=EtiZaRezM.1Zutat] run function braustand-rezeptmaschine:v2zutaten

execute if score VarZaRezM.1Zutat PZZaRezM.1Zut matches 1.. unless score VarZaRezM.1Zutat PZZaRezM.1Zut = @s PZZaRezM.1Zut run scoreboard players set VarZaRezM.1Traenke PZZaRezM.1Fort 0

#tag @s add EtiZaRezM.1AndereZutat
#tag @s[tag=EtiZaRezM.1Zutat,tag=EtiZaRezM.1AndereZutat] remove EtiZaRezM.1Zutat
#execute if entity @s[tag=EtiZaRezM.1AndereZutat] unless data block ~ ~ ~ Items[{Slot:2b}] run tag @s remove EtiZaRezM.1AndereZutat

execute if entity @s[tag=EtiZaRezM.1Zutat,scores={PZZaRezM.1Zut=1..}] if score VarZaRezM.1Traenke PZZaRezM.1Fort matches 1.. run function zaubertisch-rezeptmaschine:v1rezeptblock

tag @s[tag=EtiZaRezM.1Zutat] remove EtiZaRezM.1Zutat

execute if score VarZaRezM.1Traenke PZZaRezM.1Fort matches ..0 run scoreboard players set @s PZZaRezM.1Fort 0
