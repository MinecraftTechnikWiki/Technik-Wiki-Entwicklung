
execute if data block ~ ~ ~ Items[{Slot:0b,id:"minecraft:enchanted_book"}] run tag @s add EtiZaRezM.1Zauberbuch

#execute if entity @s[tag=!EtiZaRezM.1Zauberbuch] run data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1NeuerZauber" set value {id:"minecraft:enchanted_book",count:1}
#execute if entity @s[tag=!EtiZaRezM.1Zauberbuch] run data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber" set from storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1ZauberSpeicher"

#execute if entity @s[tag=!EtiZaRezM.1Zauberbuch] run function zaubertisch-rezeptmaschine:v1zauberbuch
#execute if entity @s[tag=!EtiZaRezM.1Zauberbuch] run data modify block ~ ~ ~ Items[{Slot:2b}] merge from storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1NeuerZauber"

#execute if entity @s[tag=!EtiZaRezM.1Zauberbuch] run function zaubertisch-rezeptmaschine:v1zauberbuch
#execute if entity @s[tag=!EtiZaRezM.1Zauberbuch] run data modify block ~ ~ ~ Items[{Slot:5b}] merge from storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1NeuerZauber"

#execute if entity @s[tag=!EtiZaRezM.1Zauberbuch] run function zaubertisch-rezeptmaschine:v1zauberbuch
#execute if entity @s[tag=!EtiZaRezM.1Zauberbuch] run data modify block ~ ~ ~ Items[{Slot:8b}] merge from storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1NeuerZauber"

execute if entity @s[tag=EtiZaRezM.1Zauberbuch] store result score VarZaRezM.1AnzahlVerzauberung PZZaRezM.1Wert run data remove block ~ ~ ~ Items[{Slot:0b}].components.minecraft:stored_enchantments.levels

execute if entity @s[tag=EtiZaRezM.1Zauberbuch] if score VarZaRezM.1AnzahlVerzauberung PZZaRezM.1Wert matches 1.. run scoreboard players set VarZaRezM.1Position PZZaRezM.1Wert 0
execute if entity @s[tag=EtiZaRezM.1Zauberbuch] if score VarZaRezM.1AnzahlVerzauberung PZZaRezM.1Wert matches 1.. run function zaubertisch-rezeptmaschine:v1zauber

execute if entity @s[tag=EtiZaRezM.1Zauberbuch] if score VarZaRezM.1AnzahlVerzauberung PZZaRezM.1Wert matches 1.. run item replace block ~ ~ ~ container.2 with minecraft:enchanted_book
execute if entity @s[tag=EtiZaRezM.1Zauberbuch] if score VarZaRezM.1AnzahlVerzauberung PZZaRezM.1Wert matches 1.. run data modify block ~ ~ ~ Items[{Slot:2b}].components.minecraft:stored_enchantments set from block ~ ~ ~ Items[{Slot:0b}].components.minecraft:stored_enchantments
#execute if entity @s[tag=EtiZaRezM.1Zauberbuch,tag=!EtiZaRezM.1Gefunden] if score VarZaRezM.1AnzahlVerzauberung PZZaRezM.1Wert matches 1.. run data remove block ~ ~ ~ Items[{Slot:2b}].components.minecraft:stored_enchantments[0]


#execute if entity @s[tag=EtiZaRezM.1Zauberbuch,tag=!EtiZaRezM.1Gefunden] run data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1ZauberSpeicher" append from block ~ ~ ~ Items[{Slot:0b}].components.minecraft:stored_enchantments[0]
#execute if entity @s[tag=EtiZaRezM.1Zauberbuch,tag=!EtiZaRezM.1Gefunden] run data remove block ~ ~ ~ Items[{Slot:0b}].components.minecraft:stored_enchantments[0]



#execute if entity @s[tag=EtiZaRezM.1Zauberbuch] if score VarZaRezM.1AnzahlVerzauberung PZZaRezM.1Wert matches 1 run item replace block ~ ~ ~ container.2 with minecraft:book
#execute if entity @s[tag=EtiZaRezM.1Zauberbuch] if score VarZaRezM.1AnzahlVerzauberung PZZaRezM.1Wert matches 2.. run item replace block ~ ~ ~ container.2 with minecraft:enchanted_book

tag @s[tag=EtiZaRezM.1Zauberbuch] remove EtiZaRezM.1Zauberbuch








#summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["EtiZaRezM.1Alle"]}
#execute store result score VarZaRezM.1Zufallszahl PZZaRezM.1Wert run data get entity @n[type=minecraft:area_effect_cloud,tag=EtiZaRezM.1Alle] UUID[0]

#execute store result score VarZaRezM.1Laenge PZZaRezM.1Wert run data get storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Zauber"
#scoreboard players operation VarZaRezM.1Zufallszahl PZZaRezM.1Wert %= VarZaRezM.1Laenge PZZaRezM.1Wert

#scoreboard players set VarZaRezM.1Position PZZaRezM.1Wert 0
#function zaubertisch-rezeptmaschine:v1zauberbuch









#scoreboard players remove @s[scores={PZZaRezM.1Dau=1..}] PZZaRezM.1Dau 1

#scoreboard players operation VarZaRezM.1Dauer PZZaRezM.1Dau = @s PZZaRezM.1Dau
#scoreboard players operation VarZaRezM.1Dauer PZZaRezM.1Dau /= VarZaRezM.1ZWANZIG PZZaRezM.1Fort
#execute store result block ~ ~ ~ Items[{Slot:3b}].count byte 1 run scoreboard players add VarZaRezM.1Dauer PZZaRezM.1Dau 1

#execute store result score VarZaRezM.1Stapel PZZaRezM.1Dau run data get block ~ ~ ~ Items[{Slot:6b}].count
#execute if entity @s[scores={PZZaRezM.1Dau=..0}] if data block ~ ~ ~ {Items:[{Slot:0b},{Slot:6b}]} run function zaubertisch-rezeptmaschine:v1brennstoff
#execute if entity @s[scores={PZZaRezM.1Dau=1..,PZZaRezM.1Fort=..0}] if data block ~ ~ ~ Items[{Slot:0b}] store result block ~ ~ ~ Items[{Slot:6b}].count byte 1 run scoreboard players remove VarZaRezM.1Stapel PZZaRezM.1Dau 1

#scoreboard players set @s[scores={PZZaRezM.1Dau=..0}] PZZaRezM.1Fort 0
#execute if data block ~ ~ ~ Items[{Slot:0b}] run scoreboard players add @s[scores={PZZaRezM.1Dau=1..,PZZaRezM.1Fort=..200}] PZZaRezM.1Fort 1

#scoreboard players operation VarZaRezM.1Fortschritt PZZaRezM.1Fort = @s PZZaRezM.1Fort
#scoreboard players operation VarZaRezM.1Fortschritt PZZaRezM.1Fort /= VarZaRezM.1ZWANZIG PZZaRezM.1Fort
#execute store result block ~ ~ ~ Items[{Slot:4b}].count byte 1 run scoreboard players add VarZaRezM.1Fortschritt PZZaRezM.1Fort 1

#execute if entity @s[scores={PZZaRezM.1Fort=200..}] if data block ~ ~ ~ Items[{Slot:0b}] run function zaubertisch-rezeptmaschine:v1rezepte
#scoreboard players set @s[scores={PZZaRezM.1Fort=200..}] PZZaRezM.1Fort 0
