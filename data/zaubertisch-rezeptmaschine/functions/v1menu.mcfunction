
clear @a[distance=..5] #zaubertisch-rezeptmaschine:v1menu{EigZaRezM.1Menu:true}
kill @e[distance=..2,type=minecraft:item,nbt={Item:{tag:{EigZaRezM.1Menu:true} } },sort=nearest]

data remove block ~ ~ ~ Items[{tag:{EigZaRezM.1Menu:true} }]
execute store result score VarZaRezM.1Slots PZZaRezM.1Wert run data get block ~ ~ ~ Items

item replace block ~ ~ ~ container.3 with minecraft:black_stained_glass_pane{EigZaRezM.1Alle:true,EigZaRezM.1Menu:true,display:{Name:'{"text":""}'} }
item replace block ~ ~ ~ container.4 with minecraft:black_stained_glass_pane{EigZaRezM.1Alle:true,EigZaRezM.1Menu:true,display:{Name:'{"text":""}'} }
item replace block ~ ~ ~ container.6 with minecraft:black_stained_glass_pane{EigZaRezM.1Alle:true,EigZaRezM.1Menu:true,display:{Name:'{"text":""}'} }
item replace block ~ ~ ~ container.7 with minecraft:black_stained_glass_pane{EigZaRezM.1Alle:true,EigZaRezM.1Menu:true,display:{Name:'{"text":""}'} }

item replace block ~ ~ ~ container.2 with minecraft:orange_stained_glass_pane{EigZaRezM.1Alle:true,EigZaRezM.1Menu:true,display:{Name:'{"text":""}'} }
item replace block ~ ~ ~ container.5 with minecraft:orange_stained_glass_pane{EigZaRezM.1Alle:true,EigZaRezM.1Menu:true,display:{Name:'{"text":""}'} }
item replace block ~ ~ ~ container.8 with minecraft:orange_stained_glass_pane{EigZaRezM.1Alle:true,EigZaRezM.1Menu:true,display:{Name:'{"text":""}'} }


execute if score VarZaRezM.1Slots PZZaRezM.1Wert matches 1.. if data block ~ ~ ~ Items[{Slot:0b}] run tag @s add EtiZaRezM.1Gegenstand

execute if score VarZaRezM.1Slots PZZaRezM.1Wert matches 2.. if data block ~ ~ ~ Items[{Slot:1b,id:"minecraft:lapis_lazuli"}] run tag @s add EtiZaRezM.1Zaubern

execute if entity @s[tag=EtiZaRezM.1Zaubern,tag=EtiZaRezM.1Gegenstand,tag=!EtiZaRezM.1Slot] run function zaubertisch-rezeptmaschine:v1rezeptblock

tag @s[tag=EtiZaRezM.1Zaubern] remove EtiZaRezM.1Zaubern


tag @s[tag=EtiZaRezM.1Gegenstand,tag=!EtiZaRezM.1Slot] add EtiZaRezM.1Slot
tag @s[tag=!EtiZaRezM.1Gegenstand,tag=EtiZaRezM.1Slot] remove EtiZaRezM.1Slot

tag @s[tag=EtiZaRezM.1Gegenstand] add EtiZaRezM.1Gegenstand




#data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1Gegenstand" set from block ~ ~ ~ Items[{Slot:0}].id
#data modify storage zaubertisch-rezeptmaschine:v1daten "EigZaRezM.1GegenstandVergl" set from block ~ ~ ~ Items[{Slot:0}].id

#scoreboard players operation VarZaRezM.1Material PZZaRezM.1Mat = @s PZZaRezM.1Mat

#execute if entity @s[tag=EtiZaRezM.1Zaubern] run function zaubertisch-rezeptmaschine:v1material

#execute if score VarZaRezM.1Material PZZaRezM.1Mat matches 1.. unless score VarZaRezM.1Material PZZaRezM.1Mat = @s PZZaRezM.1Mat run tag @s add EtiZaRezM.1AnderesMaterial
#tag @s[tag=EtiZaRezM.1Zaubern,tag=EtiZaRezM.1AnderesMaterial] remove EtiZaRezM.1Zaubern
#execute if entity @s[tag=EtiZaRezM.1AnderesMaterial] unless data block ~ ~ ~ Items[{Slot:5b}] run tag @s remove EtiZaRezM.1AnderesMaterial


#execute if entity @s[tag=!EtiZaRezM.1Zaubern] run scoreboard players set @s PZZaRezM.1Fort 0
