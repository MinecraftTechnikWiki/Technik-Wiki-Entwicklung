
data modify storage block-zaehler:v1daten "EigBlZal.1Argumente".Block set from storage block-zaehler:v1daten "EigBlZal.1Zaehlen"[0]

function block-zaehler:v1block with storage block-zaehler:v1daten "EigBlZal.1Argumente"

data modify storage block-zaehler:v1daten "EigBlZal.1Zaehlen" append from storage block-zaehler:v1daten "EigBlZal.1Zaehlen"[0]
data remove storage block-zaehler:v1daten "EigBlZal.1Zaehlen"[0]

scoreboard players remove VarBlZal.1Schleife PZBlZal.1Wert 1
execute if score VarBlZal.1Schleife PZBlZal.1Wert matches 1.. run function block-zaehler:v1bloecke
