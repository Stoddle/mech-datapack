advancement revoke @s only core:left_click_mech
execute as @e[tag=mechInteraction] if data entity @s attack run tag @s add selectedMechClick
execute as @e[tag=selectedMechClick] run data remove entity @s attack

execute if predicate core:is_riding_active_mech unless score @s leftArmCD matches 1.. run return run function core:mech/arm_management/shoot_left_arm

execute unless predicate core:is_riding_active_mech if data entity @s SelectedItem.components."minecraft:custom_data".wrench run return run execute as @n[tag=selectedMechClick] at @s on vehicle run function core:mech/arm_management/remove_arms

tag @e[tag=selectedMechClick] remove selectedMechClick