scoreboard players remove @s mechPowerPercent 1
scoreboard players set @s mechPowerConsumption 0
execute store result score .tempPower mechPowerPercent run scoreboard players get @s mechPowerPercent
data merge entity @n[tag=mechEnergyDisplay] {text:[{"score":{"name":".tempPower","objective":"mechPowerPercent"},"color":"blue"},{"text":"%","color":"blue"}]}

execute if score @s mechPowerPercent matches ..0 run function core:mech/turn_off