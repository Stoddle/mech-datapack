execute if score .mechSide variables matches 1 run scoreboard players set @s rightArmCD 3
execute if score .mechSide variables matches 2 run scoreboard players set @s leftArmCD 3

playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2

execute on vehicle run tag @s add selectedMechCable

scoreboard players set .raycastCable variables 50
execute as @p at @s anchored eyes positioned ^ ^ ^1 run function core:mech/arm_management/cable/raycast_hit

scoreboard players set .raycastCable variables 100
execute if entity @n[tag=cableRotationAnchor] facing entity @n[tag=cableRotationAnchor] eyes positioned ^ ^ ^0.5 run function core:mech/arm_management/cable/raycast_effect

execute as @n[tag=selectedMechCable] at @s anchored feet if entity @n[tag=cableRotationAnchor] run function core:mech/arm_management/cable/apply_motion_mech

execute on vehicle run tag @s remove selectedMechCable