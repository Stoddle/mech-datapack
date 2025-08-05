scoreboard players set .raycastCable variables 0
summon area_effect_cloud ~ ~ ~ {Tags:["cableRotationAnchor"],Radius:0f,Duration:0,Age:0,WaitTime:-1}
particle crit ~ ~ ~ 0.3 0.3 0.3 0.3 15 force @a

execute on vehicle run scoreboard players add @s mechPowerConsumption 150
execute if score .mechSide variables matches 1 run scoreboard players set @s rightArmCD 40
execute if score .mechSide variables matches 2 run scoreboard players set @s leftArmCD 40