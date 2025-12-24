# Punkte-Ziele erstellen.
scoreboard objectives add wegfinder.data dummy ["Wegfindungssystem.2: ",{text:"Daten",bold:true}]
scoreboard objectives add wegfinder.direction dummy ["Wegfindungssystem.2: ",{text:"Richtung",bold:true}]

# Standardwerte in Punkte-Ziele setzen.
scoreboard players set state wegfinder.data 0
scoreboard players set particles wegfinder.data 1

# Allen Spielern Start- und Zielpunkte geben.
give @a minecraft:armor_stand[minecraft:entity_data={NoGravity: true, CustomName: [{color:"green",text:"Start"}], id: "minecraft:armor_stand", Tags: ["wegfinder", "wegfinder.start"], CustomNameVisible: true}, minecraft:item_name={color:"green",text:"Startpunkt"}, minecraft:custom_data={namespace: "wegfinder", item: "start"}, minecraft:lore=[{color:"gray",italic:false,text:"Nutze diesen Rüstungsständer,"},{color:"gray",italic:false,text:"um den Startpunkt festzulegen."}]]
give @a minecraft:armor_stand[minecraft:entity_data={NoGravity: true, CustomName: [{color:"red",text:"Ziel"}], id: "minecraft:armor_stand", Tags: ["wegfinder", "wegfinder.target"], CustomNameVisible: true}, minecraft:item_name={color:"red",text:"Zielpunkt"}, minecraft:custom_data={namespace: "wegfinder", item: "target"}, minecraft:lore=[{color:"gray",italic:false,text:"Nutze diesen Rüstungsständer,"},{color:"gray",italic:false,text:"um den Zielpunkt festzulegen."}]]

# Allen Spielern Gegenstände zur Bedinung geben.
give @a minecraft:emerald[minecraft:use_cooldown={seconds:0.2}, minecraft:item_name={color:"green",text:"Start"}, minecraft:custom_data={namespace: "wegfinder", item: "start_item"}, minecraft:consumable={animation:"block", sound:"ui.toast.in", consume_seconds:0, has_consume_particles:false}, minecraft:lore=[{color:"gray",italic:false,text:"Nutze diesen Gegenstand,"},{color:"gray",italic:false,text:"um das Wegfindungssystem zu starten."}]]
give @a minecraft:nether_wart[minecraft:use_cooldown={seconds:0.2}, minecraft:item_name={color:"red",text:"Zurücksetzen"}, minecraft:custom_data={namespace: "wegfinder", item: "reset_item"}, minecraft:consumable={animation:"block", sound:"ui.toast.in", consume_seconds:0, has_consume_particles:false}, minecraft:lore=[{color:"gray",italic:false,text:"Nutze diesen Gegenstand,"},{color:"gray",italic:false,text:"um das Wegfindungssystem zurückzusetzen."}]]
give @a minecraft:lapis_lazuli[minecraft:use_cooldown={seconds:0.2}, minecraft:item_name={color:"blue",text:"Partikel de-/aktivieren"}, minecraft:custom_data={namespace: "wegfinder", item: "toggle_particles_item"}, minecraft:consumable={animation:"block", sound:"ui.toast.in", consume_seconds:0, has_consume_particles:false}, minecraft:lore=[{color:"gray",italic:false,text:"Nutze diesen Gegenstand,"},{color:"gray",italic:false,text:"um die Partikel zu aktivieren oder zu deaktivieren."},{color:"gold",italic:false,text:"Versuche dies zu deaktivieren, "},{color:"gold",italic:false,text: "falls das Spiel langsam läuft oder ruckelt."}]]

# Lösche alle bereits berechneten Wegpunkte.
kill @e[tag=wegfinder.marker]
kill @e[tag=wegfinder.visualizer]
