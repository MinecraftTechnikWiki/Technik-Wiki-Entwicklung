
#execute if score VarKartDar.1Tick PZKartDar.1Ausl matches 10.. run scoreboard players set VarKartDar.1Tick PZKartDar.1Ausl 0

# Wenn der Stock ausgewählt ist, erhält der jenige Spieler ein Etikett.
execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigKartDar.1Stock:true}] run tag @s add EtiKartDar.1Ausgewaehlt

# Wenn der Spieler gerade zum Slot mit dem Stock gewechselt hat, wird ihm ein Wert gegeben, sodass im Anschluss die Funktion geladen wird.
scoreboard players set @a[tag=EtiKartDar.1Ausgewaehlt,tag=!EtiKartDar.1Auswahl] PZKartDar.1Ausl -99

execute as @a[tag=EtiKartDar.1Ausgewaehlt,tag=!EtiKartDar.1Auswahl,tag=!EtiKartDar.1Erstellen] at @s run function kartendarstellung:v1erstellen

execute at @a[tag=!EtiKartDar.1Ausgewaehlt,tag=EtiKartDar.1Auswahl,tag=EtiKartDar.1Erstellen] rotated ~ 0 positioned ^-0.28 ^1.6 ^0.2 run function kartendarstellung:v1entfernen

scoreboard players add VarKartDar.1Tick PZKartDar.1Ausl 1
execute if score VarKartDar.1Tick PZKartDar.1Ausl matches 3

execute if score VarKartDar.1Tick PZKartDar.1Ausl matches 5 as @a[tag=EtiKartDar.1Ausgewaehlt] at @s align xyz positioned ~0.5 ~ ~0.5 run function kartendarstellung:v1darstellung

execute if score VarKartDar.1Tick PZKartDar.1Ausl matches 5.. run scoreboard players set VarKartDar.1Tick PZKartDar.1Ausl 0


#scoreboard players add VarKartDar.1Sekunde PZKartDar.1Ausl 1
#execute if score VarKartDar.1Sekunde PZKartDar.1Ausl matches 20.. run scoreboard players set VarKartDar.1Sekunde PZKartDar.1Ausl 0


# Hat der Spieler den Stock ausgewählt und nicht den Wert null, so wird durch ihn die Auslöser-Funktion gestartet.
execute as @a[tag=EtiKartDar.1Ausgewaehlt] unless entity @s[scores={PZKartDar.1Ausl=0}] run function kartendarstellung:v1ausloeser

# Wenn der Spieler den Stock gerade ausgewählt hat oder ihn gerade nicht mehr auswählt bekommt er das Etikett oder es wird entfernt.
tag @a[tag=EtiKartDar.1Ausgewaehlt,tag=!EtiKartDar.1Auswahl] add EtiKartDar.1Auswahl
tag @a[tag=!EtiKartDar.1Ausgewaehlt,tag=EtiKartDar.1Auswahl] remove EtiKartDar.1Auswahl

# Das Etikett für die Auswahl des Stockes wird wieder entfernt.
tag @a[tag=EtiKartDar.1Ausgewaehlt] remove EtiKartDar.1Ausgewaehlt
