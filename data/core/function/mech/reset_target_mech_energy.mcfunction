tag @s add active
scoreboard players set @s mechPowerPercent 100
execute positioned ~ ~2 ~ run data merge entity @n[tag=mechEnergyDisplay] {text:[{"text":"100%","color":"blue"}]}
execute positioned ~ ~2 ~ as @n[tag=mechUpperBody] run data merge entity @s {item:{components:{"minecraft:custom_model_data":{floats:[1]}}}}