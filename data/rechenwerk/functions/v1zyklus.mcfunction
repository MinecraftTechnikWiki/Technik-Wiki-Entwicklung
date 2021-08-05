
#execute if data storage rechenwerk:v1daten "EigRechW.1Variable1" as @a[distance=..25] unless entity @s[scores={PZRechW.1Ausl=0}] run function rechenwerk:v1ausloeser

tag @a[nbt={SelectedItem:{tag:{EigRechW.1Stock:true} } }] add EtiRechW.1Ausgewaehlt

scoreboard players set @a[tag=EtiRechW.1Ausgewaehlt,tag=!EtiRechW.1Auswahl] PZRechW.1Ausl -99

execute as @a[tag=EtiRechW.1Ausgewaehlt] unless entity @s[scores={PZRechW.1Ausl=0}] run function rechenwerk:v1ausloeser

tag @a[tag=EtiRechW.1Ausgewaehlt,tag=!EtiRechW.1Auswahl] add EtiRechW.1Auswahl
tag @a[tag=!EtiRechW.1Ausgewaehlt,tag=EtiRechW.1Auswahl] remove EtiRechW.1Auswahl

tag @a[tag=EtiRechW.1Ausgewaehlt] remove EtiRechW.1Ausgewaehlt
