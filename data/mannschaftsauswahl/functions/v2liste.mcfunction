
say arg 1
$execute if score VarManSA.2Auswahl PZManSA.2Ausl matches 1 run return run data modify storage mannschaftsauswahl:v2daten "EigManSA.2Argumente".Farbe set from storage mannschaftsauswahl:v2daten "EigManSA.2Mannschaften"[$(Index)].Farbe

$execute if score VarManSA.2Auswahl PZManSA.2Ausl matches 2 unless score VarManSA.2Auswahl PZManSA.2Ausl matches 1 if entity @s[scores={PZManSA.2Ausl=-1}] run return run team remove TMManSA.2$(Mannschaft)

say arg 2
$execute if score VarManSA.2Auswahl PZManSA.2Ausl matches 2 if entity @s[scores={PZManSA.2Ausl=1}] run team add TMManSA.2$(Mannschaft) ["Mannschaftsauswahl.2: ",{"text":"Mannschaft$(Index)","color":"$(Farbe)","bold":true}]

$execute if score VarManSA.2Auswahl PZManSA.2Ausl matches 2 if entity @s[scores={PZManSA.2Ausl=1}] run team modify TMManSA.1$(Mannschaft) color $(Farbe)

$execute if score VarManSA.2Auswahl PZManSA.2Ausl matches 2 if entity @s[scores={PZManSA.2Ausl=1}] run team modify TMManSA.1$(Mannschaft) friendlyFire false







return 0



say arg 1
$execute if score VarManSA.2Auswahl PZManSA.2Ausl matches -1..1 run data modify storage mannschaftsauswahl:v2daten "EigManSA.2Argumente".Mannschaft set from storage mannschaftsauswahl:v2daten "EigManSA.2Mannschaften"[$(Index)].Name

$execute if score VarManSA.2Auswahl PZManSA.2Ausl matches -1..1 run data modify storage mannschaftsauswahl:v2daten "EigManSA.2Argumente".Farbe set from storage mannschaftsauswahl:v2daten "EigManSA.2Mannschaften"[$(Index)].Farbe

execute if score VarManSA.2Auswahl PZManSA.2Ausl matches -1 run scoreboard players set VarManSA.2Auswahl PZManSA.2Ausl -2

$execute if score VarManSA.2Auswahl PZManSA.2Ausl matches -2 run return run data modify storage mannschaftsauswahl:v2daten "EigManSA.2Argumente".Farbe set from storage mannschaftsauswahl:v2daten "EigManSA.2Mannschaften"[$(Index)].Farbe


execute if score VarManSA.2Auswahl PZManSA.2Ausl matches -1 store result storage mannschaftsauswahl:v2daten "EigManSA.2Argumente".Index int 1 run scoreboard players get VarManSA.2Mannschaften PZManSA.2Ausl

$execute if score VarManSA.2Auswahl PZManSA.2Ausl matches -1..2 unless score VarManSA.2Auswahl PZManSA.2Ausl matches 1 if entity @s[scores={PZManSA.2Ausl=-1}] run return run team remove TMManSA.2$(Mannschaft)


execute if score VarManSA.2Auswahl PZManSA.2Ausl matches -1 run function mannschaftsauswahl:v2liste with storage mannschaftsauswahl:v2daten "EigManSA.2Argumente"



say arg 2

$execute if score VarManSA.2Auswahl PZManSA.2Ausl matches 2 if entity @s[scores={PZManSA.2Ausl=1}] run team add TMManSA.2$(Mannschaft) ["Mannschaftsauswahl.2: ",{"text":"Mannschaft$(Index)","color":"$(Farbe)","bold":true}]

$execute if score VarManSA.2Auswahl PZManSA.2Ausl matches 2 if entity @s[scores={PZManSA.2Ausl=1}] run team modify TMManSA.1$(Mannschaft) color $(Farbe)

$execute if score VarManSA.2Auswahl PZManSA.2Ausl matches 2 if entity @s[scores={PZManSA.2Ausl=1}] run team modify TMManSA.1$(Mannschaft) friendlyFire false