scoreboard players remove .raycastDrill variables 1

execute unless block ~ ~ ~ #core:drill_voidable run function core:mech/arm_management/drill/hit_block

execute if score .raycastDrill variables matches 1.. positioned ^ ^ ^0.5 run function core:mech/arm_management/drill/raycast