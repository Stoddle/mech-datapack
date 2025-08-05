execute if predicate core:is_riding_active_mech run function core:mech/tick_riding_mech

execute if entity @s[tag=mechSafeFall] unless predicate core:is_riding_active_mech run function core:mech/remove_mech_safe_fall

execute if score @s useSpawnEgg matches 1.. run function core:items/use_spawn_egg
execute if score @s damageResisted matches 1.. run scoreboard players set @s damageResisted 0