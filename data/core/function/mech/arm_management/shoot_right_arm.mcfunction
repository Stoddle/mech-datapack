tag @e[tag=selectedMechClick] remove selectedMechClick
execute on vehicle unless score @s mechPowerPercent matches 1.. run return fail

execute store result score .selectedArmID variables run execute on vehicle run scoreboard players get @s rightArmID
scoreboard players set .mechSide variables 1

execute if score .selectedArmID variables matches 1 run execute anchored eyes rotated ~ 0 positioned ^-1.3 ^ ^2.8 run function core:mech/arm_management/gun/shoot
execute if score .selectedArmID variables matches 2 run execute anchored eyes rotated ~ 0 positioned ^-1.3 ^ ^2.8 run function core:mech/arm_management/precision/shoot
execute if score .selectedArmID variables matches 3 run execute anchored eyes rotated ~ 0 positioned ^-1.3 ^ ^2.6 run function core:mech/arm_management/cannon/shoot
execute if score .selectedArmID variables matches 4 run execute anchored eyes rotated ~ 0 positioned ^-1.3 ^ ^2.6 run function core:mech/arm_management/cable/shoot
execute if score .selectedArmID variables matches 5 run execute anchored eyes rotated ~ 0 positioned ^-1.3 ^ ^1.6 run function core:mech/arm_management/drill/use
execute if score .selectedArmID variables matches 6 run execute anchored eyes rotated ~ 0 positioned ^-1.5 ^ ^ run function core:mech/arm_management/thruster/use