execute if predicate core:inputs/pressing_forward run scoreboard players set .moveForward variables 1
execute if predicate core:inputs/pressing_backward run scoreboard players set .moveBackward variables 1
execute if predicate core:inputs/pressing_right run scoreboard players set .moveRight variables 1
execute if predicate core:inputs/pressing_left run scoreboard players set .moveLeft variables 1

execute on vehicle anchored feet run summon area_effect_cloud ~ ~ ~ {Tags:["mechMovementAnchor"],Radius:0f,Duration:1,Age:100}
execute as @n[tag=mechMovementAnchor] run function core:mech/movement/selector_movement_anchor
execute as @n[tag=mechLowerBody] run function core:mech/movement/rotate_lower_body

scoreboard players set .moveForward variables 0
scoreboard players set .moveBackward variables 0
scoreboard players set .moveRight variables 0
scoreboard players set .moveLeft variables 0

execute on vehicle unless score @s cableMoving matches 1.. run function core:mech/movement/apply_mech_motion

execute if predicate core:vehicle_is_on_ground run function core:mech/movement/animate_legs