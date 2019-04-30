
scoreboard objectives add PZLuftS.3Steuer minecraft.dropped:minecraft.wooden_sword ["Luftschiff.3: ",{"text":"Holzschwert droppen um Luftschiff zu fahren"}]
scoreboard objectives add PZLuftS.3Leine minecraft.dropped:minecraft.lead ["Luftschiff.3: ",{"text":"Leine droppen um anzudocken"}]

team add TMLuftS.3Pilot ["Luftschiff.3: ",{"text":"Piloten","bold":true}]

give @p[distance=..25] minecraft:armor_stand{Luftschiff.3:true,display:{Lore:["Luftschiff.3","Platziere den Rüstungsständer","um eine Landeplattform für","Luftschiffe zu erstellen"]},EntityTag:{Small:true,Invisible:true,Marker:true,NoGravity:true,CustomNameVisible:true,CustomName:"{\"text\":\"Andockplatz\",\"bold\":true}",Tags:["EtiLuftS.3Alle","EtiLuftS.3Andockplatz","EtiLuftS.3Erstellen"]} }
give @p[distance=..25] minecraft:lead{Luftschiff.3:true,display:{Lore:["Luftschiff.3","Wirf die Leine mit Q um","zum Luftschiff oder","Andockplatz zu gelangen"]}} 1
give @p[distance=..25] minecraft:coal{Luftschiff.3:true} 64
