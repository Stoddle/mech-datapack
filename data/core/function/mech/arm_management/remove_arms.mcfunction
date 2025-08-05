execute store result score .selectedArmID variables run scoreboard players get @s leftArmID
execute if score .selectedArmID variables matches 1.. run function core:mech/arm_management/give_back_arm_by_id
scoreboard players set @s leftArmID 0

execute store result score .selectedArmID variables run scoreboard players get @s rightArmID
execute if score .selectedArmID variables matches 1.. run function core:mech/arm_management/give_back_arm_by_id
scoreboard players set @s rightArmID 0

execute on passengers run data remove entity @n[tag=leftMechArm] item
execute on passengers run data remove entity @n[tag=rightMechArm] item

tag @e[tag=selectedMechClick] remove selectedMechClick