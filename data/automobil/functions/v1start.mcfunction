
scoreboard objectives add PZAuto.1Geschw dummy ["Automobil.1: ",{"text":"Die Geschwindigkeit des Autos","bold":true}]
scoreboard objectives add PZAuto.1Vergl dummy ["Automobil.1: ",{"text":"Die Vergleichs-Geschwindigkeit des Autos vor einem Tick","bold":true}]

give @a minecraft:armor_stand{display:{Name:"{\"text\":\"Auto\"}",Lore:["Automobil.1:","Platziere das Auto"]},EntityTag:{Small:true,CustomNameVisible:true,CustomName:"{\"text\":\"Auto\"}",Tags:["EtiAuto.1Alle","EtiAuto.1Erstellen"]} }
