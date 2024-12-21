
$execute store success score VarBlZal.1Bereich PZBlZal.1Wert run clone $(X) $(Y) $(Z) $(DX) $(DY) $(DZ) $(X) $(Y) $(Z) replace move
execute if score VarBlZal.1Bereich PZBlZal.1Wert matches 0 run tellraw @s ["",{"text":"Der Bereich in dem Blöcke gezählt werden sollen, ist zu groß!","color":"red","bold":true}]
execute if score VarBlZal.1Bereich PZBlZal.1Wert matches 0 run return 0

$data merge storage block-zaehler:v1daten {EigBlZal.1Argumente:{Koordinaten:"$(X) $(Y) $(Z) $(DX) $(DY) $(DZ) $(X) $(Y) $(Z)"} }
data modify storage block-zaehler:v1daten "EigBlZal.1Liste" set value []
data modify storage block-zaehler:v1daten "EigBlZal.1Zaehlen" set from storage block-zaehler:v1daten "EigBlZal.1Bloecke"
execute if score VarBlZal.1Luft PZBlZal.1Wert matches 1 run data modify storage block-zaehler:v1daten "EigBlZal.1Zaehlen" prepend from storage block-zaehler:v1daten "EigBlZal.1Luefte"[]
data modify storage block-zaehler:v1daten "EigBlZal.1Argumente".Block set from storage block-zaehler:v1daten "EigBlZal.1Zaehlen"[0]
scoreboard players operation VarBlZal.1Schleife PZBlZal.1Wert = VarBlZal.1Bloecke PZBlZal.1Wert
execute if score VarBlZal.1Luft PZBlZal.1Wert matches 1 run scoreboard players operation VarBlZal.1Schleife PZBlZal.1Wert += VarBlZal.1Luefte PZBlZal.1Wert
function block-zaehler:v1bloecke

execute store result score VarBlZal.1Liste PZBlZal.1Wert run data get storage block-zaehler:v1daten "EigBlZal.1Liste"
scoreboard players set VarBlZal.1Schleife PZBlZal.1Wert 0
function block-zaehler:v1liste

execute if score VarBlZal.1Liste PZBlZal.1Wert matches 1.. run scoreboard players set VarBlZal.1Schleife PZBlZal.1Wert 0
execute if score VarBlZal.1Liste PZBlZal.1Wert matches 1.. run data modify storage block-zaehler:v1daten "EigBlZal.1Argumente".Block set from storage block-zaehler:v1daten "EigBlZal.1Liste"[-1].Block
execute if score VarBlZal.1Liste PZBlZal.1Wert matches 1.. run function block-zaehler:v1ausgabe with storage block-zaehler:v1daten "EigBlZal.1Argumente"

execute if score VarBlZal.1Liste PZBlZal.1Wert matches 0 run tellraw @s ["",{"text":"Keine Blöcke im Bereich gefunden!","color":"red","bold":true}]