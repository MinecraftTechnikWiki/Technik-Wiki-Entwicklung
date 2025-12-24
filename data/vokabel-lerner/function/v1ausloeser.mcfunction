
scoreboard players remove @s[scores={PZVokLe.1Ausl=1..4}] PZVokLe.1Ausl 1
execute store result storage vokabel-lerner:v1daten "EigVokLe.1Argumente".Index int 1 run scoreboard players get @s PZVokLe.1Ausl
execute if entity @s[scores={PZVokLe.1Ausl=0..3}] run function vokabel-lerner:v1uebersetzen with storage vokabel-lerner:v1daten "EigVokLe.1Argumente"

data modify storage vokabel-lerner:v1daten "EigVokLe.1Wort" set value []
data modify storage vokabel-lerner:v1daten "EigVokLe.1Worte" set value []

#execute store result score VarVokLe.1Index PZVokLe.1Ausl run random value 0..2147483647 vokabel-lerner:v1zufall
#scoreboard players operation VarVokLe.1Index PZVokLe.1Ausl %= VarVokLe.1Woerter PZVokLe.1Ausl

#execute store result score VarVokLe.1Index PZVokLe.1Ausl run random value 0..99 vokabel-lerner:v1zufall
#store result score VarVokLe.1Index PZVokLe.1Ausl

execute store result storage vokabel-lerner:v1daten "EigVokLe.1Argumente".Index int 1 run random value 0..99 vokabel-lerner:v1wort1
function vokabel-lerner:v1wort with storage vokabel-lerner:v1daten "EigVokLe.1Argumente"
#tellraw @s ["Debug: ",{storage:"vokabel-lerner:v1daten",nbt:'"EigVokLe.1Argumente".Index',bold:true}]

execute store result storage vokabel-lerner:v1daten "EigVokLe.1Argumente".Index int 1 run random value 0..99 vokabel-lerner:v1wort2
function vokabel-lerner:v1wort with storage vokabel-lerner:v1daten "EigVokLe.1Argumente"
#tellraw @s ["Debug: ",{storage:"vokabel-lerner:v1daten",nbt:'"EigVokLe.1Argumente".Index',bold:true}]

execute store result storage vokabel-lerner:v1daten "EigVokLe.1Argumente".Index int 1 run random value 0..99 vokabel-lerner:v1wort3
function vokabel-lerner:v1wort with storage vokabel-lerner:v1daten "EigVokLe.1Argumente"
#tellraw @s ["Debug: ",{storage:"vokabel-lerner:v1daten",nbt:'"EigVokLe.1Argumente".Index',bold:true}]

execute store result storage vokabel-lerner:v1daten "EigVokLe.1Argumente".Index int 1 run random value 0..99 vokabel-lerner:v1wort4
function vokabel-lerner:v1wort with storage vokabel-lerner:v1daten "EigVokLe.1Argumente"
#tellraw @s ["Debug: ",{storage:"vokabel-lerner:v1daten",nbt:'"EigVokLe.1Argumente".Index',bold:true}]

execute store result storage vokabel-lerner:v1daten "EigVokLe.1Argumente".Index int 1 run random value 0..3 vokabel-lerner:v1wort
function vokabel-lerner:v1wort with storage vokabel-lerner:v1daten "EigVokLe.1Argumente"


execute store result score VarVokLe.1Sprache PZVokLe.1Ausl run data get storage vokabel-lerner:v1daten "EigVokLe.1Sprache"[0].Zahl
execute if score VarVokLe.1Sprache PZVokLe.1Ausl matches 2 store result score VarVokLe.1Sprache PZVokLe.1Ausl run random value 0..1 vokabel-lerner:v1sprache

execute if score VarVokLe.1Sprache PZVokLe.1Ausl matches 1 run data modify storage vokabel-lerner:v1daten "EigVokLe.1Wort" prepend from storage vokabel-lerner:v1daten "EigVokLe.1Wort"[1]

execute if score VarVokLe.1Sprache PZVokLe.1Ausl matches 1 run data remove storage vokabel-lerner:v1daten "EigVokLe.1Worte"[][0]
execute if score VarVokLe.1Sprache PZVokLe.1Ausl matches 1 run data modify storage vokabel-lerner:v1daten "EigVokLe.1Worte"[] prepend value ""

#execute if score VarVokLe.1Sprache PZVokLe.1Ausl matches 1 run data modify storage vokabel-lerner:v1daten "EigVokLe.1Worte"[0] prepend from storage vokabel-lerner:v1daten "EigVokLe.1Worte"[0][1]
#execute if score VarVokLe.1Sprache PZVokLe.1Ausl matches 1 run data modify storage vokabel-lerner:v1daten "EigVokLe.1Worte"[1] prepend from storage vokabel-lerner:v1daten "EigVokLe.1Worte"[1][1]
#execute if score VarVokLe.1Sprache PZVokLe.1Ausl matches 1 run data modify storage vokabel-lerner:v1daten "EigVokLe.1Worte"[2] prepend from storage vokabel-lerner:v1daten "EigVokLe.1Worte"[2][1]
#execute if score VarVokLe.1Sprache PZVokLe.1Ausl matches 1 run data modify storage vokabel-lerner:v1daten "EigVokLe.1Worte"[3] prepend from storage vokabel-lerner:v1daten "EigVokLe.1Worte"[3][1]

execute if entity @s[scores={PZVokLe.1Ausl=-1}] run data modify storage vokabel-lerner:v1daten "EigVokLe.1Sprache" append from storage vokabel-lerner:v1daten "EigVokLe.1Sprache"[0]
execute if entity @s[scores={PZVokLe.1Ausl=-1}] run data remove storage vokabel-lerner:v1daten "EigVokLe.1Sprache"[0]

# Dem Spieler wird im Chat die Optionen-Liste angezeigt, mit Logik-, Richtungs- und Variablen-Option.
tellraw @s ["Vokabel-Lerner.1:\n",{text:"sprache = ",bold:true},{storage:"vokabel-lerner:v1daten",nbt:'"EigVokLe.1Sprache"[0].Text',color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:["",{text:"Tippe für Übersetzung = "},{storage:"vokabel-lerner:v1daten",nbt:'"EigVokLe.1Sprache"[1].Text',bold:true}] },click_event:{action:"run_command",command:"/trigger PZVokLe.1Ausl set -1"} },"\n",{text:"uebersetze = ",bold:true},{storage:"vokabel-lerner:v1daten",nbt:'"EigVokLe.1Wort"[0]',color:"gold",bold:true},"\n",{text:"A) = ",bold:true},{storage:"vokabel-lerner:v1daten",nbt:'"EigVokLe.1Worte"[0][1]',color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:{text:"Tippe für Antwort A"} },click_event:{action:"run_command",command:"/trigger PZVokLe.1Ausl set 1"} },"\n",{text:"B) = ",bold:true},{storage:"vokabel-lerner:v1daten",nbt:'"EigVokLe.1Worte"[1][1]',color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:{text:"Tippe für Antwort B"} },click_event:{action:"run_command",command:"/trigger PZVokLe.1Ausl set 2"} },"\n",{text:"C) = ",bold:true},{storage:"vokabel-lerner:v1daten",nbt:'"EigVokLe.1Worte"[2][1]',color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:{text:"Tippe für Antwort C"} },click_event:{action:"run_command",command:"/trigger PZVokLe.1Ausl set 3"} },"\n",{text:"D) = ",bold:true},{storage:"vokabel-lerner:v1daten",nbt:'"EigVokLe.1Worte"[3][1]',color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:{text:"Tippe für Antwort D"} },click_event:{action:"run_command",command:"/trigger PZVokLe.1Ausl set 4"} }]

# Damit der Spieler nach dem anklicken der Optionen erneut die Berechtigung erhält um nochmals eine Option aktivieren zu können.
scoreboard players enable @s PZVokLe.1Ausl
scoreboard players set @s PZVokLe.1Ausl 0
