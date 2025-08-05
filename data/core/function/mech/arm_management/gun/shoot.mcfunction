execute on vehicle run scoreboard players add @s mechPowerConsumption 10

execute if score .mechSide variables matches 1 run scoreboard players set @s rightArmCD 3
execute if score .mechSide variables matches 2 run scoreboard players set @s leftArmCD 3

summon area_effect_cloud ~ ~-0.1 ~ {Tags:["mechBullet","newMechBullet"],Radius:0f,Duration:30,Age:0,WaitTime:-1}
particle white_smoke ~ ~-0.1 ~ 0 0 0 0.1 2
playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 2 0.4

scoreboard players set .raycastBulletAnchor variables 120
execute as @p at @s anchored eyes positioned ^ ^ ^0.5 run function core:mech/arm_management/gun/raycast_anchor

execute store result score .tempID mechID on vehicle run scoreboard players get @s mechID
execute as @n[tag=newMechBullet] run function core:mech/arm_management/gun/setup_bullet
function core:mech/arm_management/gun/tick_bullets