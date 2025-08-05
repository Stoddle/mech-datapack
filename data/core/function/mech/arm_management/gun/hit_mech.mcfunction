scoreboard players add @s mechDamageBuildUp 2
execute at @s run function core:mech/take_damage
particle crit ~ ~ ~ 0.15 0.15 0.15 0.2 3 force @a
kill @n[tag=mechBullet]