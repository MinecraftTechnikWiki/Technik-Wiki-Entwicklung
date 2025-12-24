
$execute store result score VarBlZal.1Anzahl PZBlZal.1Wert run clone $(Koordinaten) filtered $(Block) force

$execute if score VarBlZal.1Anzahl PZBlZal.1Wert matches 1.. run data modify storage block-zaehler:v1daten "EigBlZal.1Liste" prepend value {Block:"$(Block)",Anzahl:0}
execute if score VarBlZal.1Anzahl PZBlZal.1Wert matches 1.. store result storage block-zaehler:v1daten "EigBlZal.1Liste"[0].Anzahl int 1 run scoreboard players get VarBlZal.1Anzahl PZBlZal.1Wert
