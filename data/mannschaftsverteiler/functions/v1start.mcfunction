# Ein Punkte-Ziel wird erstellt.
scoreboard objectives add PZManSV.1Wert dummy ["Mannschaftsverteiler.1: ",{"text":"Wert","bold":true}]
scoreboard players set KonstManSV.1ZWEI PZManSV.1Wert 2

# Zwei Mannschaften werden erstellt.
team add TMManSV.1Team1 ["Mannschaftsverteiler.1: ",{"text":"Mannschaft1","color":"red","bold":true}]
team add TMManSV.1Team2 ["Mannschaftsverteiler.1: ",{"text":"Mannschaft2","color":"blue","bold":true}]

team modify TMManSV.1Team1 color red
team modify TMManSV.1Team2 color blue

team modify TMManSV.1Team1 friendlyFire false
team modify TMManSV.1Team2 friendlyFire false

# Es wird ein Marker erzeugt, an dessen Stelle ein grauer Betonboden gesetzt wird.
summon minecraft:marker ~-10 ~ ~ {Tags:["EtiManSV.1Alle","EtiManSV.1Plattform"]}
execute at @e[type=minecraft:marker,tag=EtiManSV.1Plattform] run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:gray_concrete replace
