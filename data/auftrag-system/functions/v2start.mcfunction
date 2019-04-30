
scoreboard objectives add PZAufS.2Reden minecraft.custom:minecraft.talked_to_villager ["Handlungssystem-Element.1: ",{"text":"Mit Dorfbewohner sprechen","bold":true}]
scoreboard objectives add PZAufS.2Handel minecraft.custom:minecraft.traded_with_villager ["Handlungssystem-Element.1: ",{"text":"Mit dem Dorfbewohner gehandelt","bold":true}]
scoreboard objectives add PZAufS.2Nachr dummy ["Handlungssystem-Element.1: ",{"text":"Nachrichten mit Dorfbewohnern","bold":true}]

scoreboard objectives add PZAufS.2Auftrag trigger ["Handlungssystem-Element.1: ",{"text":"Auftragsnummer","bold":true}]
scoreboard objectives add PZAufS.2Ablauf dummy ["Handlungssystem-Element.1: ",{"text":"Zeit bis der Auftrag nicht erfüllt wurde","bold":true}]

# Auftrag: Fälle mehrere Bäume

#scoreboard players set @a[distance=..25] PZAufS.2Auftrag 1

gamemode adventure @a[distance=..25,gamemode=!adventure]

summon minecraft:villager ~-8 ~ ~ {Silent:true,Invulnerable:true,CanPickUpLoot:false,PersistenceRequired:true,CustomNameVisible:true,CustomName:"{\"text\":\"Alfred\"}",Tags:["EtiAufS.2Alle","EtiAufS.2AuftragVorhanden"],Profession:2,Offers:{Recipes:[]},Attributes:[{Name:"generic.knockbackResistance",Base:"1f"},{Name:"generic.movementSpeed",Base:"0f"} ] }
