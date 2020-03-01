# Das Punktestand-Ziel für die Zeit in der Luft wird erstellt
scoreboard objectives add PZElyAb.1Luft dummy ["Elytren-Abschussrampe.1: ",{"text":"Zeit in der Luft","bold":true}]

# Spielern im Umkreis von 15 Metern erhalten 16 Rüstungsständer mit denen man die Abschussrampe platzieren kann
give @a[distance=..15] minecraft:armor_stand{elytren-abschussrampe:"v1gegenstand",display:{Name:'{"text":"Elytren-Abschussrampe","color":"gold","bold":true}',Lore:['"Platziere den Rüstungsständer"','"um eine Abschussrampe"','"zu errichten."','"Wirf den Rüstungsständer"','"auf eine Abschussrampe"','"um sie wieder abzubauen"']},EntityTag:{Invisible:true,Marker:true,NoGravity:true,Tags:["EtiElyAb.1Alle","EtiElyAb.1Station"]} } 16
