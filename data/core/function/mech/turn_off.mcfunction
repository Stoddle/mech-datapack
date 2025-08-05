tag @s remove active
execute positioned ~ ~2 ~ run data merge entity @n[tag=mechEnergyDisplay] {text:[{"score":{"name":".tempPower","objective":"mechPowerPercent"},"color":"red"},{"text":"%","color":"red"}]}
execute positioned ~ ~2 ~ as @n[tag=mechUpperBody] run data merge entity @s {item:{components:{"minecraft:custom_model_data":{floats:[0]}}}}
function core:mech/movement/reset_nearest_mech_walk_animation