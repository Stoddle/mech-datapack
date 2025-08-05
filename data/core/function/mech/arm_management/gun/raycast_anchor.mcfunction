scoreboard players remove .raycastBulletAnchor variables 1
execute unless block ~ ~ ~ #core:voidable run scoreboard players set .raycastBulletAnchor variables 0
execute if score .raycastBulletAnchor variables matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:["bulletRotationAnchor"],Radius:0f,Duration:0,Age:0,WaitTime:-1}
execute if score .raycastBulletAnchor variables matches 1.. positioned ^ ^ ^0.5 run function core:mech/arm_management/gun/raycast_anchor