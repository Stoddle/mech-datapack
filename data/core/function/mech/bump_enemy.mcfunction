execute anchored eyes run particle crit ^ ^-0.3 ^ 0.3 0.3 0.3 0.5 5

function core:get_pos_variables
tp @s ^ ^ ^-0.1
function core:get_pos
tp @s ^ ^ ^0.1

execute store result entity @s Motion[0] double 0.02 run scoreboard players operation @s xPos -= .storedX variables
execute store result entity @s Motion[1] double 0.02 run scoreboard players operation @s yPos -= .storedY variables
execute store result entity @s Motion[2] double 0.02 run scoreboard players operation @s zPos -= .storedZ variables

tag @s add bumpCooldown
scoreboard players set @s bumpCooldown 20
function core:mech/tick_bump_entity

damage @s 3 player_attack by @p[predicate=core:is_riding_active_mech]

execute as @n[tag=mech] at @s run function core:mech/take_damage