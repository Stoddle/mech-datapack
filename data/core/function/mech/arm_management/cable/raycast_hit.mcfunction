scoreboard players remove .raycastCable variables 1
particle dust{color:[0.800,0.800,0.800],scale:0.25} ~ ~ ~ 0 0 0 0 1 force @a
execute unless block ~ ~ ~ #core:voidable run function core:mech/arm_management/cable/hit_block
execute if score .raycastCable variables matches 1.. positioned ^ ^ ^1 run function core:mech/arm_management/cable/raycast_hit