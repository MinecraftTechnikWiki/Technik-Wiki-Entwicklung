# Falls Wegfinder bereits gestartet, gebe Fehlermeldung zurück und breche ab.
execute unless score state wegfinder.data matches 0 run title @s actionbar {"text": "Bitte erst zurücksetzen!", "color": "yellow"}
execute unless score state wegfinder.data matches 0 run return fail

# Andernfalls setze das Ziel wegfinder.data für state auf 1, damit das System gestartet wird.
scoreboard players set state wegfinder.data 1
