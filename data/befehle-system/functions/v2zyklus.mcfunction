# Wenn man den Befehl Artikel einträgt, erhält man den Wert 1 und erhält eine Nachricht mit Link zu dem Technik-Wiki-Artikel
scoreboard players set @a[tag=EtiBefS.2Schreiben,nbt={Inventory:[{Slot:4b,id:"minecraft:writable_book",tag:{pages:["Artikel"] } } ] }] PZBefS.2Befehl 1
scoreboard players set @a[tag=EtiBefS.2Schreiben,nbt={Inventory:[{Slot:4b,id:"minecraft:writable_book",tag:{pages:["al"] } } ] }] PZBefS.2Befehl 1
tellraw @a[tag=EtiBefS.2Schreiben,scores={PZBefS.2Befehl=1}] ["Befehle-System.2: ",{"text":"Zum Technik-Wiki-Artikel: ","color":"green"},{"text":"Klick Mich!","color":"yellow","hoverEvent":{"action":"show_text","value":"Klick mich!"},"clickEvent":{"action":"open_url","value":"https://de.minecraft.wiki/w/Technik:Befehle-System_(Befehle)"} }]

# Wenn man den Befehl Excalibur einträgt, erhält man den Wert 2 und man erhält ein Diamantschwert mit der Schärfe-Verzauberung mit der Stufe 255
scoreboard players set @a[tag=EtiBefS.2Schreiben,nbt={Inventory:[{Slot:4b,id:"minecraft:writable_book",tag:{pages:["Excalibur"] } } ] }] PZBefS.2Befehl 2
scoreboard players set @a[tag=EtiBefS.2Schreiben,nbt={Inventory:[{Slot:4b,id:"minecraft:writable_book",tag:{pages:["er"] } } ] }] PZBefS.2Befehl 2
give @a[tag=EtiBefS.2Schreiben,scores={PZBefS.2Befehl=2}] minecraft:diamond_sword{befehle-system:"v2gegenstand",Enchantments:[{id:"minecraft:sharpness",lvl:255s}],display:{Name:'{"text":"Excalibur","color":"gold"}'} }

# Wenn man den Befehl Zaubertrank einträgt, erhält man einen Trank mit den Effekten Resistenz, Stärke, Glück, Feuerschutz, Unterwasseratmung, Eile und Absorption
scoreboard players set @a[tag=EtiBefS.2Schreiben,nbt={Inventory:[{Slot:4b,id:"minecraft:writable_book",tag:{pages:["Zaubertrank"] } } ] }] PZBefS.2Befehl 3
scoreboard players set @a[tag=EtiBefS.2Schreiben,nbt={Inventory:[{Slot:4b,id:"minecraft:writable_book",tag:{pages:["zk"] } } ] }] PZBefS.2Befehl 3
give @a[tag=EtiBefS.2Schreiben,scores={PZBefS.2Befehl=3}] minecraft:potion{befehle-system:"v2gegenstand",CustomPotionColor:100000000,CustomPotionEffects:[{Id:11b,Ambient:false,ShowParticles:true,Duration:2000},{Id:5b,Ambient:false,ShowParticles:true,Duration:2000},{Id:26b,Ambient:false,ShowParticles:true,Duration:2000},{Id:12b,Ambient:false,ShowParticles:true,Duration:2000},{Id:13b,Ambient:false,ShowParticles:true,Duration:2000},{Id:3b,Ambient:false,ShowParticles:true,Duration:2000},{Id:22b,Amplifier:5b,Ambient:false,ShowParticles:true,Duration:2000}],display:{Name:'{"text":"Zaubertrank","color":"gold"}'} }

# Jeder der einen Befehl eintragen kann (Etikett), wird überprüft ob er etwas eingetragen hat, falls er es getan hat wird das Buch ersetzt, sodass es wieder leer ist
tag @r[tag=EtiBefS.2Schreiben,nbt=!{Inventory:[{Slot:4b,id:"minecraft:writable_book",tag:{pages:[""] } } ] } ] remove EtiBefS.2Schreiben
tag @a[scores={PZBefS.2Befehl=1..}] remove EtiBefS.2Schreiben
replaceitem entity @a[tag=!EtiBefS.2Schreiben] hotbar.4 minecraft:writable_book{befehle-system:"v2gegenstand",pages:[""],display:{Name:'{"text":"Befehlsbuch"}',Lore:['"Tippe hier Befehle ein"'] } }
scoreboard players set @a[tag=!EtiBefS.2Schreiben] PZBefS.2Befehl 0
tag @a[tag=!EtiBefS.2Schreiben,nbt={Inventory:[{Slot:4b,id:"minecraft:writable_book",tag:{pages:[""] } } ] }] add EtiBefS.2Schreiben
execute as @a[scores={PZBefS.2Befehl=1..}] at @s run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ 0.2 2
