tp @s ^ ^ ^1
particle dust{color:[0.212,0.192,0.192],scale:0.3} ~ ~ ~ 0.02 0.02 0.02 0 7 force @a
execute if entity @e[tag=mechInteraction,distance=..2] store result score .hitID mechID run scoreboard players get @s mechID
execute as @n[tag=mechInteraction,distance=..2] on vehicle unless score @s mechID = .hitID mechID run function core:mech/arm_management/gun/hit_mech
execute if entity @e[type=!#core:objects,distance=..2] run function core:mech/arm_management/gun/hit_entity