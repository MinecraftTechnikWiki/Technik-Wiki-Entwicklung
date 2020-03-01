# Es wird der Prozentwert berechnet
scoreboard players operation @s PZLebP.2Vergl = @s PZLebP.2Leben
scoreboard players operation @s PZLebP.2Vergl *= #KonstLebP.2HUNDERTPROZENT PZLebP.2MaxLeb
scoreboard players operation @s PZLebP.2Vergl /= @s PZLebP.2MaxLeb

# Je nach Prozent der Leben wird die Kreatur in eines der Teams gesteckt
team join TMLebP.2Leb0 @s[scores={PZLebP.2Vergl=0..9}]
team join TMLebP.2Leb10 @s[scores={PZLebP.2Vergl=10..19}]
team join TMLebP.2Leb20 @s[scores={PZLebP.2Vergl=20..29}]
team join TMLebP.2Leb30 @s[scores={PZLebP.2Vergl=30..39}]
team join TMLebP.2Leb40 @s[scores={PZLebP.2Vergl=40..49}]
team join TMLebP.2Leb50 @s[scores={PZLebP.2Vergl=50..59}]
team join TMLebP.2Leb60 @s[scores={PZLebP.2Vergl=60..69}]
team join TMLebP.2Leb70 @s[scores={PZLebP.2Vergl=70..79}]
team join TMLebP.2Leb80 @s[scores={PZLebP.2Vergl=80..89}]
team join TMLebP.2Leb90 @s[scores={PZLebP.2Vergl=90..99}]
team join TMLebP.2Leb100 @s[scores={PZLebP.2Vergl=100..}]
