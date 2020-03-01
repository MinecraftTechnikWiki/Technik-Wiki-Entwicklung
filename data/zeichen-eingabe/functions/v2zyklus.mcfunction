# Nur wenn sich der nächstgelegene Spieler auf dem Esel sitzt, wird die Klick-Funktion gestartet.
execute at @p[distance=..15,scores={PZZeiEin.2Klick=1..},nbt={RootVehicle:{Entity:{id:"minecraft:donkey",Tags:["EtiZeiEin.2Sitz"]} } }] as @e[type=minecraft:area_effect_cloud,tag=EtiZeiEin.2Zeichen,sort=nearest,limit=1] run function zeichen-eingabe:v2klick

# Wenn der Spieler in der Nähe der Zeichen-Partikelwolke einen Klick-wert von mindestens eins besitzt, wird ihm im Chat die aktuelle Zeichenkette angezeigt.
execute at @e[type=minecraft:area_effect_cloud,tag=EtiZeiEin.2Zeichen,sort=nearest,limit=1] run tellraw @p[distance=..5,scores={PZZeiEin.2Klick=1..}] ["Zeichen-Eingabe.2: ",{"text":"\nzeichenkette == \"","bold":true},{"block":"~ ~ ~","nbt":"Text1","interpret":true},{"text":"\"","bold":true}]

# Falls Spieler den Klick-Wert mindestens bei eins besitzen, wird er wieder auf null gesetzt.
scoreboard players set @a[scores={PZZeiEin.2Klick=1..}] PZZeiEin.2Klick 0
