# Wenn der Spieler Gegenstände im Inventar hat, die vom Menü der Güterlore stammen, werden sie entfernt
execute at @s run clear @a[distance=..10] #direktzugriffsspeicher:vp1menu_gegenstand{display:{Lore:["Klicke auf den Gegenstand"]} } 64

# Wenn der Gegenstand für das Neuerzeugen aller Felder angeklickt wurde, wird die Felder-Erzeugen-Funktion geladen
execute as @s[nbt=!{Items:[{Slot:10b}]}] run function direktzugriffsspeicher:vp1menu_felder_erzeugen

# Wenn einer der Gegenstände für die Feldanzahl angeklickt wurde, so erhält die Güterlore ein Etikett, wodurch die Feldanzahl-Option-Funktion geladen wird
tag @s[nbt=!{Items:[{Slot:2b}]}] add EtiFeld.p1FeldAnzahlDimension1Anheben
tag @s[nbt=!{Items:[{Slot:11b}]}] add EtiFeld.p1FeldAnzahlDimension1Ausgeben
tag @s[nbt=!{Items:[{Slot:20b}]}] add EtiFeld.p1FeldAnzahlDimension1Verringern
execute unless entity @s[tag=!EtiFeld.p1FeldAnzahlDimension1Anheben,tag=!EtiFeld.p1FeldAnzahlDimension1Ausgeben,tag=!EtiFeld.p1FeldAnzahlDimension1Verringern] run function direktzugriffsspeicher:vp1menu_feld_dimension_1

# Wenn einer der Gegenstände für die Feldanzahl angeklickt wurde, so erhält die Güterlore ein Etikett, wodurch die Feldanzahl-Option-Funktion geladen wird
tag @s[nbt=!{Items:[{Slot:3b}]}] add EtiFeld.p1FeldAnzahlDimension2Anheben
tag @s[nbt=!{Items:[{Slot:12b}]}] add EtiFeld.p1FeldAnzahlDimension2Ausgeben
tag @s[nbt=!{Items:[{Slot:21b}]}] add EtiFeld.p1FeldAnzahlDimension2Verringern
execute unless entity @s[tag=!EtiFeld.p1FeldAnzahlDimension2Anheben,tag=!EtiFeld.p1FeldAnzahlDimension2Ausgeben,tag=!EtiFeld.p1FeldAnzahlDimension2Verringern] run function direktzugriffsspeicher:vp1menu_feld_dimension_2

# Wenn einer der Gegenstände für die Position angeklickt wurde, so erhält die Güterlore ein Etikett, wodurch die Position-Option-Funktion geladen wird
tag @s[nbt=!{Items:[{Slot:4b}]}] add EtiFeld.p1PositionAufsteigen
tag @s[nbt=!{Items:[{Slot:13b}]}] add EtiFeld.p1PositionAusgeben
tag @s[nbt=!{Items:[{Slot:22b}]}] add EtiFeld.p1PositionAbsteigen
execute unless entity @s[tag=!EtiFeld.p1PositionAufsteigen,tag=!EtiFeld.p1PositionAusgeben,tag=!EtiFeld.p1PositionAbsteigen] run function direktzugriffsspeicher:vp1menu_position

# Wenn einer der Gegenstände für die Wertangabe angeklickt wurde, so erhält die Güterlore ein Etikett, wodurch die Wert-Option-Funktion geladen wird
tag @s[nbt=!{Items:[{Slot:5b}]}] add EtiFeld.p1WertAnheben
tag @s[nbt=!{Items:[{Slot:14b}]}] add EtiFeld.p1WertAusgeben
tag @s[nbt=!{Items:[{Slot:23b}]}] add EtiFeld.p1WertVerringern
execute unless entity @s[tag=!EtiFeld.p1WertAnheben,tag=!EtiFeld.p1WertAusgeben,tag=!EtiFeld.p1WertVerringern] run function direktzugriffsspeicher:vp1menu_wert

# Wenn der Gegenstand für das Ausgeben aller Werte der Felder angeklickt wurde, wird die Werte-Funktion geladen
execute as @s[nbt=!{Items:[{Slot:15b}]},scores={PZFeld.p1Felder=1..}] run function direktzugriffsspeicher:vp1menu_werte
