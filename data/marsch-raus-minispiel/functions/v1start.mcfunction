
scoreboard objectives add PZMADNMS.1Wert trigger ["Marsch-Raus-Minispiel.1: ",{"text":"Auslöser","bold":true}]
scoreboard objectives add PZMADNMS.1Team dummy ["Marsch-Raus-Minispiel.1: ",{"text":"Mannschaft","bold":true}]
scoreboard objectives add PZMADNMS.1Drop minecraft.custom:minecraft.drop ["Marsch-Raus-Minispiel.1: ",{"text":"Mannschaft","bold":true}]

scoreboard players set KonstMADNMS.1Wuerfel PZMADNMS.1Drop 6

#team add TMMADNMS.1Rot ["Marsch-Raus-Minispiel.1: ",{"text":"Rote Mannschaft","bold":true}]
#team add TMMADNMS.1Blau ["Marsch-Raus-Minispiel.1: ",{"text":"Blaue Mannschaft","bold":true}]
#team add TMMADNMS.1Gruen ["Marsch-Raus-Minispiel.1: ",{"text":"Grüne Mannschaft","bold":true}]
#team add TMMADNMS.1Gelb ["Marsch-Raus-Minispiel.1: ",{"text":"Gelbe Mannschaft","bold":true}]

#team modify TMMADNMS.1Rot color red
#team modify TMMADNMS.1Blau color blue
#team modify TMMADNMS.1Gruen color green
#team modify TMMADNMS.1Gelb color yellow

give @a[distance=..15] minecraft:armor_stand{EigMADNMS.1Alle:true,EntityTag:{Small:true,Invisible:true,Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Spielfeld","EtiMADNMS.1Erstellen"]}} 1

tellraw @a[distance=..15] ["Marsch-Raus-Minispiel.1: ",{"text":"Mensch ärgere dich nicht!","bold":true}]

forceload add ~ ~
