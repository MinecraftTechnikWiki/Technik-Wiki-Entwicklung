



data merge storage verschluesselungs-system:v1daten {EigVerschS.1Ziffern:["0","1","2","3","4","5","6","7","8","9"],EigVerschS.1Kleinbuchstaben:["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"],EigVerschS.1Grossbuchstaben:["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"],EigVerschS.1Sonderzeichen:["!","\"","#","$","%","&","'","(",")","*","+",",","-",".","/",":",";","<","=",">","?","@","[","\\","]","^","_","´","{","}","~","€","°"]}


execute as @a if items entity @s weapon.* *[minecraft:custom_data~{EigImpG.2Stock:true}] run tag @s add EtiImpG.2Ausgewaehlt


tag @a[nbt={SelectedItem:{tag:{EigImpG.2Stock:true} } }] add EtiImpG.2Ausgewaehlt
