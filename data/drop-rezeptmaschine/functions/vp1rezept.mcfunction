
execute store result score VarDrRezM.p1Schleife1 PZDrRezM.p1Drop run data modify storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte"
function drop-rezeptmaschine:vp1rezepte


##


data modify storage drop-rezeptmaschine:v1daten "EigDrRezM.1Vergleich" set from storage drop-rezeptmaschine:v1daten "EigDrRezM.1Rezepte"[0]."EigDrRezM.1Eingabe"[0].id

execute store success score VarDrRezM.1Ungleich PZDrRezM.1Drop run data modify storage drop-rezeptmaschine:v1daten "EigDrRezM.1Vergleich" set from entity @s Item.id

execute store result score VarDrRezM.1StapelVergl PZDrRezM.1Drop run data get storage drop-rezeptmaschine:v1daten "EigDrRezM.1Rezepte"[0]."EigDrRezM.1Eingabe"[0].Count
execute store result score VarDrRezM.1Stapel PZDrRezM.1Drop run data get entity @s Item.Count

execute if score VarDrRezM.1Ungleich PZDrRezM.1Drop matches 0 if score VarDrRezM.1Stapel PZDrRezM.1Drop >= VarDrRezM.1StapelVergl PZDrRezM.1Drop run say hi


##
