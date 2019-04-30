
execute if entity @s[scores={PZSchMS.1Brett=1}] run scoreboard players add VarSchMS.1VierSchach PZSchMS.1Brett 1
execute if entity @s[scores={PZSchMS.1Brett=1}] if score VarSchMS.1VierSchach PZSchMS.1Brett matches 3.. run scoreboard players set VarSchMS.1VierSchach PZSchMS.1Brett 0

execute if entity @s[scores={PZSchMS.1Brett=2}] run scoreboard players add VarSchMS.1Horde PZSchMS.1Brett 1
execute if entity @s[scores={PZSchMS.1Brett=2}] if score VarSchMS.1Horde PZSchMS.1Brett matches 2.. run scoreboard players set VarSchMS.1Horde PZSchMS.1Brett 0
