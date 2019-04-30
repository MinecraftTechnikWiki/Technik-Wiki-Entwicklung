# Wenn der Spieler Gegenstände im Inventar hat, die vom Menü der Güterlore stammen, werden sie entfernt
execute at @s run clear @a[distance=..10] #direktzugriffsspeicher:v1menu_gegenstand{display:{Lore:["Klicke auf den Gegenstand"]} } 64

# Wenn der Gegenstand für das Neuerzeugen aller Felder angeklickt wurde, wird die Felder-Erzeugen-Funktion geladen
execute as @s[nbt=!{Items:[{Slot:11b}]}] run function direktzugriffsspeicher:v1menu_felder_erzeugen

# Wenn einer der Gegenstände für die Feldanzahl angeklickt wurde, so erhält die Güterlore ein Etikett, wodurch die Feldanzahl-Option-Funktion geladen wird
tag @s[nbt=!{Items:[{Slot:3b}]}] add EtiFeld.1FeldAnzahlAnheben
tag @s[nbt=!{Items:[{Slot:12b}]}] add EtiFeld.1FeldAnzahlAusgeben
tag @s[nbt=!{Items:[{Slot:21b}]}] add EtiFeld.1FeldAnzahlVerringern
execute unless entity @s[tag=!EtiFeld.1FeldAnzahlAnheben,tag=!EtiFeld.1FeldAnzahlAusgeben,tag=!EtiFeld.1FeldAnzahlVerringern] run function direktzugriffsspeicher:v1menu_felder

# Wenn einer der Gegenstände für die Position angeklickt wurde, so erhält die Güterlore ein Etikett, wodurch die Position-Option-Funktion geladen wird
tag @s[nbt=!{Items:[{Slot:4b}]}] add EtiFeld.1PositionAufsteigen
tag @s[nbt=!{Items:[{Slot:13b}]}] add EtiFeld.1PositionAusgeben
tag @s[nbt=!{Items:[{Slot:22b}]}] add EtiFeld.1PositionAbsteigen
execute unless entity @s[tag=!EtiFeld.1PositionAufsteigen,tag=!EtiFeld.1PositionAusgeben,tag=!EtiFeld.1PositionAbsteigen] run function direktzugriffsspeicher:v1menu_position

# Wenn einer der Gegenstände für die Wertangabe angeklickt wurde, so erhält die Güterlore ein Etikett, wodurch die Wert-Option-Funktion geladen wird
tag @s[nbt=!{Items:[{Slot:5b}]}] add EtiFeld.1WertAnheben
tag @s[nbt=!{Items:[{Slot:14b}]}] add EtiFeld.1WertAusgeben
tag @s[nbt=!{Items:[{Slot:23b}]}] add EtiFeld.1WertVerringern
execute unless entity @s[tag=!EtiFeld.1WertAnheben,tag=!EtiFeld.1WertAusgeben,tag=!EtiFeld.1WertVerringern] run function direktzugriffsspeicher:v1menu_wert

# Wenn der Gegenstand für das Ausgeben aller Werte der Felder angeklickt wurde, wird die Werte-Funktion geladen
execute as @s[nbt=!{Items:[{Slot:15b}]},scores={PZFeld.1Pos=1..}] run function direktzugriffsspeicher:v1menu_werte
