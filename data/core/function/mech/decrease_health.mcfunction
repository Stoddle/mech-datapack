scoreboard players set @s mechDamageBuildUp 0
playsound minecraft:entity.iron_golem.damage master @a ~ ~ ~ 1 2
scoreboard players remove @s mechHealth 1
execute if score @s mechHealth matches ..0 run return run function core:mech/destroy

function core:mech/update_health_display