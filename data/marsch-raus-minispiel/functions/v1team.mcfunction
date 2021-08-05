
execute if entity @s[scores={PZMADNMS.1Team=0}] as @p run tellraw @s[scores={PZMADNMS.1Team=1..4}] ["Marsch-Raus-Minispiel.1:\n",{"text":"Team verlassen","color":"gray","bold":true}]

execute if entity @s[scores={PZMADNMS.1Team=1}] as @p unless entity @s[scores={PZMADNMS.1Team=1..4}] run tellraw @s ["Marsch-Raus-Minispiel.1:\n",{"text":"Team Orange betreten","color":"gold","bold":true}]

execute if entity @s[scores={PZMADNMS.1Team=2}] as @p unless entity @s[scores={PZMADNMS.1Team=1..4}] run tellraw @s ["Marsch-Raus-Minispiel.1:\n",{"text":"Team Blau betreten","color":"aqua","bold":true}]

execute if entity @s[scores={PZMADNMS.1Team=3}] as @p unless entity @s[scores={PZMADNMS.1Team=1..4}] run tellraw @s ["Marsch-Raus-Minispiel.1:\n",{"text":"Team Violett betreten","color":"dark_purple","bold":true}]

execute if entity @s[scores={PZMADNMS.1Team=4}] as @p unless entity @s[scores={PZMADNMS.1Team=1..4}] run tellraw @s ["Marsch-Raus-Minispiel.1:\n",{"text":"Team Grün betreten","color":"green","bold":true}]

scoreboard players operation @p PZMADNMS.1Team = @s PZMADNMS.1Team
