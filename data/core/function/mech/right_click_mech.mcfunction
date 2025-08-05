advancement revoke @s only core:right_click_mech
execute as @e[tag=mechInteraction] if data entity @s interaction run tag @s add selectedMechClick
execute as @e[tag=selectedMechClick] run data remove entity @s interaction

execute if predicate core:is_riding_active_mech unless score @s rightArmCD matches 1.. run return run function core:mech/arm_management/shoot_right_arm

execute store result storage mech selectedMechID int 1 run scoreboard players get @n[tag=selectedMechClick] mechID
execute if data entity @s SelectedItem.components."minecraft:custom_data".mechArmID run return run function core:mech/arm_management/try_attach_arm with storage mech

execute unless predicate core:is_riding_active_mech if data entity @s SelectedItem.components."minecraft:custom_data".fullEnergyCell run return run function core:mech/try_recharge_with_cell

execute unless predicate core:is_riding_active_mech if items entity @s weapon.mainhand iron_block run return run function core:mech/try_repair_mech

execute unless predicate core:is_riding_active_mech if items entity @s weapon.mainhand #core:dye run return run function core:mech/dye_mech

execute unless predicate core:is_riding_active_mech run function core:mech/try_ride_nearest_mech

tag @e[tag=selectedMechClick] remove selectedMechClick