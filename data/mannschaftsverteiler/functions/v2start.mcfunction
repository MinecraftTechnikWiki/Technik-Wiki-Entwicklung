
scoreboard objectives add PZManSV.2Ausl trigger ["Mannschaftsverteiler.2: ",{"text":"Auslöser","bold":true}]
scoreboard objectives add PZManSV.2Wert dummy ["Mannschaftsverteiler.2: ",{"text":"Wert","bold":true}]
scoreboard players set KonstManSV.2ZWEI PZManSV.2Wert 2
scoreboard players set VarManSV.2Mannschaften PZManSV.2Ausl 4

team add TMManSV.2Team1 ["Mannschaftsverteiler.2: ",{"text":"Mannschaft1","color":"red","bold":true}]
team add TMManSV.2Team2 ["Mannschaftsverteiler.2: ",{"text":"Mannschaft2","color":"blue","bold":true}]
team add TMManSV.2Team3 ["Mannschaftsverteiler.2: ",{"text":"Mannschaft3","color":"green","bold":true}]
team add TMManSV.2Team4 ["Mannschaftsverteiler.2: ",{"text":"Mannschaft4","color":"yellow","bold":true}]

team modify TMManSV.2Team1 color red
team modify TMManSV.2Team2 color blue
team modify TMManSV.2Team3 color green
team modify TMManSV.2Team4 color yellow

team modify TMManSV.2Team1 friendlyFire false
team modify TMManSV.2Team2 friendlyFire false
team modify TMManSV.2Team3 friendlyFire false
team modify TMManSV.2Team4 friendlyFire false

give @a[distance=..15] minecraft:stick{EigManSV.2Alle:true,EigManSV.2Stock:true,Enchantments:[{id:-1}],display:{Name:'{"text":"Mannschaftsoptionen","color":"dark_purple","bold":true}',Lore:['"Wähle den Stock aus"','"um die Mannschafts-"','"Optionen anzeigen zu lassen."'] } }

summon minecraft:armor_stand ~-10 ~ ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiManSV.2Alle","EtiManSV.2Plattform"]}
execute at @e[type=minecraft:armor_stand,tag=EtiManSV.2Plattform] run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:gray_concrete replace
