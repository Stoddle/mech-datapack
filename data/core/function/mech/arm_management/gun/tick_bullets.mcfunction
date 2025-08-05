execute as @e[tag=mechBullet] at @s run function core:mech/arm_management/gun/bullet_selector
execute if entity @e[tag=mechBullet] run schedule function core:mech/arm_management/gun/tick_bullets 1t