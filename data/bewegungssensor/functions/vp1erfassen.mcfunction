
execute positioned ^ ^ ^0.2 unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Vorwaerts"]}
execute positioned ^ ^ ^-0.2 unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Rueckwaerts"]}
execute positioned ^0.2 ^ ^ unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Links"]}
execute positioned ^-0.2 ^ ^ unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Rechts"]}

execute positioned ^0.2 ^ ^0.2 unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Vorwaerts"]}
execute positioned ^0.2 ^ ^-0.2 unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Rueckwaerts"]}
execute positioned ^-0.2 ^ ^0.2 unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Vorwaerts"]}
execute positioned ^-0.2 ^ ^-0.2 unless entity @s[distance=..0.1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["EtiBewS.p1Alle","EtiBewS.p1Rueckwaerts"]}

execute at @e[type=minecraft:area_effect_cloud,tag=EtiBewS.p1Vorwaerts] run title @s[distance=..0.1] actionbar [{"text":"vorwärts","color":"red","bold":true}]
execute at @e[type=minecraft:area_effect_cloud,tag=EtiBewS.p1Rueckwaerts] run title @s[distance=..0.1] actionbar [{"text":"rückwärts","color":"red","bold":true}]
execute at @e[type=minecraft:area_effect_cloud,tag=EtiBewS.p1Links] run title @s[distance=..0.1] actionbar [{"text":"links","color":"red","bold":true}]
execute at @e[type=minecraft:area_effect_cloud,tag=EtiBewS.p1Rechts] run title @s[distance=..0.1] actionbar [{"text":"rechts","color":"red","bold":true}]
