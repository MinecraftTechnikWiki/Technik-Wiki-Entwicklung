# Die beiden Punktestand-Ziele werden wieder entfernt.
scoreboard objectives remove PZSamS.1Eier
scoreboard objectives remove PZSamS.1Vergl

# Alle Etiketten, die der Spieler im Laufe des Sammelns bekommen hat, werden entfernt.
tag @a[tag=EtiSamS.1MaxEierGefunden] remove EtiSamS.1MaxEierGefunden
tag @a[tag=EtiSamS.1Ei1] remove EtiSamS.1Ei1
tag @a[tag=EtiSamS.1Ei2] remove EtiSamS.1Ei2
tag @a[tag=EtiSamS.1Ei3] remove EtiSamS.1Ei3
tag @a[tag=EtiSamS.1Ei4] remove EtiSamS.1Ei4
tag @a[tag=EtiSamS.1Ei5] remove EtiSamS.1Ei5
tag @a[tag=EtiSamS.1Ei6] remove EtiSamS.1Ei6
tag @a[tag=EtiSamS.1Ei7] remove EtiSamS.1Ei7
tag @a[tag=EtiSamS.1Ei8] remove EtiSamS.1Ei8
tag @a[tag=EtiSamS.1Ei9] remove EtiSamS.1Ei9

# Alle Sammel-Eier werden entfernt. Sie werden durch das Etikett ausfindig gemacht.
kill @e[tag=EtiSamS.1Alle]
