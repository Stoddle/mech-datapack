tellraw @s {"text":"This mech isn't complete and cannot be assembled yet. You're missing the following piece(s):","color":"red"}
execute unless score .assemblyCheckUpper variables matches 1.. run tellraw @s {"text":"-Upper Body","color":"red"}
execute unless score .assemblyCheckLower variables matches 1.. run tellraw @s {"text":"-Lower Body","color":"red"}
execute unless score .assemblyCheckCell variables matches 1.. run tellraw @s {"text":"-Energy Cell","color":"red"}