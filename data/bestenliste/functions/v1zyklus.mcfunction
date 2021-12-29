
execute as @e[type=minecraft:armor_stand,tag=EtiBestLi.1Rangliste,tag=EtiBestLi.1Mitstreiter] run function bestenliste:v1mitstreiter

# Wenn der Stock ausgewählt ist, erhält der jenige Spieler ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigBestLi.1Tafel:true} } }] add EtiBestLi.1Ausgewaehlt

# Wenn der Spieler gerade zum Slot mit dem Rüstungsständer gewechselt hat, wird ihm ein Wert gegeben, sodass im Anschluss die Auslöser-Funktion geladen wird.
scoreboard players set @a[tag=EtiBestLi.1Ausgewaehlt,tag=!EtiBestLi.1Auswahl] PZBestLi.1Ausl -99

# Hat der Spieler den Stock ausgewählt und nicht den Wert null, so wird durch ihn die Auslöser-Funktion gestartet.
execute as @a[tag=EtiBestLi.1Ausgewaehlt] unless entity @s[scores={PZBestLi.1Ausl=0}] run function bestenliste:v1ausloeser

# Wenn der Spieler den Stock gerade ausgewählt hat oder ihne gerade nicht mehr auswählt bekommt er das Etikett oder es wird entfernt.
tag @a[tag=EtiBestLi.1Ausgewaehlt,tag=!EtiBestLi.1Auswahl] add EtiBestLi.1Auswahl
tag @a[tag=!EtiBestLi.1Ausgewaehlt,tag=EtiBestLi.1Auswahl] remove EtiBestLi.1Auswahl

# Das Etikett für die Auswahl des Stockes wird wieder entfernt.
tag @a[tag=EtiBestLi.1Ausgewaehlt] remove EtiBestLi.1Ausgewaehlt

scoreboard players add VarBestLi.1Tick PZBestLi.1Ausl 1
execute if score VarBestLi.1Tick PZBestLi.1Ausl matches 20.. as @e[type=minecraft:armor_stand,tag=EtiBestLi.1Tafel] at @s run function bestenliste:v1tafel
execute if score VarBestLi.1Tick PZBestLi.1Ausl matches 20.. run scoreboard players set VarBestLi.1Tick PZBestLi.1Ausl 0
