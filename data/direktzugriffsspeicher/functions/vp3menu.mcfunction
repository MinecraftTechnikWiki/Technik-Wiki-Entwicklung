# Wenn der Spieler Gegenstände im Inventar hat, die vom Menü der Güterlore stammen, werden sie entfernt
execute at @s run clear @a[distance=..10] #direktzugriffsspeicher:vp3menu{display:{Lore:['"Klicke auf den Gegenstand"']} } 64

# Wenn der Gegenstand für das Neuerzeugen aller Felder angeklickt wurde, wird die Felder-Erzeugen-Funktion geladen
execute as @s[nbt=!{Items:[{Slot:11b}]}] run function direktzugriffsspeicher:vp3menu_dimensionen_erzeugen

# Wenn einer der Gegenstände für die Feldanzahl angeklickt wurde, so erhält die Güterlore ein Etikett, wodurch die Feldanzahl-Option-Funktion geladen wird
tag @s[nbt=!{Items:[{Slot:3b}]}] add EtiFeld.p3DimensionenAnzahlAnheben
tag @s[nbt=!{Items:[{Slot:12b}]}] add EtiFeld.p3DimensionenAnzahlAusgeben
tag @s[nbt=!{Items:[{Slot:21b}]}] add EtiFeld.p3DimensionenAnzahlVerringern
execute unless entity @s[tag=!EtiFeld.p3DimensionenAnzahlAnheben,tag=!EtiFeld.p3DimensionenAnzahlAusgeben,tag=!EtiFeld.p3DimensionenAnzahlVerringern] run function direktzugriffsspeicher:vp3menu_dimensionen

# Wenn einer der Gegenstände für die Position angeklickt wurde, so erhält die Güterlore ein Etikett, wodurch die Position-Option-Funktion geladen wird
tag @s[nbt=!{Items:[{Slot:4b}]}] add EtiFeld.p3DimensionenPositionAufsteigen
tag @s[nbt=!{Items:[{Slot:13b}]}] add EtiFeld.p3DimensionenPositionAusgeben
tag @s[nbt=!{Items:[{Slot:22b}]}] add EtiFeld.p3DimensionenPositionAbsteigen
execute unless entity @s[tag=!EtiFeld.p3DimensionenPositionAufsteigen,tag=!EtiFeld.p3DimensionenPositionAusgeben,tag=!EtiFeld.p3DimensionenPositionAbsteigen] run function direktzugriffsspeicher:vp3menu_dimensionen_position

# Wenn einer der Gegenstände für die Wertangabe angeklickt wurde, so erhält die Güterlore ein Etikett, wodurch die Wert-Option-Funktion geladen wird
tag @s[nbt=!{Items:[{Slot:5b}]}] add EtiFeld.p3DimensionenFelderAnheben
tag @s[nbt=!{Items:[{Slot:14b}]}] add EtiFeld.p3DimensionenFelderAusgeben
tag @s[nbt=!{Items:[{Slot:23b}]}] add EtiFeld.p3DimensionenFelderVerringern
execute unless entity @s[tag=!EtiFeld.p3DimensionenFelderAnheben,tag=!EtiFeld.p3DimensionenFelderAusgeben,tag=!EtiFeld.p3DimensionenFelderVerringern] run function direktzugriffsspeicher:vp3menu_dimension

# Wenn der Gegenstand für das Ausgeben aller Werte der Felder angeklickt wurde, wird die Werte-Funktion geladen
execute as @s[nbt=!{Items:[{Slot:15b}]},scores={PZFeld.p3Felder=1..}] run function direktzugriffsspeicher:vp3menu_werte
