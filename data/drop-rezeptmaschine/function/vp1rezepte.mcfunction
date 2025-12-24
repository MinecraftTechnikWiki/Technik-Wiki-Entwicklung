
execute store result score VarDrRezM.p1Schleife2 PZDrRezM.p1Drop run data get storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte"[0]."EigDrRezM.p1Eingabe"
function drop-rezeptmaschine:vp1material

data modify storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte" append from storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte"[0]
data remove storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte"[0]

scoreboard players remove VarDrRezM.p1Schleife1 PZDrRezM.p1Drop 1
execute if score VarDrRezM.p1Schleife1 PZDrRezM.p1Drop matches 1.. run function drop-rezeptmaschine:vp1rezepte
