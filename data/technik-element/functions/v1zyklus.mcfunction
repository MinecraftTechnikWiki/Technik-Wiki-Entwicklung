# Wenn der Auslöser eingetippt und ausgeführt wurde, wird eine Nachricht ausgegeben und der Spieler bekommt die Möglichkeit wieder den Auslöser zu aktivieren
tellraw @a[scores={PZTechEl.1Ausl=1..}] ["Technik-Element.1: ",{"text":"Der Auslöser wurde eingetippt und ausgeführt","color":"dark_purple","bold":true}]
scoreboard players enable @a[scores={PZTechEl.1Ausl=1..}] PZTechEl.1Ausl
scoreboard players set @a[scores={PZTechEl.1Ausl=1..}] PZTechEl.1Ausl 0
