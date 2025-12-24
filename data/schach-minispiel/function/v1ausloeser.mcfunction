
execute if entity @s[scores={PZSchMS.1Brett=1}] run data merge storage schach-minispiel:v1daten {EigSchMS.1Variante:{text:"klassisches Schach",color:"blue",bold:true} }
execute if entity @s[scores={PZSchMS.1Brett=1}] run scoreboard players set VarSchMS.1Variante PZSchMS.1Brett 0

execute if entity @s[scores={PZSchMS.1Brett=2}] run data merge storage schach-minispiel:v1daten {EigSchMS.1Variante:{text:"Viererschach",color:"gold",bold:true} }
execute if entity @s[scores={PZSchMS.1Brett=2}] run scoreboard players set VarSchMS.1Variante PZSchMS.1Brett 1

execute if entity @s[scores={PZSchMS.1Brett=3}] run data merge storage schach-minispiel:v1daten {EigSchMS.1Variante:{text:"Festungsschach",color:"dark_green",bold:true} }
execute if entity @s[scores={PZSchMS.1Brett=3}] run scoreboard players set VarSchMS.1Variante PZSchMS.1Brett 2

execute if entity @s[scores={PZSchMS.1Brett=4}] run data merge storage schach-minispiel:v1daten {EigSchMS.1Horde:{text:"wahr",color:"green",bold:true} }
execute if entity @s[scores={PZSchMS.1Brett=4}] run scoreboard players set VarSchMS.1Horde PZSchMS.1Brett 1

execute if entity @s[scores={PZSchMS.1Brett=5}] run data merge storage schach-minispiel:v1daten {EigSchMS.1Horde:{text:"falsch",color:"red",bold:true} }
execute if entity @s[scores={PZSchMS.1Brett=5}] run scoreboard players set VarSchMS.1Horde PZSchMS.1Brett 0

tellraw @s ["Schach-Minispiel.1:\n",{text:"variante = ",bold:true},{text:"klassisches Schach",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für die variante = klassisches Schach"} },click_event:{action:"run_command",command:"/trigger PZSchMS.1Brett set 1"} },"\n",{text:"variante = ",bold:true},{text:"Viererschach",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für die variante = Viererschach"} },click_event:{action:"run_command",command:"/trigger PZSchMS.1Brett set 2"} },"\n",{text:"variante = ",bold:true},{text:"Festungsschach",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für die variante = Festungsschach"} },click_event:{action:"run_command",command:"/trigger PZSchMS.1Brett set 3"} },"\n",{text:"variante == ",bold:true},{storage:"schach-minispiel:v1daten",nbt:'"EigSchMS.1Variante"',interpret:true},"\n",{text:"horde = ",bold:true},{text:"wahr",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für die horde = wahr"} },click_event:{action:"run_command",command:"/trigger PZSchMS.1Brett set 4"} },"\n",{text:"horde = ",bold:true},{text:"falsch",color:"gray",bold:true,underlined:true,hover_event:{action:"show_text",value:{text:"Tippe für die horde = falsch"} },click_event:{action:"run_command",command:"/trigger PZSchMS.1Brett set 5"} },"\n",{text:"horde == ",bold:true},{storage:"schach-minispiel:v1daten",nbt:'"EigSchMS.1Horde"',interpret:true} ]

scoreboard players enable @s PZSchMS.1Brett
scoreboard players set @s PZSchMS.1Brett 0
