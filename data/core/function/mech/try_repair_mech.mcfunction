execute as @n[tag=selectedMechClick] run execute on vehicle store result score .tempHealth mechHealth run scoreboard players get @s mechHealth

execute unless score .tempHealth mechHealth matches 100.. run return run function core:mech/repair_mech

title @s actionbar {"text":"This mech is already fully repaired","color":"red"}

tag @e[tag=selectedMechClick] remove selectedMechClick