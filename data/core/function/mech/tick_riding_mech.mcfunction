execute if predicate core:inputs/pressing_sneak run return run function core:mech/dismount

effect give @s resistance 1 100 true

execute if score @s rightArmCD matches 1.. run scoreboard players remove @s rightArmCD 1
execute if score @s leftArmCD matches 1.. run scoreboard players remove @s leftArmCD 1

execute if score @s damageResisted matches 1.. run execute on vehicle run function core:mech/take_damage
execute as @e[type=#core:mech_damageable_projectiles,distance=..3] at @s run function core:mech/projectile_hit

execute if predicate core:inputs/pressing_input run function core:mech/movement/move_mech

execute unless predicate core:inputs/pressing_input if predicate core:vehicle_is_on_ground if score @s mechWalkAnimation matches 1.. run function core:mech/movement/reset_nearest_mech_walk_animation

execute if predicate core:inputs/pressing_jump run function core:mech/movement/jump

execute as @e[tag=rotatablePart,distance=..1] run rotate @s ~ 0
execute as @e[tag=mechHUD,distance=..1] run rotate @s ~180 0

execute on vehicle run function core:mech/tick_active_mech
