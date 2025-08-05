execute on vehicle run scoreboard players add @s mechPowerConsumption 200

execute if score .mechSide variables matches 1 run scoreboard players set @s rightArmCD 100
execute if score .mechSide variables matches 2 run scoreboard players set @s leftArmCD 100

playsound entity.generic.explode player @a ~ ~-1.3 ~ 1 1
particle flame ~ ~-1.3 ~ 0.1 0.1 0.1 0.3 20
particle explosion ~ ~-1.3 ~ 0.1 0.1 0.1 1 1
particle cloud ~ ~-1.3 ~ 0.05 0.05 0.05 0.3 30

execute on vehicle run data modify entity @s Motion[1] set value 2.0