execute as @e[tag=mechBomb] at @s run function core:mech/arm_management/cannon/bomb_selector
execute if entity @e[tag=mechBomb] run schedule function core:mech/arm_management/cannon/tick_bomb 1t