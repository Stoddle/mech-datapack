execute rotated as @p[predicate=core:is_riding_active_mech] run tp @s ~ ~ ~ ~ 0

execute if score .moveForward variables matches 1.. at @s run tp @s ^ ^ ^0.1
execute if score .moveBackward variables matches 1.. at @s run tp @s ^ ^ ^-0.1
execute if score .moveRight variables matches 1.. at @s run tp @s ^-0.1 ^ ^
execute if score .moveLeft variables matches 1.. at @s run tp @s ^0.1 ^ ^

function core:get_pos_variables