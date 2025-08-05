execute as @n[tag=selectedMechClick] run execute on vehicle store result score .tempPower mechPowerPercent run scoreboard players get @s mechPowerPercent

execute unless score .tempPower mechPowerPercent matches 100.. run return run function core:mech/recharge_with_cell

title @s actionbar {"text":"This mech is already fully charged","color":"red"}

tag @e[tag=selectedMechClick] remove selectedMechClick