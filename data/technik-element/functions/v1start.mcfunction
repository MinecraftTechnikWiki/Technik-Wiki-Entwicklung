# Das Punktestand-Ziel "PZTechEl.1Ausl" wird erstellt, um als Auslöser zu arbeiten
scoreboard objectives add PZTechEl.1Ausl trigger ["Technik-Element.1: ",{"text":"Auslöser","bold":true}]

# Spieler in einem Abstand von bis zu 15 Blöcken werden dafür freigeschaltet den trigger-Befehl einmal auszulösen und erhalten eine Chat-Nachricht
scoreboard players enable @a[distance=..15] PZTechEl.1Ausl
tellraw @a[distance=..15] ["Technik-Element.1: ",{"text":"Klicke auf 'Trigger-Befehl' um einen Befehl in der Chat-Leiste zu erhalten.","color":"gold"},{"text":"\nTrigger-Befehl","color":"yellow","bold":true,"clickEvent":{"action":"suggest_command","value":"/trigger PZTechEl.1Ausl"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Erhalte den Trigger-Befehl","color":"green"}]}}}]
