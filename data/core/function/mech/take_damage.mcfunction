playsound minecraft:entity.iron_golem.hurt player @a ~ ~ ~ 1 0.5
scoreboard players add @s mechDamageBuildUp 1
execute if score @s mechDamageBuildUp matches 6.. run function core:mech/decrease_health