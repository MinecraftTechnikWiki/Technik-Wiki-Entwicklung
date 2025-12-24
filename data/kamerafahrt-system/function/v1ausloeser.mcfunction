# Neue Kamerafahrt wird angelegt.
execute if entity @s[scores={PZKamFah.1Ausl=1}] run data modify storage kamerafahrt-system:v1daten "EigKamFah.1Kamera" append value {EigKamFah.1Positionen:[]}
execute if entity @s[scores={PZKamFah.1Ausl=1}] store result score VarKamFah.1Nummer PZKamFah.1Wert run data get storage kamerafahrt-system:v1daten "EigKamFah.1Kamera"

#store result storage kamerafahrt-system:v1daten "EigKamFah.1Kamera"[-1]."EigKamFah.1Nummer" int 1 run scoreboard players add VarKamFah.1Nummer PZKamFah.1Wert 1

# Aktuelle Kamerafahrt wird entfernt.
execute if entity @s[scores={PZKamFah.1Ausl=-1}] run data remove storage kamerafahrt-system:v1daten "EigKamFah.1Kamera"[-1]
execute if entity @s[scores={PZKamFah.1Ausl=-1}] as @e[type=minecraft:marker,tag=EtiKamFah.1Position] if score @s PZKamFah.1Wert = VarKamFah.1Nummer PZKamFah.1Wert run kill @s

# Neue Kameraposition.
execute if entity @s[scores={PZKamFah.1Ausl=2}] run data modify storage kamerafahrt-system:v1daten "EigKamFah.1NeuePosition" set value {X:0,Y:0,Z:0,XR:0,YR:0}

#execute if entity @s[scores={PZKamFah.1Ausl=2}] run data modify storage kamerafahrt-system:v1daten "EigKamFah.1Kamera"[-1]."EigKamFah.1Positionen" append value [{EigKamFah.1Position:{X:0,Y:0,Z:0},EigKamFah.1Rotation:{X:0,Y:0} }]

# Koordinaten X, Y und Z sowie Rotationswinkel X und Y werden übertragen.
execute if entity @s[scores={PZKamFah.1Ausl=2}] store result storage kamerafahrt-system:v1daten "EigKamFah.1NeuePosition".X int 1 run data get entity @s Pos[0]
execute if entity @s[scores={PZKamFah.1Ausl=2}] store result storage kamerafahrt-system:v1daten "EigKamFah.1NeuePosition".Y int 1 run data get entity @s Pos[1]
execute if entity @s[scores={PZKamFah.1Ausl=2}] store result storage kamerafahrt-system:v1daten "EigKamFah.1NeuePosition".Z int 1 run data get entity @s Pos[2]
execute if entity @s[scores={PZKamFah.1Ausl=2}] store result storage kamerafahrt-system:v1daten "EigKamFah.1NeuePosition".XR int 1 run data get entity @s Rotation[0]
execute if entity @s[scores={PZKamFah.1Ausl=2}] store result storage kamerafahrt-system:v1daten "EigKamFah.1NeuePosition".YR int 1 run data get entity @s Rotation[1]

# Die neue Kameraposition wird in die Liste hinten eingefügt.
execute if entity @s[scores={PZKamFah.1Ausl=2}] run data modify storage kamerafahrt-system:v1daten "EigKamFah.1Kamera"[-1]."EigKamFah.1Positionen" append from storage kamerafahrt-system:v1daten "EigKamFah.1NeuePosition"

# Die Anzahl der Kamerapositionen wird ausgelesen.
execute store result score VarKamFah.1Anzahl PZKamFah.1Wert run data get storage kamerafahrt-system:v1daten "EigKamFah.1Kamera"[-1]."EigKamFah.1Positionen"

# Neue Kameraposition wird in form eines Markierers gesetzt.
execute if entity @s[scores={PZKamFah.1Ausl=2}] run summon minecraft:marker ~ ~ ~ {Tags:["EtiKamFah.1Alle","EtiKamFah.1Position"]}

# Nummer der aktuellen Kamerafahrt.
execute if entity @s[scores={PZKamFah.1Ausl=2}] run scoreboard players operation @n[type=minecraft:marker,tag=EtiKamFah.1Position] PZKamFah.1Wert = VarKamFah.1Nummer PZKamFah.1Wert

# Nummer der akutellen Kameraposition.
execute if entity @s[scores={PZKamFah.1Ausl=2}] run scoreboard players operation @n[type=minecraft:marker,tag=EtiKamFah.1Position] PZKamFah.1Ausl = VarKamFah.1Anzahl PZKamFah.1Wert

# Startpunkt der aktuellen Kamerafahrt.
execute if entity @s[scores={PZKamFah.1Ausl=2}] if score VarKamFah.1Anzahl PZKamFah.1Wert matches 1 run tag @n[type=minecraft:marker,tag=EtiKamFah.1Position] add EtiKamFah.1Start

# Stopppunkt der aktuellen Kamerafahrt.
execute if entity @s[scores={PZKamFah.1Ausl=2}] if score VarKamFah.1Anzahl PZKamFah.1Wert matches 2.. as @e[type=minecraft:marker,tag=EtiKamFah.1Position,tag=EtiKamFah.1Stopp] if score @s PZKamFah.1Wert = VarKamFah.1Nummer PZKamFah.1Wert run tag @s remove EtiKamFah.1Stopp
execute if entity @s[scores={PZKamFah.1Ausl=2}] if score VarKamFah.1Anzahl PZKamFah.1Wert matches 2.. as @e[type=minecraft:marker,tag=EtiKamFah.1Position] if score @s PZKamFah.1Wert = VarKamFah.1Nummer PZKamFah.1Wert if score @s PZKamFah.1Ausl = VarKamFah.1Anzahl PZKamFah.1Wert run tag @s add EtiKamFah.1Stopp







#execute if entity @s[scores={PZKamFah.1Ausl=1}] store result storage kamerafahrt-system:v1daten "EigKamFah.1Position".X int 1 run data get entity @s Pos[0]
#execute if entity @s[scores={PZKamFah.1Ausl=1}] store result storage kamerafahrt-system:v1daten "EigKamFah.1Position".Y int 1 run data get entity @s Pos[1]
#execute if entity @s[scores={PZKamFah.1Ausl=1}] store result storage kamerafahrt-system:v1daten "EigKamFah.1Position".Z int 1 run data get entity @s Pos[2]

#data modify storage kamerafahrt-system:v1daten "EigKamFah.1Start"[0] set from storage kamerafahrt-system:v1daten "EigKamFah.1Position".X
#data modify storage kamerafahrt-system:v1daten "EigKamFah.1Start"[1] set from storage kamerafahrt-system:v1daten "EigKamFah.1Position".Y
#data modify storage kamerafahrt-system:v1daten "EigKamFah.1Start"[2] set from storage kamerafahrt-system:v1daten "EigKamFah.1Position".Z

#title @s[scores={PZKamFah.1Ausl=1}] actionbar ["",{text:"X = ",color:"gray",bold:true},{storage:"kamerafahrt-system:v1daten",nbt:'"EigKamFah.1Start"[0]',color:"red",bold:true},{text:" Y = ",color:"gray",bold:true},{storage:"kamerafahrt-system:v1daten",nbt:'"EigKamFah.1Start"[1]',color:"blue",bold:true},{text:" Z = ",color:"gray",bold:true},{storage:"kamerafahrt-system:v1daten",nbt:'"EigKamFah.1Start"[2]',color:"green",bold:true}]

#execute if entity @s[scores={PZKamFah.1Ausl=2}] run kill @e[type=minecraft:marker,tag=EtiKamFah.1Ende]
#execute if entity @s[scores={PZKamFah.1Ausl=2}] run summon minecraft:marker ~1 ~1 ~1 {Tags:["EtiKamFah.1Alle","EtiKamFah.1Position","EtiKamFah.1Ende"]}

#execute if entity @s[scores={PZKamFah.1Ausl=2}] store result storage kamerafahrt-system:v1daten "EigKamFah.1Position".DX int 1 run data get entity @s Pos[0]
#execute if entity @s[scores={PZKamFah.1Ausl=2}] store result storage kamerafahrt-system:v1daten "EigKamFah.1Position".DY int 1 run data get entity @s Pos[1]
#execute if entity @s[scores={PZKamFah.1Ausl=2}] store result storage kamerafahrt-system:v1daten "EigKamFah.1Position".DZ int 1 run data get entity @s Pos[2]

#data modify storage kamerafahrt-system:v1daten "EigKamFah.1Ende"[0] set from storage kamerafahrt-system:v1daten "EigKamFah.1Position".DX
#data modify storage kamerafahrt-system:v1daten "EigKamFah.1Ende"[1] set from storage kamerafahrt-system:v1daten "EigKamFah.1Position".DY
#data modify storage kamerafahrt-system:v1daten "EigKamFah.1Ende"[2] set from storage kamerafahrt-system:v1daten "EigKamFah.1Position".DZ

#title @s[scores={PZKamFah.1Ausl=2}] actionbar ["",{text:"DX = ",color:"gray",bold:true},{storage:"kamerafahrt-system:v1daten",nbt:'"EigKamFah.1Ende"[0]',color:"red",bold:true},{text:" DY = ",color:"gray",bold:true},{storage:"kamerafahrt-system:v1daten",nbt:'"EigKamFah.1Ende"[1]',color:"blue",bold:true},{text:" DZ = ",color:"gray",bold:true},{storage:"kamerafahrt-system:v1daten",nbt:'"EigKamFah.1Ende"[2]',color:"green",bold:true}]

#execute if entity @s[scores={PZKamFah.1Ausl=1..2}] run tag @e[type=minecraft:marker,tag=EtiKamFah.1Koordinaten,limit=2] remove EtiKamFah.1Koordinaten

#execute if entity @s[scores={PZKamFah.1Ausl=3}] run data modify storage kamerafahrt-system:v1daten "EigKamFah.1Luft" append from storage kamerafahrt-system:v1daten "EigKamFah.1Luft"[0]
#execute if entity @s[scores={PZKamFah.1Ausl=3}] run data remove storage kamerafahrt-system:v1daten "EigKamFah.1Luft"[0]
#execute if entity @s[scores={PZKamFah.1Ausl=3}] store success score VarKamFah.1Luft PZKamFah.1Wert unless score VarKamFah.1Luft PZKamFah.1Wert matches 1


execute if entity @s[scores={PZKamFah.1Ausl=4}] run summon minecraft:armor_stand ~ ~ ~ {Small:true,Invisible:true,Tags:["EtiKamFah.1Alle","EtiKamFah.1Kamera"]}
scoreboard players set @n[type=minecraft:armor_stand,tag=EtiKamFah.1Kamera] PZKamFah.1Ausl 2

execute if entity @s[scores={PZKamFah.1Ausl=4}] as @e[type=minecraft:marker,tag=EtiKamFah.1Position,tag=EtiKamFah.1Start] if score @s PZKamFah.1Wert = VarKamFah.1Nummer PZKamFah.1Wert at @s run teleport @n[type=minecraft:armor_stand,tag=EtiKamFah.1Kamera] ~ ~ ~ ~ ~

gamemode spectator @s[scores={PZKamFah.1Ausl=4}] 
spectate @n[type=minecraft:armor_stand,tag=EtiKamFah.1Kamera] @s[scores={PZKamFah.1Ausl=4}] 



#execute if entity @s[scores={PZKamFah.1Ausl=4}] run function kamerafahrt-system:v1koordinaten

#tellraw @s {storage:"kamerafahrt-system:v1daten",nbt:'"EigKamFah.1Kamera"[-1]."EigKamFah.1Nummer"',color:"dark_purple",bold:true}


# Dem Spieler wird im Chat die Optionen-Liste angezeigt.
tellraw @s ["Kamerafahrt-System.1:\n",{text:"kamera = ",bold:true},{text:"neu()",color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:{text:"Tippe um die Kamerafahrt zu erstellen"} },click_event:{action:"run_command",command:"/trigger PZKamFah.1Ausl set 1"} },"\n",{text:"kamera[",bold:true},{score:{name:"VarKamFah.1Nummer",objective:"PZKamFah.1Wert"},color:"dark_purple",bold:true},{text:"]",bold:true},"\n",{text:"kamera = ",bold:true},{text:"löschen()",color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:{text:"Tippe um die Kamerafahrt zu löschen"} },click_event:{action:"run_command",command:"/trigger PZKamFah.1Ausl set -1"} },"\n",{text:"kamera.position = ",bold:true},{text:"Spieler.position()",color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:{text:"Tippe für die Position des Kamerapunktes"} },click_event:{action:"run_command",command:"/trigger PZKamFah.1Ausl set 2"} },"\n",{text:"position == ",bold:true},{storage:"kamerafahrt-system:v1daten",nbt:'"EigKamFah.1Kamera"[-1]."EigKamFah.1Positionen"[-1]."EigKamFah.1Position"',color:"dark_purple",bold:true},"\n",{text:"kamera.index (",bold:true},{text:"index + 1",color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:{text:"Tippe für die nächste Kamerafahrt"} },click_event:{action:"run_command",command:"/trigger PZKamFah.1Ausl set 3"} },{text:") == ",bold:true},{score:{name:"@s",objective:"PZKamFah.1Wert"},color:"dark_purple",bold:true},"\n",{text:"kamera.fahrt()",color:"gray",underlined:true,bold:true,hover_event:{action:"show_text",value:{text:"Tippe um die Kamerafahrt zu starten"} },click_event:{action:"run_command",command:"/trigger PZKamFah.1Ausl set 4"} } ]

# Damit der Spieler nach dem anklicken der Optionen erneut die Berechtigung erhält um nochmals eine Option aktivieren zu können.
scoreboard players enable @s PZKamFah.1Ausl
scoreboard players set @s PZKamFah.1Ausl 0
