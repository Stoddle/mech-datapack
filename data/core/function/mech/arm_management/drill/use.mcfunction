execute on vehicle run scoreboard players add @s mechPowerConsumption 10

execute if score .mechSide variables matches 1 run scoreboard players set @s rightArmCD 2
execute if score .mechSide variables matches 2 run scoreboard players set @s leftArmCD 2

particle crit ~ ~-0.1 ~ 0.3 0.3 0.3 0.2 8
playsound block.stone_button.click_on player @a ~ ~ ~ 1 1.4
playsound block.stone_button.click_off player @a ~ ~ ~ 1 0.7

scoreboard players set .raycastDrill variables 14
execute as @p at @s anchored eyes positioned ^ ^ ^0.5 run function core:mech/arm_management/drill/raycast