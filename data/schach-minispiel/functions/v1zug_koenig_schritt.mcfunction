
function schach-minispiel:v1spielzug_anzeigen
execute at @e[tag=EtiSchMS.1ZugAuswahl,tag=EtiSchMS.1Leuchten] if score @e[distance=..3,tag=EtiSchMS.1Alle,tag=EtiSchMS.1Anklickbar,sort=nearest,limit=1] PZSchMS.1Farbe = @e[tag=EtiSchMS.1Alle,tag=EtiSchMS.1Anklickbar,tag=EtiSchMS.1Leuchten,sort=nearest,limit=1] PZSchMS.1Farbe run kill @e[distance=..2,tag=EtiSchMS.1ZugAuswahl]
