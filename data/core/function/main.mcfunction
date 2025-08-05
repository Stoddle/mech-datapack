execute as @a at @s run function core:tick_everyone
execute as @e[tag=mechPart] at @s if predicate core:is_in_void_entity run function core:mech/is_in_void