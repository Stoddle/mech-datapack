execute on vehicle run scoreboard players add @s mechPowerConsumption 350

execute if score .mechSide variables matches 1 run scoreboard players set @s rightArmCD 50
execute if score .mechSide variables matches 2 run scoreboard players set @s leftArmCD 50

playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 1 0.9
particle electric_spark ~ ~-0.1 ~ 0.1 0.1 0.1 0.7 20

execute store result score .tempID mechID on vehicle run scoreboard players get @s mechID
scoreboard players set .raycastPrecision variables 120
execute as @p at @s anchored eyes positioned ^ ^ ^0.5 run function core:mech/arm_management/precision/raycast_anchor
scoreboard players set .raycastPrecision variables 120
execute facing entity @n[tag=precisionRotationAnchor] eyes positioned ^ ^ ^0.5 run function core:mech/arm_management/precision/raycast_beam