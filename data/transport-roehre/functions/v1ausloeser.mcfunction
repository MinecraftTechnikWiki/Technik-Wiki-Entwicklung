# Im Chat kann der Spieler auch den Tempomat ein- oder ausschalten und dies wird über den Namen des Rüstungsständers geregelt.
execute if entity @s[scores={PZTranPR.1Ausl=1}] if score VarTranPR.1Laenge PZTranPR.1Ausl matches ..63 run scoreboard players add VarTranPR.1Laenge PZTranPR.1Ausl 1
execute if entity @s[scores={PZTranPR.1Ausl=-1}] if score VarTranPR.1Laenge PZTranPR.1Ausl matches 2.. run scoreboard players remove VarTranPR.1Laenge PZTranPR.1Ausl 1

# Der Spieler erhält im Chat alle Steuerungsoptionen des Schiffes.
tellraw @s ["Transport-Röhre.1: ",{"text":"\nlaenge = ","bold":true},{"text":"laenge + 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Länge + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZTranPR.1Ausl set 1"} },{"text":"\nlaenge = ","bold":true},{"text":"laenge - 1","color":"gray","bold":true,"underlined":true,"hoverEvent":{"action":"show_text","contents":{"text":"Tippe für Länge - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZTranPR.1Ausl set -1"} },{"text":"\nlaenge == ","bold":true},{"score":{"name":"VarTranPR.1Laenge","objective":"PZTranPR.1Ausl"},"color":"dark_purple","bold":true}]

# Der Spieler erhält die Erlaubnis den Auslöser wieder zu betätigen und sein Wert wird auf null gesetzt.
scoreboard players enable @s PZTranPR.1Ausl
scoreboard players set @s PZTranPR.1Ausl 0
