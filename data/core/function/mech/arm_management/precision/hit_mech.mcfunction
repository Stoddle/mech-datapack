scoreboard players set .raycastPrecision variables 0
scoreboard players remove @s mechHealth 9
scoreboard players set @s mechDamageBuildUp 6
execute at @s run function core:mech/take_damage
particle crit ~ ~1 ~ 1 0.7 1 0.2 10 force @a