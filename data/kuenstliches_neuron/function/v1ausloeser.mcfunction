
#execute if entity @s[scores={PZKNeur.1Wert=1}] run scoreboard players add @n[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert] PZKNeur.1Wert 1
#execute if entity @s[scores={PZKNeur.1Wert=-1}] run scoreboard players remove @n[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert] PZKNeur.1Wert 1

#execute if entity @s[scores={PZKNeur.1Wert=2}] as @n[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert,tag=EtiKNeur.1Bool] run data merge entity @s {CustomName:{bold:true,color:"green",text:"wahr"} }
#execute if entity @s[scores={PZKNeur.1Wert=-2}] as @n[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert,tag=EtiKNeur.1Bool] run data merge entity @s {CustomName:{bold:true,color:"red",text:"falsch"} }

#execute if score @n[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert,name="wahr"] PZKNeur.1Wert >= @n[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert] PZKNeur.1Wert

#execute if entity @s[scores={PZKNeur.1Wert=3}] as @n[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert] run scoreboard players add @s[scores={PZKNeur.1Wert=..98}] PZKNeur.1Wert 1
#execute if entity @s[scores={PZKNeur.1Wert=-3}] as @n[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert] run scoreboard players remove @s[scores={PZKNeur.1Wert=2..}] PZKNeur.1Wert 1

##
#tag @n[type=minecraft:armor_stand,tag=EtiKNeur.1Ausloeser,tag=EtiKNeur.1Wert] add EtiKNeur.1Selbst
#execute at @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schild] run data merge block ~ ~ ~ {front_text:{messages:[{score:{name:"@n[type=minecraft:armor_stand,tag=EtiKNeur.1Selbst]",objective:"PZKNeur.1Wert"},color:"dark_purple",bold:true},"","",""]} }
#execute at @e[type=minecraft:armor_stand,tag=EtiKNeur.1Schild] run data modify entity @n[type=minecraft:armor_stand,tag=EtiKNeur.1Selbst] CustomName set from block ~ ~ ~ front_text.messages[0]
#tag @n[type=minecraft:armor_stand,tag=EtiKNeur.1Selbst] remove EtiKNeur.1Selbst
##

execute if entity @s[scores={PZKNeur.1Wert=1}] run scoreboard players add VarKNeur.1Variable1 PZKNeur.1Wert 1
execute if entity @s[scores={PZKNeur.1Wert=2}] run scoreboard players remove VarKNeur.1Variable1 PZKNeur.1Wert 1

execute if entity @s[scores={PZKNeur.1Wert=1..2}] store result entity @n[type=minecraft:marker,tag=EtiKNeur.1Neuron] data."EigKNeur.1Eingang"[0] int 1 run scoreboard players get VarKNeur.1Variable1 PZKNeur.1Wert
execute store result score VarKNeur.1Variable1 PZKNeur.1Wert run data get entity @n[type=minecraft:marker,tag=EtiKNeur.1Neuron] data."EigKNeur.1Eingang"[0] 1

execute if entity @s[scores={PZKNeur.1Wert=3}] run scoreboard players add VarKNeur.1Variable2 PZKNeur.1Wert 1
execute if entity @s[scores={PZKNeur.1Wert=4}] run scoreboard players remove VarKNeur.1Variable2 PZKNeur.1Wert 1

execute if entity @s[scores={PZKNeur.1Wert=3..4}] store result entity @n[type=minecraft:marker,tag=EtiKNeur.1Neuron] data."EigKNeur.1Eingang"[1] int 1 run scoreboard players get VarKNeur.1Variable2 PZKNeur.1Wert
execute store result score VarKNeur.1Variable2 PZKNeur.1Wert run data get entity @n[type=minecraft:marker,tag=EtiKNeur.1Neuron] data."EigKNeur.1Eingang"[1] 1

execute if entity @s[scores={PZKNeur.1Wert=-1}] run scoreboard players add @n[type=minecraft:marker,tag=EtiKNeur.1Neuron] PZKNeur.1Wert 1
execute if entity @s[scores={PZKNeur.1Wert=-2}] run scoreboard players remove @n[type=minecraft:marker,tag=EtiKNeur.1Neuron] PZKNeur.1Wert 1

scoreboard players operation VarKNeur.1Summe PZKNeur.1Wert = VarKNeur.1Variable1 PZKNeur.1Wert
scoreboard players operation VarKNeur.1Summe PZKNeur.1Wert += VarKNeur.1Variable2 PZKNeur.1Wert

execute as @n[type=minecraft:marker,tag=EtiKNeur.1Neuron] if score VarKNeur.1Summe PZKNeur.1Wert >= @s PZKNeur.1Wert run data modify entity @s data."EigKNeur.1Ausgang" set value {text:"wahr",color:"green",bold:true}
execute as @n[type=minecraft:marker,tag=EtiKNeur.1Neuron] if score VarKNeur.1Summe PZKNeur.1Wert < @s PZKNeur.1Wert run data modify entity @s data."EigKNeur.1Ausgang" set value {text:"falsch",color:"red",bold:true}

tellraw @s ["Künstliches Neuron.1:\n",{text:"var1 = ",bold:true},{text:"var1 + 1",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für Variable 1 + 1"} },click_event:{action:"run_command",command:"/trigger PZKNeur.1Wert set 1"} },"\n",{text:"var1 = ",bold:true},{text:"var1 - 1",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für Variable 1 + 1"} },click_event:{action:"run_command",command:"/trigger PZKNeur.1Wert set 2"} },"\n",{text:"var1 == ",bold:true},{score:{name:"VarKNeur.1Variable1",objective:"PZKNeur.1Wert"},color:"dark_purple",bold:true},"\n",{text:"var2 = ",bold:true},{text:"var2 + 1",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für Variable 2 + 1"} },click_event:{action:"run_command",command:"/trigger PZKNeur.1Wert set 3"} },"\n",{text:"var2 = ",bold:true},{text:"var2 - 1",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für Variable 2 + 1"} },click_event:{action:"run_command",command:"/trigger PZKNeur.1Wert set 4"} },"\n",{text:"var2 == ",bold:true},{score:{name:"VarKNeur.1Variable2",objective:"PZKNeur.1Wert"},color:"dark_purple",bold:true},"\n",{text:"schwelle = ",bold:true},{text:"schwelle + 1",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für Schwelle + 1"} },click_event:{action:"run_command",command:"/trigger PZKNeur.1Wert set -1"} },"\n",{text:"schwelle = ",bold:true},{text:"schwelle - 1",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für Schwelle + 1"} },click_event:{action:"run_command",command:"/trigger PZKNeur.1Wert set -2"} },"\n",{text:"schwelle == ",bold:true},{score:{name:"@n[type=minecraft:marker,tag=EtiKNeur.1Neuron]",objective:"PZKNeur.1Wert"},color:"dark_purple",bold:true},"\n",{text:"var1 + var2 >= schwelle == ",color:"gray",bold:true},{entity:"@n[type=minecraft:marker,tag=EtiKNeur.1Neuron]",nbt:'data."EigKNeur.1Ausgang"',interpret:true}]

#execute as @n[type=minecraft:armor_stand,tag=EtiKNeur.1Eingangswert] run tellraw @p ["Künstliches Neuron.1:\n",{text:"Neuron.wert = ",bold:true},{text:"wert + 1/100",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für den Eingangswert + 1/100"} },click_event:{action:"run_command",command:"/trigger PZKNeur.1Wert set 1"} },"\n",{text:"Neuron.wert = ",bold:true},{text:"wert - 1/100",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für den Eingangswert - 1/100"} },click_event:{action:"run_command",command:"/trigger PZKNeur.1Wert set -1"} },"\n",{text:"Neuron.wert == ",bold:true},{score:{name:"@s",objective:"PZKNeur.1Wert"},color:"dark_purple",bold:true},"\n",{text:"Neuron.bool = ",bold:true},{text:"wahr",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für den Wert wahr"} },click_event:{action:"run_command",command:"/trigger PZKNeur.1Wert set 2"} },"\n",{text:"Neuron.bool = ",bold:true},{text:"falsch",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für den Wert falsch"} },click_event:{action:"run_command",command:"/trigger PZKNeur.1Wert set -2"} },"\n",{text:"Neuron.bool == ",bold:true},{entity:"@s",nbt:"CustomName",interpret:true} ]

#execute as @n[type=minecraft:armor_stand,tag=EtiKNeur.1Schwellenwert] run tellraw @p ["Künstliches Neuron.1:\n",{text:"Neuron.wert = ",bold:true},{text:"wert + 1/100",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für den Schwellenwert + 1/100"} },click_event:{action:"run_command",command:"/trigger PZKNeur.1Wert set 3"} },"\n",{text:"Neuron.wert = ",bold:true},{text:"wert - 1/100",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für den Schwellenwert - 1/100"} },click_event:{action:"run_command",command:"/trigger PZKNeur.1Wert set -3"} },"\n",{text:"Neuron.wert == ",bold:true},{score:{name:"@s",objective:"PZKNeur.1Wert"},color:"dark_purple",bold:true},"\n",{text:"Neuron.ergebnis (",bold:true},{text:"=bool",color:"gray",bold:true},{text:") == ",bold:true},{entity:"@s",nbt:"CustomName",interpret:true} ]

scoreboard players enable @s PZKNeur.1Wert
scoreboard players set @s PZKNeur.1Wert 0
