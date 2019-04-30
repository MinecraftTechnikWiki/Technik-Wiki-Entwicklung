# Für jedes Tier wird die entsprechende Herzen-Funktion geladen, die dann die maximale Lebensenergie berücksichtigt
execute if entity @s[scores={PZLebP.2MaxLeb=1..3}] run function lebenspunkte-system:v2herzen_3
execute if entity @s[scores={PZLebP.2MaxLeb=4}] run function lebenspunkte-system:v2herzen_4
execute if entity @s[scores={PZLebP.2MaxLeb=5..6}] run function lebenspunkte-system:v2herzen_6
execute if entity @s[scores={PZLebP.2MaxLeb=7..8}] run function lebenspunkte-system:v2herzen_8
execute if entity @s[scores={PZLebP.2MaxLeb=9..10}] run function lebenspunkte-system:v2herzen_10
execute if entity @s[scores={PZLebP.2MaxLeb=11..20}] run function lebenspunkte-system:v2herzen_20
execute if entity @s[scores={PZLebP.2MaxLeb=21..30}] run function lebenspunkte-system:v2herzen_30
