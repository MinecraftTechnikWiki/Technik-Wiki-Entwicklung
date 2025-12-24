
$execute store success score VarKartDar.1Block PZKartDar.1Ausl if block ~ ~ ~ $(Block)

execute if score VarKartDar.1Block PZKartDar.1Ausl matches 1 run tag @s remove EtiKartDar.1Messen
execute if score VarKartDar.1Block PZKartDar.1Ausl matches 1 run scoreboard players operation VarKartDar.1Zaehler PZKartDar.1Ausl = @s PZKartDar.1Ausl

execute if score VarKartDar.1Block PZKartDar.1Ausl matches 1 run say hi
execute if score VarKartDar.1Block PZKartDar.1Ausl matches 1 run tellraw @p [{score:{name:"VarKartDar.1Zaehler",objective:"PZKartDar.1Ausl"} }]

$execute if score VarKartDar.1Block PZKartDar.1Ausl matches 1 as @e[type=minecraft:block_display,tag=EtiKartDar.1Block] if score @s PZKartDar.1Ausl = VarKartDar.1Zaehler PZKartDar.1Ausl run data modify entity @s block_state.Name set value "$(Block)"

#tellraw @s [{score:{name:"VarKartDar.1Zaehler",objective:"PZKartDar.1Ausl"} }]
#execute if score VarKartDar.1Block PZKartDar.1Ausl matches 1 run say found

#execute as @e[type=minecraft:block_display,tag=EtiKartDar.1Block] if score @s PZKartDar.1Ausl = VarKartDar.1Zaehler PZKartDar.1Ausl run say hi darsteller

#execute if score VarKartDar.1Block PZKartDar.1Ausl matches 1 as @e[type=minecraft:block_display,tag=EtiKartDar.1Block] if score @s PZKartDar.1Ausl = VarKartDar.1Zaehler PZKartDar.1Ausl run say hi darsteller

#$execute if score VarKartDar.1Block PZKartDar.1Ausl matches 1 run tellraw @s "$(Block)"

#setblock ~ ~ ~ minecraft:sand
