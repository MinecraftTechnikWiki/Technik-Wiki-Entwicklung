
scoreboard objectives add PZMADNMS.1Wert trigger ""

give @a[distance=..15] minecraft:armor_stand{EigMADNMS.1Alle:true,EntityTag:{Tags:["EtiMADNMS.1Alle","EtiMADNMS.1Generieren"]}} 1

tellraw @a[distance=..15] ["Marsch-Raus-Minispiel.1: ",{"text":"Mensch ärgere dich nicht!","bold":true}]

forceload add ~ ~
