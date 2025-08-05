scoreboard players add @s mechWalkAnimation 1
execute if score @s mechWalkAnimation matches 17.. run scoreboard players set @s mechWalkAnimation 1

execute if score @s mechWalkAnimation matches 3 run data merge entity @n[tag=mechUpperBody] {start_interpolation:0,interpolation_duration:2,transformation:{translation:[0f,1.0f,0f]}}
execute if score @s mechWalkAnimation matches 8 run playsound mech:step player @a ~ ~ ~ 1 0.8
execute if score @s mechWalkAnimation matches 7 run data merge entity @n[tag=mechUpperBody] {start_interpolation:0,interpolation_duration:2,transformation:{translation:[0f,0.98f,0f]}}
execute if score @s mechWalkAnimation matches 11 run data merge entity @n[tag=mechUpperBody] {start_interpolation:0,interpolation_duration:2,transformation:{translation:[0f,1.0f,0f]}}
execute if score @s mechWalkAnimation matches 16 run playsound mech:step player @a ~ ~ ~ 1 0.8
execute if score @s mechWalkAnimation matches 15 run data merge entity @n[tag=mechUpperBody] {start_interpolation:0,interpolation_duration:2,transformation:{translation:[0f,0.98f,0f]}}


execute store result storage mech walkAnimationFrame int 1 run scoreboard players get @s mechWalkAnimation
function core:mech/movement/apply_animation with storage mech