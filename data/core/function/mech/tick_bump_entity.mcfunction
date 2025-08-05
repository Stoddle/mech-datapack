execute as @e[scores={bumpCooldown=1..}] at @s run function core:mech/selector_bump_entity
execute if entity @e[scores={bumpCooldown=1..}] run schedule function core:mech/tick_bump_entity 1t