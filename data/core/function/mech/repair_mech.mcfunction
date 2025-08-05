clear @s iron_block 1
playsound minecraft:block.anvil.use player @a ~ ~ ~ 1 1.5
execute as @n[tag=selectedMechClick] run execute on vehicle run function core:mech/apply_repair