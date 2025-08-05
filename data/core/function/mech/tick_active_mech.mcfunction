scoreboard players add @s mechPowerConsumption 1
execute if score @s mechPowerConsumption matches 700.. run function core:mech/remove_power_percent

execute if score @s cableMoving matches 1.. run scoreboard players remove @s cableMoving 1

execute as @e[type=#core:enemies,distance=..3,tag=!bumpCooldown] at @s facing entity @n[tag=mech] feet run function core:mech/bump_enemy