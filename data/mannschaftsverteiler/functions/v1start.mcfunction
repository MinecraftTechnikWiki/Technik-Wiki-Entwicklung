
scoreboard objectives add PZManSV.1Wert dummy ["Mannschaftsverteiler.1: ",{"text":"Wert","bold":true}]
scoreboard players set KonstManSV.1ZWEI PZManSV.1Wert 2

team add TMManSV.1Team1 ["Mannschaftsverteiler.1: ",{"text":"Mannschaft1","color":"red","bold":true}]
team add TMManSV.1Team2 ["Mannschaftsverteiler.1: ",{"text":"Mannschaft2","color":"blue","bold":true}]

team modify TMManSV.1Team1 color red
team modify TMManSV.1Team2 color blue

team modify TMManSV.1Team1 friendlyFire false
team modify TMManSV.1Team2 friendlyFire false

summon minecraft:armor_stand ~-10 ~ ~ {Small:true,Invisible:true,NoGravity:true,Tags:["EtiManSV.1Alle","EtiManSV.1Plattform"]}
execute at @e[type=minecraft:armor_stand,tag=EtiManSV.1Plattform] run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:gray_concrete replace
