
scoreboard players remove @s[scores={PZKartDar.1Ausl=1..4}] PZKartDar.1Ausl 1
execute store result storage kartendarstellung:v1daten "EigKartDar.1Argumente".Index int 1 run scoreboard players get @s PZKartDar.1Ausl
execute if entity @s[scores={PZKartDar.1Ausl=0..3}] run function kartendarstellung:v1uebersetzen with storage kartendarstellung:v1daten "EigKartDar.1Argumente"

data modify storage kartendarstellung:v1daten "EigKartDar.1Wort" set value []
data modify storage kartendarstellung:v1daten "EigKartDar.1Worte" set value []

#execute store result score VarKartDar.1Index PZKartDar.1Ausl run random value 0..2147483647 kartendarstellung:v1zufall
#scoreboard players operation VarKartDar.1Index PZKartDar.1Ausl %= VarKartDar.1Woerter PZKartDar.1Ausl

#execute store result score VarKartDar.1Index PZKartDar.1Ausl run random value 0..99 kartendarstellung:v1zufall
#store result score VarKartDar.1Index PZKartDar.1Ausl

execute store result storage kartendarstellung:v1daten "EigKartDar.1Argumente".Index int 1 run random value 0..99 kartendarstellung:v1wort1
function kartendarstellung:v1wort with storage kartendarstellung:v1daten "EigKartDar.1Argumente"
#tellraw @s ["Debug: ",{storage:"kartendarstellung:v1daten",nbt:'"EigKartDar.1Argumente".Index',bold:true}]

execute store result storage kartendarstellung:v1daten "EigKartDar.1Argumente".Index int 1 run random value 0..99 kartendarstellung:v1wort2
function kartendarstellung:v1wort with storage kartendarstellung:v1daten "EigKartDar.1Argumente"
#tellraw @s ["Debug: ",{storage:"kartendarstellung:v1daten",nbt:'"EigKartDar.1Argumente".Index',bold:true}]

execute store result storage kartendarstellung:v1daten "EigKartDar.1Argumente".Index int 1 run random value 0..99 kartendarstellung:v1wort3
function kartendarstellung:v1wort with storage kartendarstellung:v1daten "EigKartDar.1Argumente"
#tellraw @s ["Debug: ",{storage:"kartendarstellung:v1daten",nbt:'"EigKartDar.1Argumente".Index',bold:true}]

execute store result storage kartendarstellung:v1daten "EigKartDar.1Argumente".Index int 1 run random value 0..99 kartendarstellung:v1wort4
function kartendarstellung:v1wort with storage kartendarstellung:v1daten "EigKartDar.1Argumente"
#tellraw @s ["Debug: ",{storage:"kartendarstellung:v1daten",nbt:'"EigKartDar.1Argumente".Index',bold:true}]

execute store result storage kartendarstellung:v1daten "EigKartDar.1Argumente".Index int 1 run random value 0..3 kartendarstellung:v1wort
function kartendarstellung:v1wort with storage kartendarstellung:v1daten "EigKartDar.1Argumente"


execute store result score VarKartDar.1Sprache PZKartDar.1Ausl run data get storage kartendarstellung:v1daten "EigKartDar.1Sprache"[0].Zahl
execute if score VarKartDar.1Sprache PZKartDar.1Ausl matches 2 store result score VarKartDar.1Sprache PZKartDar.1Ausl run random value 0..1 kartendarstellung:v1sprache

execute if score VarKartDar.1Sprache PZKartDar.1Ausl matches 1 run data modify storage kartendarstellung:v1daten "EigKartDar.1Wort" prepend from storage kartendarstellung:v1daten "EigKartDar.1Wort"[1]

execute if score VarKartDar.1Sprache PZKartDar.1Ausl matches 1 run data remove storage kartendarstellung:v1daten "EigKartDar.1Worte"[][0]
execute if score VarKartDar.1Sprache PZKartDar.1Ausl matches 1 run data modify storage kartendarstellung:v1daten "EigKartDar.1Worte"[] prepend value ""

#execute if score VarKartDar.1Sprache PZKartDar.1Ausl matches 1 run data modify storage kartendarstellung:v1daten "EigKartDar.1Worte"[0] prepend from storage kartendarstellung:v1daten "EigKartDar.1Worte"[0][1]
#execute if score VarKartDar.1Sprache PZKartDar.1Ausl matches 1 run data modify storage kartendarstellung:v1daten "EigKartDar.1Worte"[1] prepend from storage kartendarstellung:v1daten "EigKartDar.1Worte"[1][1]
#execute if score VarKartDar.1Sprache PZKartDar.1Ausl matches 1 run data modify storage kartendarstellung:v1daten "EigKartDar.1Worte"[2] prepend from storage kartendarstellung:v1daten "EigKartDar.1Worte"[2][1]
#execute if score VarKartDar.1Sprache PZKartDar.1Ausl matches 1 run data modify storage kartendarstellung:v1daten "EigKartDar.1Worte"[3] prepend from storage kartendarstellung:v1daten "EigKartDar.1Worte"[3][1]

execute if entity @s[scores={PZKartDar.1Ausl=-1}] run data modify storage kartendarstellung:v1daten "EigKartDar.1Sprache" append from storage kartendarstellung:v1daten "EigKartDar.1Sprache"[0]
execute if entity @s[scores={PZKartDar.1Ausl=-1}] run data remove storage kartendarstellung:v1daten "EigKartDar.1Sprache"[0]

# Dem Spieler wird im Chat die Optionen-Liste angezeigt, mit Logik-, Richtungs- und Variablen-Option.
tellraw @s ["Kartendarstellung.1:\n",{text:"sprache = ",bold:true},{storage:"kartendarstellung:v1daten",nbt:'"EigKartDar.1Sprache"[0].Text',color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:["",{text:"Tippe für Übersetzung = "},{storage:"kartendarstellung:v1daten",nbt:'"EigKartDar.1Sprache"[1].Text',bold:true}] },click_event:{action:"run_command",command:"/trigger PZKartDar.1Ausl set -1"} },"\n",{text:"uebersetze = ",bold:true},{storage:"kartendarstellung:v1daten",nbt:'"EigKartDar.1Wort"[0]',color:"gold",bold:true},"\n",{text:"A) = ",bold:true},{storage:"kartendarstellung:v1daten",nbt:'"EigKartDar.1Worte"[0][1]',color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:{text:"Tippe für Antwort A"} },click_event:{action:"run_command",command:"/trigger PZKartDar.1Ausl set 1"} },"\n",{text:"B) = ",bold:true},{storage:"kartendarstellung:v1daten",nbt:'"EigKartDar.1Worte"[1][1]',color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:{text:"Tippe für Antwort B"} },click_event:{action:"run_command",command:"/trigger PZKartDar.1Ausl set 2"} },"\n",{text:"C) = ",bold:true},{storage:"kartendarstellung:v1daten",nbt:'"EigKartDar.1Worte"[2][1]',color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:{text:"Tippe für Antwort C"} },click_event:{action:"run_command",command:"/trigger PZKartDar.1Ausl set 3"} },"\n",{text:"D) = ",bold:true},{storage:"kartendarstellung:v1daten",nbt:'"EigKartDar.1Worte"[3][1]',color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:{text:"Tippe für Antwort D"} },click_event:{action:"run_command",command:"/trigger PZKartDar.1Ausl set 4"} }]

# Damit der Spieler nach dem anklicken der Optionen erneut die Berechtigung erhält um nochmals eine Option aktivieren zu können.
scoreboard players enable @s PZKartDar.1Ausl
scoreboard players set @s PZKartDar.1Ausl 0
