
scoreboard objectives add PZTeleP.3Nr trigger ["Teleport.3: ",{"text":"Portalnummer"}]
give @a[distance=..15] minecraft:armor_stand{display:{Lore:["Teleporter.3","Platziere den Rüstungsständer","um einen Teleporter zu bauen","und um zwischen","diesen zu wechseln"]},EntityTag:{NoGravity:true,Invisible:true,CustomNameVisible:true,CustomName:"{\"text\":\"Teleporter\",\"color\":\"dark_purple\",\"bold\":true}",Tags:["EtiTeleP.3Alle"]} } 16
gamerule sendCommandFeedback false
