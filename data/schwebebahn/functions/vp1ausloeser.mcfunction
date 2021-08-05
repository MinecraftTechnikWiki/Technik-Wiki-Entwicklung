
scoreboard players add @s[scores={PZSchwB.p1Ausl=1,PZSchwB.p1Wert=..63}] PZSchwB.p1Wert 1
scoreboard players remove @s[scores={PZSchwB.p1Ausl=-1,PZSchwB.p1Wert=1..}] PZSchwB.p1Wert 1

tellraw @s ["Schwebebahn.erweitert.1: ",{"text":"\nstreckenhoehe = ","bold":true},{"text":"streckenhoehe + 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für streckenhoehe + 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set 1"} },{"text":"\nstreckenhoehe = ","bold":true},{"text":"streckenhoehe - 1","color":"gray","underlined":true,"bold":true,"hoverEvent":{"action":"show_text","value":{"text":"Tippe für streckenhoehe - 1"} },"clickEvent":{"action":"run_command","value":"/trigger PZSchwB.p1Ausl set -1"} },{"text":"\nstreckenhoehe == ","bold":true},{"score":{"name":"@s","objective":"PZSchwB.p1Wert"},"color":"dark_purple","bold":true} ]

scoreboard players enable @s PZSchwB.p1Ausl
scoreboard players set @s PZSchwB.p1Ausl 0
