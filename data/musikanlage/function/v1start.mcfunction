
scoreboard objectives add PZMusA.1Note dummy ["Musikanlage.1: ",{text:"Noten-Wert",bold:true}]

data merge storage musikanlage:v1daten {EigMusA.1Noten:[]}

data modify storage musikanlage:v1daten "EigMusA.1Noten" append value [0,0,0,0,0,0,0]
data modify storage musikanlage:v1daten "EigMusA.1Noten" append value [0,0,0,0,0,0,0]
data modify storage musikanlage:v1daten "EigMusA.1Noten" append value [0,0,0,0,0,0,0]
data modify storage musikanlage:v1daten "EigMusA.1Noten" append value [0,0,0,0,0,0,0]
data modify storage musikanlage:v1daten "EigMusA.1Noten" append value [0,0,0,0,0,0,0]
data modify storage musikanlage:v1daten "EigMusA.1Noten" append value [0,0,0,0,0,0,0]
data modify storage musikanlage:v1daten "EigMusA.1Noten" append value [0,0,0,0,0,0,0]
data modify storage musikanlage:v1daten "EigMusA.1Noten" append value [0,0,0,0,0,0,0]
data modify storage musikanlage:v1daten "EigMusA.1Noten" append value [0,0,0,0,0,0,0]
data modify storage musikanlage:v1daten "EigMusA.1Noten" append value [0,0,0,0,0,0,0]
data modify storage musikanlage:v1daten "EigMusA.1Noten" append value [0,0,0,0,0,0,0]
data modify storage musikanlage:v1daten "EigMusA.1Noten" append value [0,0,0,0,0,0,0]

#data modify storage musikanlage:v1daten "EigMusA.1Noten" set from storage musikanlage:v1daten "EigMusA.1Noten"



#execute if data storage musikanlage:v1daten "EigMusA.1Noten"[0][0]

execute store result score VarMusA.1Note PZMusA.1Note run data get storage musikanlage:v1daten "EigMusA.1Noten"[0][0]
execute if score VarMusA.1Note PZMusA.1Note matches 1 run playsound minecraft:block.note_block.guitar master @p ~ ~ ~ 1 1 0.1

execute store result score VarMusA.1Note PZMusA.1Note run data get storage musikanlage:v1daten "EigMusA.1Noten"[0][1]
execute if score VarMusA.1Note PZMusA.1Note matches 1 run playsound minecraft:block.note_block.guitar master @p ~ ~ ~ 1 1 0.1

execute store result score VarMusA.1Note PZMusA.1Note run data get storage musikanlage:v1daten "EigMusA.1Noten"[0][2]
execute if score VarMusA.1Note PZMusA.1Note matches 1 run playsound minecraft:block.note_block.guitar master @p ~ ~ ~ 1 1 0.1

execute store result score VarMusA.1Note PZMusA.1Note run data get storage musikanlage:v1daten "EigMusA.1Noten"[0][3]
execute if score VarMusA.1Note PZMusA.1Note matches 1 run playsound minecraft:block.note_block.guitar master @p ~ ~ ~ 1 1 0.1

execute store result score VarMusA.1Note PZMusA.1Note run data get storage musikanlage:v1daten "EigMusA.1Noten"[0][4]
execute if score VarMusA.1Note PZMusA.1Note matches 1 run playsound minecraft:block.note_block.guitar master @p ~ ~ ~ 1 1 0.1

execute store result score VarMusA.1Note PZMusA.1Note run data get storage musikanlage:v1daten "EigMusA.1Noten"[0][5]
execute if score VarMusA.1Note PZMusA.1Note matches 1 run playsound minecraft:block.note_block.guitar master @p ~ ~ ~ 1 1 0.1

data modify storage musikanlage:v1daten "EigMusA.1Noten" append from storage musikanlage:v1daten "EigMusA.1Noten"[0]
data remove storage musikanlage:v1daten "EigMusA.1Noten"[0]

schedule function musikanlage:v1noten 20t replace
