
execute as @a[scores={PZParEl.1Klick=1..}] at @s rotated ~ 0 if block ^ ^ ^0.6 #parcours-element:v1klettern run tag @s add EtiParEl.1Klettern
execute as @a[scores={PZParEl.1Klick=1..}] at @s rotated ~ 0 if block ^ ^1 ^0.6 #parcours-element:v1klettern run tag @s add EtiParEl.1Klettern

effect give @a[tag=EtiParEl.1Klettern] minecraft:slow_falling 1 1 true

effect clear @a[tag=!EtiParEl.1Klettern,scores={PZParEl.1Klick=1..}] minecraft:levitation
effect give @a[tag=EtiParEl.1Klettern] minecraft:levitation 1 1 true

execute as @a[tag=EtiParEl.1Klettern] at @s run playsound minecraft:block.ladder.step master @s ~ ~ ~ 1 2 1
execute at @a[tag=EtiParEl.1Klettern] run particle minecraft:block{block_state:{Name:"minecraft:ladder"} } ^ ^1 ^0.4 0 0 0 0.1 10 force @a[distance=..15]

scoreboard players set @a[scores={PZParEl.1Klick=1..}] PZParEl.1Klick 0
tag @a[tag=EtiParEl.1Klettern] remove EtiParEl.1Klettern
