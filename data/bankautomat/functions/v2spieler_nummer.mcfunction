
scoreboard players add #VarBankA.2SpielerNummer PZBankA.2Nr 1
scoreboard players operation @s PZBankA.2Nr = #VarBankA.2SpielerNummer PZBankA.2Nr

data modify storage bankautomat:v2werte "EigBankA.2Konten" append value {EigBankA.2Kontostand:0,EigBankA.2Nummer:0}
execute store result storage bankautomat:v2werte "EigBankA.2Konten"[-1]."EigBankA.2Nummer" int 1 run scoreboard players get @s PZBankA.2Nr

tag @s add EtiBankA.2SpielerNummer
