scoreboard players remove .raycastCable variables 1
particle dust{color:[0.290,0.290,0.290],scale:1.1} ~ ~ ~ 0 0 0 1 1 force @a
execute if entity @e[tag=cableRotationAnchor,distance=..1] run scoreboard players set .raycastCable variables 0
execute if score .raycastCable variables matches 1.. positioned ^ ^ ^1 run function core:mech/arm_management/cable/raycast_effect