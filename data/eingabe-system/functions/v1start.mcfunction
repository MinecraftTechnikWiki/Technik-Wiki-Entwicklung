
scoreboard objectives add PZEingS.1Zeit minecraft.custom:minecraft.play_one_minute ["Eingabe-System.1 ",{"text":"Spielerzeit","bold":true}]
scoreboard objectives add PZEingS.1Taste trigger ["Eingabe-System.1 ",{"text":"Tastenklick","bold":true}]
scoreboard players set @a[distance=..25] PZEingS.1Taste 1
gamerule sendCommandFeedback false
