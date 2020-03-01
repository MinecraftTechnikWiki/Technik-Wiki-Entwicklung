# Der Rüstungsständer erhält eine Nummer von der Nummern-Variable die jedesmal um eins erhöht wird. Anschließend erhält der Rüstungsständer ein Etikett um zu markieren, dass er die Nummer besitzt.
execute store result score @s PZKontPS.4Wert run scoreboard players add #VarKontPS.4AktuelleNummer PZKontPS.4Wert 1
tag @s add EtiKontPS.4KontrollpunktNummer

# Wenn der Rüstungsständer im roten Team ist, wird die Nummern-Funktion durch einen roten Kontrollpunkt selbst aufgerufen, wenn der aktuelle Nummernwert kleiner als die Gesamtanzahl der vorhandenen Kontrollpunkte ist.
execute if entity @s[team=TMKontPS.4ROT] if score #VarKontPS.4AktuelleNummer PZKontPS.4Wert < #VarKontPS.4Anzahl PZKontPS.4Wert as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,team=TMKontPS.4ROT,tag=!EtiKontPS.4KontrollpunktNummer,sort=nearest,limit=1] run function kontrollpunkt-system:v4nummern

# Wenn der Rüstungsständer im blauen Team ist, wird die Nummern-Funktion durch einen blauen Kontrollpunkt selbst aufgerufen, wenn der aktuelle Nummernwert kleiner als die Gesamtanzahl der vorhandenen Kontrollpunkte ist.
execute if entity @s[team=TMKontPS.4BLAU] if score #VarKontPS.4AktuelleNummer PZKontPS.4Wert < #VarKontPS.4Anzahl PZKontPS.4Wert as @e[type=minecraft:armor_stand,tag=EtiKontPS.4Kontrollpunkt,team=TMKontPS.4BLAU,tag=!EtiKontPS.4KontrollpunktNummer,sort=nearest,limit=1] run function kontrollpunkt-system:v4nummern

# Wenn der aktuelle Nummernwert doch größer als die maximale Anzahl ist, werden die Etiketten wieder entfernt und die aktuelle Nummer wieder auf null gesetzt.
execute if score #VarKontPS.4AktuelleNummer PZKontPS.4Wert >= #VarKontPS.4Anzahl PZKontPS.4Wert run tag @e[type=minecraft:armor_stand,tag=EtiKontPS.4KontrollpunktNummer] remove EtiKontPS.4KontrollpunktNummer
execute if score #VarKontPS.4AktuelleNummer PZKontPS.4Wert >= #VarKontPS.4Anzahl PZKontPS.4Wert run scoreboard players set #VarKontPS.4AktuelleNummer PZKontPS.4Wert 0
