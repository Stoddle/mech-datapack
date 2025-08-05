$execute store result score @n[tag=mech,scores={mechID=$(selectedMechID)}] rightArmID run data get entity @s SelectedItem.components."minecraft:custom_data".mechArmID
$data modify entity @n[tag=rightMechArm,scores={mechID=$(selectedMechID)}] item set from entity @s SelectedItem
item replace entity @s weapon.mainhand with air
playsound item.armor.equip_chain block @a ~ ~ ~ 1 1
playsound minecraft:entity.iron_golem.hurt block @a ~ ~ ~ 0.5 0.5