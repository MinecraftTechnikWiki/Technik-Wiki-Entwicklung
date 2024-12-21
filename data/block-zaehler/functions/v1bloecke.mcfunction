
data modify storage block-zaehler:v1daten "EigBlZal.1Argumente".Block set from storage block-zaehler:v1daten "EigBlZal.1Zaehlen"[0]

function block-zaehler:v1block with storage block-zaehler:v1daten "EigBlZal.1Argumente"

data modify storage block-zaehler:v1daten "EigBlZal.1Zaehlen" append from storage block-zaehler:v1daten "EigBlZal.1Zaehlen"[0]
data remove storage block-zaehler:v1daten "EigBlZal.1Zaehlen"[0]

scoreboard players remove VarBlZal.1Schleife PZBlZal.1Wert 1
execute if score VarBlZal.1Schleife PZBlZal.1Wert matches 1.. run function block-zaehler:v1bloecke


#$execute store result score VarBlZal.1Anzahl PZBlZal.1Wert run clone $(Koordinaten) filtered $(Block) force
#$tellraw @s ["the number is ",{"score":{"name":"VarBlZal.1Anzahl","objective":"PZBlZal.1Wert"} }," $(Block) ",{"score":{"name":"VarBlZal.1Schleife","objective":"PZBlZal.1Wert"} }]

#$execute if score VarBlZal.1Anzahl PZBlZal.1Wert matches 1.. run data modify storage block-zaehler:v1daten "EigBlZal.1Liste" prepend value {Block:"$(Block)",Anzahl:0}
#execute if score VarBlZal.1Anzahl PZBlZal.1Wert matches 1.. store result storage block-zaehler:v1daten "EigBlZal.1Liste"[0].Anzahl int 1 run scoreboard players get VarBlZal.1Anzahl PZBlZal.1Wert

#data modify storage block-zaehler:v1daten "EigBlZal.1Zaehlen" append from storage block-zaehler:v1daten "EigBlZal.1Zaehlen"[0]
#data remove storage block-zaehler:v1daten "EigBlZal.1Zaehlen"[0]

#data modify storage block-zaehler:v1daten "EigBlZal.1Argumente".Block set from storage block-zaehler:v1daten "EigBlZal.1Zaehlen"[0]

#scoreboard players remove VarBlZal.1Schleife PZBlZal.1Wert 1
#execute if score VarBlZal.1Schleife PZBlZal.1Wert matches 1.. run function block-zaehler:v1bloecke with storage block-zaehler:v1daten "EigBlZal.1Argumente"

#tellraw @s ["the loop number is ",{"score":{"name":"VarBlZal.1Schleife","objective":"PZBlZal.1Wert"} }]
