scoreboard objectives add PZAuto.2Klick minecraft.custom:minecraft.talked_to_villager ["Automobil.2: ",{"text":"Dorfbewohner anklicken","bold":true}]
scoreboard objectives add PZAuto.2Schl minecraft.custom:minecraft.sneak_time ["Automobil.2: ",{"text":"Schleichen","bold":true}]

give @a[distance=..15] minecraft:armor_stand{automobil:"v2gegenstand",display:{Name:'{"text":"Automobil","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um das Auto dort zu erzeugen"']},EntityTag:{Small:true,CustomNameVisible:true,CustomName:'{"text":"Auto"}',Tags:["EtiAuto.2Alle","EtiAuto.2Erstellen"]} }
