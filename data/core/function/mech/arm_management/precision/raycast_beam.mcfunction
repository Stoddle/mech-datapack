scoreboard players remove .raycastPrecision variables 1
particle end_rod ~ ~ ~ 0.01 0.01 0.01 0.15 1
execute if entity @e[tag=precisionRotationAnchor,distance=..1] run scoreboard players set .raycastPrecision variables 0
execute as @e[tag=mechInteraction,distance=..2] at @s on vehicle unless score @s mechID = .tempID mechID run function core:mech/arm_management/precision/hit_mech
execute as @e[type=!#core:objects,distance=..2] at @s run function core:mech/arm_management/precision/hit_entity
execute if score .raycastPrecision variables matches 1.. positioned ^ ^ ^0.5 run function core:mech/arm_management/precision/raycast_beam