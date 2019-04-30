# Punktestand-Ziele werden erstellt
scoreboard objectives add PZAufS.1Reden minecraft.custom:minecraft.talked_to_villager ["Auftrag-System.1: ",{"text":"Mit Dorfbewohner sprechen","bold":true}]
scoreboard objectives add PZAufS.1Handel minecraft.custom:minecraft.traded_with_villager ["Auftrag-System.1: ",{"text":"Mit dem Dorfbewohner gehandelt","bold":true}]
scoreboard objectives add PZAufS.1Nachr dummy ["Auftrag-System.1: ",{"text":"Nachricht mit Dorfbewohnern","bold":true}]
scoreboard objectives add PZAufS.1Auftrag dummy ["Auftrag-System.1: ",{"text":"Auftragsnummer","bold":true}]

# Die Punktestandswerte werden für den Spieler gesetzt
scoreboard players set @a[distance=..25] PZAufS.1Auftrag 1

# Der Spieler wird in den Überlebensmodus gesetzt
gamemode survival @a[distance=..25,gamemode=!survival]

# Die Dorfbewohner werden erschaffen
summon minecraft:villager ~-5 ~ ~ {Silent:true,Invulnerable:true,CanPickUpLoot:false,PersistenceRequired:true,CustomNameVisible:true,CustomName:"{\"text\":\"Jones\",\"bold\":true}",Offers:{Recipes:[]},Tags:["EtiAufS.1Alle","EtiAufS.1AuftragVorhanden"],Profession:1,Career:1,CareerLevel:42,Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"}]}
summon minecraft:villager ~-10 ~ ~ {Silent:true,Invulnerable:true,CanPickUpLoot:false,PersistenceRequired:true,CustomNameVisible:true,CustomName:"{\"text\":\"Bill\",\"bold\":true}",Offers:{Recipes:[]},Tags:["EtiAufS.1Alle"],Profession:2,Career:1,CareerLevel:42,Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"}]}
