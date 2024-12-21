
scoreboard objectives add PZManSA.1Wert dummy ["Mannschaftsauswahl.1: ",{"text":"Wert","bold":true}]

# Zwei Mannschaften werden erstellt.
team add TMManSA.1Team1 ["Mannschaftsauswahl.1: ",{"text":"Mannschaft1","color":"red","bold":true}]
team add TMManSA.1Team2 ["Mannschaftsauswahl.1: ",{"text":"Mannschaft2","color":"blue","bold":true}]

team modify TMManSA.1Team1 color red
team modify TMManSA.1Team2 color blue

team modify TMManSA.1Team1 friendlyFire false
team modify TMManSA.1Team2 friendlyFire false

summon minecraft:marker ~-10 ~ ~ {Tags:["EtiManSA.1Alle","EtiManSA.1Wartesaal"]}
execute at @e[type=minecraft:marker,tag=EtiManSA.1Wartesaal] run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:gray_concrete replace
