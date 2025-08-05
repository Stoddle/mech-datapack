playsound entity.generic.explode player @a ~ ~ ~ 1 1
particle explosion ~ ~1 ~ 1 1 1 1 5

execute store result score .hitID mechID run scoreboard players get @s mechID
execute as @e[tag=mech,distance=..7] at @s unless score @s mechID = .hitID mechID run function core:mech/arm_management/cannon/hit_mech
execute as @e[type=!#core:objects,predicate=!core:is_riding_active_mech,distance=..6] run damage @s 25 explosion by @p[predicate=core:is_riding_active_mech]
kill @s