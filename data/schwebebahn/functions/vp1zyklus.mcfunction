
#execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Transrapid] as @p[distance=..2,nbt={RootVehicle:{Entity:{id:"minecraft:armor_stand",Tags:["EtiSchwB.p1Transrapid"] } } }] run function schwebebahn:vp1steuern

#execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Transrapid] run tag @a[distance=3..8,tag=EtiSchwB.p1SitztInLore] remove EtiSchwB.p1SitztInLore

execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Bauwerk] at @s run function schwebebahn:vp1bauwerk

execute as @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Erstellen] at @s run function schwebebahn:vp1erstellen

tag @p[distance=..2,nbt={RootVehicle:{Entity:{id:"minecraft:armor_stand",Tags:["EtiSchwB.p1Transrapid"] } } }] add EtiSchwB.p1SitztInLore

execute at @e[type=minecraft:armor_stand,tag=EtiSchwB.p1Transrapid] as @p[distance=..2,tag=EtiSchwB.p1SitztInLore] run function schwebebahn:vp1steuern

tag @a[tag=EtiSchwB.p1SitztInLore] remove EtiSchwB.p1SitztInLore

# Wenn der Stock ausgewählt ist, erhält der jenige Spieler ein Etikett.
tag @a[nbt={SelectedItem:{tag:{EigSchwB.p1Strecke:true} } }] add EtiSchwB.p1Ausgewaehlt

# Wenn der Spieler gerade zum Slot mit dem Stock gewechselt hat, wird ihm ein Wert gegeben, sodass im Anschluss die Funktion geladen wird.
scoreboard players set @a[tag=EtiSchwB.p1Ausgewaehlt,tag=!EtiSchwB.p1Auswahl] PZSchwB.p1Ausl -99

# Hat der Spieler den Stock ausgewählt und nicht den Wert null, so wird durch ihn die Auslöser-Funktion gestartet.
execute as @a[tag=EtiSchwB.p1Ausgewaehlt] unless entity @s[scores={PZSchwB.p1Ausl=0}] run function schwebebahn:vp1ausloeser

# Wenn der Spieler den Stock gerade ausgewählt hat oder ihne gerade nicht mehr auswählt bekommt er das Etikett oder es wird entfernt.
tag @a[tag=EtiSchwB.p1Ausgewaehlt,tag=!EtiSchwB.p1Auswahl] add EtiSchwB.p1Auswahl
tag @a[tag=!EtiSchwB.p1Ausgewaehlt,tag=EtiSchwB.p1Auswahl] remove EtiSchwB.p1Auswahl

# Das Etikett für die Auswahl des Stockes wird wieder entfernt.
tag @a[tag=EtiSchwB.p1Ausgewaehlt] remove EtiSchwB.p1Ausgewaehlt
