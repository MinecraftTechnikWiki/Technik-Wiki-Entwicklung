# Falls der Spieler eine andere bestimmte Nahrung als das letzte Mal isst, erhält er ein Etikett dafür
tag @a[scores={PZHungS.1Brot=1}] add EtiHungS.1AnderesEssen
tag @a[scores={PZHungS.1Apfel=1}] add EtiHungS.1AnderesEssen
tag @a[scores={PZHungS.1GeSchfl=1}] add EtiHungS.1AnderesEssen
tag @a[scores={PZHungS.1GeKabj=1}] add EtiHungS.1AnderesEssen

# Falls der eine andere Nahrung zu sich genommen hat, wird ihm sein Punktestand für einseitiges Essen um fünf Punkte reduziert
scoreboard players remove @a[tag=EtiHungS.1AnderesEssen,scores={PZHungS.1GlEss=6..}] PZHungS.1GlEss 5

# Falls der Spieler abwechselungsreiche Nahrung zu sich nimmt, werden die Punktestände der jeweils anderen Nahrungssorten zurückgesetzt
scoreboard players set @a[tag=EtiHungS.1AnderesEssen,scores={PZHungS.1Apfel=2..}] PZHungS.1Apfel 0
scoreboard players set @a[tag=EtiHungS.1AnderesEssen,scores={PZHungS.1Brot=2..}] PZHungS.1Brot 0
scoreboard players set @a[tag=EtiHungS.1AnderesEssen,scores={PZHungS.1GeSchfl=2..}] PZHungS.1GeSchfl 0
scoreboard players set @a[tag=EtiHungS.1AnderesEssen,scores={PZHungS.1GeKabj=2..}] PZHungS.1GeKabj 0

# Die Etiketten für das Essen von anderer Nahrung oder für einseitige Ernährung werden entfernt
tag @a[tag=EtiHungS.1AnderesEssen] remove EtiHungS.1AnderesEssen
tag @a[tag=EtiHungS.1EinseitigesEssen,scores={PZHungS.1GlEss=..3}] remove EtiHungS.1EinseitigesEssen

# Wenn der Spieler eine bestimmte Nahrung das erste mal zu sich nimmt, wird der Punktestand für das gleiche zu Essen um eins erhöht andernfalls wird es jedesmal um zwei erhöht
scoreboard players add @a[scores={PZHungS.1Apfel=1}] PZHungS.1GlEss 1
scoreboard players set @a[scores={PZHungS.1Apfel=1}] PZHungS.1Apfel 2
scoreboard players add @a[scores={PZHungS.1Apfel=3..}] PZHungS.1GlEss 2
scoreboard players set @a[scores={PZHungS.1Apfel=3..}] PZHungS.1Apfel 2

scoreboard players add @a[scores={PZHungS.1Brot=1}] PZHungS.1GlEss 1
scoreboard players set @a[scores={PZHungS.1Brot=1}] PZHungS.1Brot 2
scoreboard players add @a[scores={PZHungS.1Brot=3..}] PZHungS.1GlEss 2
scoreboard players set @a[scores={PZHungS.1Brot=3..}] PZHungS.1Brot 2

scoreboard players add @a[scores={PZHungS.1GeSchfl=1}] PZHungS.1GlEss 1
scoreboard players set @a[scores={PZHungS.1GeSchfl=1}] PZHungS.1GeSchfl 2
scoreboard players add @a[scores={PZHungS.1GeSchfl=3..}] PZHungS.1GlEss 2
scoreboard players set @a[scores={PZHungS.1GeSchfl=3..}] PZHungS.1GeSchfl 2

scoreboard players add @a[scores={PZHungS.1GeKabj=1}] PZHungS.1GlEss 1
scoreboard players set @a[scores={PZHungS.1GeKabj=1}] PZHungS.1GeKabj 2
scoreboard players add @a[scores={PZHungS.1GeKabj=3..}] PZHungS.1GlEss 2
scoreboard players set @a[scores={PZHungS.1GeKabj=3..}] PZHungS.1GeKabj 2

# Wenn der Spieler bereits mehrmals das gleiche gegessen hat, erhält er eine Warnung, dass er anfängt zu einseitig zu essen
title @a[tag=!EtiHungS.1EinseitigesEssen,scores={PZHungS.1GlEss=10..12}] actionbar ["",{"text":"Du fängst an zu einseitig zu Essen!","color":"dark_red","bold":true}]
tag @a[tag=!EtiHungS.1EinseitigesEssen,scores={PZHungS.1GlEss=10..12}] add EtiHungS.1EinseitigesEssen

# Wenn der Spieler die maximale Anzahl einer gleichen Nahrung zu sich genommen hat, erhält er wieder eine Warnung, diesmal aber einen Hungereffekt und der Wert bleibt stehen
title @a[scores={PZHungS.1GlEss=27..}] actionbar ["",{"text":"Du isst zu einseitig!","color":"dark_purple","bold":true}]
effect give @a[scores={PZHungS.1GlEss=27..}] minecraft:hunger 5 255 true
scoreboard players remove @a[scores={PZHungS.1GlEss=27..}] PZHungS.1GlEss 1
