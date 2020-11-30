
data modify storage bankautomat:v2werte_kopie "EigBankA.2Konten" append from storage bankautomat:v2werte "EigBankA.2Konten"[0]
execute store result score #VarBankA.2KontoNummer PZBankA.2Nr run data get storage bankautomat:v2werte_kopie "EigBankA.2Konten"[-1]."EigBankA.2Nummer"
data remove storage bankautomat:v2werte "EigBankA.2Konten"[0]

execute if score #VarBankA.2KontoNummer PZBankA.2Nr = @s PZBankA.2Nr store result score #VarBankA.2KontoStand PZBankA.2Nr run data get storage bankautomat:v2werte_kopie "EigBankA.2Konten"[-1]."EigBankA.2Kontostand"
execute if score #VarBankA.2KontoNummer PZBankA.2Nr = @s PZBankA.2Nr store result storage bankautomat:v2werte_kopie "EigBankA.2Konten"[-1]."EigBankA.2Kontostand" int 1 run scoreboard players add #VarBankA.2KontoStand PZBankA.2Nr 1

execute unless score #VarBankA.2KontoNummer PZBankA.2Nr = @s PZBankA.2Nr if data storage bankautomat:v2werte "EigBankA.2Konten"[] run function bankautomat:v2konto_spieler
#execute store result storage bankautomat:v2werte "EigBankA.2Konten"[-1]."EigBankA.2Nummer" int 1 run scoreboard players get @s PZBankA.2Nr
