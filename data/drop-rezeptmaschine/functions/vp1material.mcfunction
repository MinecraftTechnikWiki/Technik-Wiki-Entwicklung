
data modify storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Vergleich" set from storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte"[0]."EigDrRezM.p1Eingabe"[0].id
execute store success score VarDrRezM.p1Ungleich PZDrRezM.p1Drop run data modify storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Vergleich" set from entity @s Item.id

execute if score VarDrRezM.p1Ungleich PZDrRezM.p1Drop matches 0 store result score VarDrRezM.p1StapelVergl PZDrRezM.p1Drop run data get storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte"[0]."EigDrRezM.p1Eingabe"[0].Count
execute if score VarDrRezM.p1Ungleich PZDrRezM.p1Drop matches 0 store result score VarDrRezM.p1Stapel PZDrRezM.p1Drop run data get entity @s Item.Count
execute if score VarDrRezM.p1Ungleich PZDrRezM.p1Drop matches 0 if score VarDrRezM.p1Stapel PZDrRezM.p1Drop >= VarDrRezM.p1StapelVergl PZDrRezM.p1Drop run say hi


data modify storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte"[0] append from storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte"[0]."EigDrRezM.p1Eingabe"[0]
data remove storage drop-rezeptmaschine:vp1daten "EigDrRezM.p1Rezepte"[0]."EigDrRezM.p1Eingabe"[0]

scoreboard players remove VarDrRezM.p1Schleife2 PZDrRezM.p1Drop 1
execute if score VarDrRezM.p1Schleife2 PZDrRezM.p1Drop matches 1.. run function drop-rezeptmaschine:vp1material
