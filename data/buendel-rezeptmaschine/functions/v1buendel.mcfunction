
data modify storage buendel-rezeptmaschine:v1daten "EigBuRezM.1Buendel" set from entity @s SelectedItem.tag.Items

#execute store success score VarBuRezM.1Rezept PZBuRezM.1Buend unless data storage buendel-rezeptmaschine:v1daten {EigBuRezM.1Buendel:[{tag:{EigBuRezM.1Rezept:true} } ] }
#if score VarBuRezM.1Rezept PZBuRezM.1Buend matches 1 
execute store success score VarBuRezM.1Rezept PZBuRezM.1Buend if data storage buendel-rezeptmaschine:v1daten {EigBuRezM.1Buendel:[{id:"minecraft:stone"},{id:"minecraft:cobblestone"}]}

execute if score VarBuRezM.1Rezept PZBuRezM.1Buend matches 0 if data storage buendel-rezeptmaschine:v1daten {EigBuRezM.1Buendel:[{id:"minecraft:stone"},{id:"minecraft:coal"}]} run scoreboard players set VarBuRezM.1Rezept PZBuRezM.1Buend 2

execute if score VarBuRezM.1Rezept PZBuRezM.1Buend matches 0 if data storage buendel-rezeptmaschine:v1daten {EigBuRezM.1Buendel:[{id:"minecraft:stone"},{id:"minecraft:gold_ingot"}]} run scoreboard players set VarBuRezM.1Rezept PZBuRezM.1Buend 3

execute if score VarBuRezM.1Rezept PZBuRezM.1Buend matches 1.. at @s as @e[type=minecraft:item_frame,tag=EtiBuRezM.1Rahmen,sort=nearest,limit=1] run function buendel-rezeptmaschine:v1rezepte
