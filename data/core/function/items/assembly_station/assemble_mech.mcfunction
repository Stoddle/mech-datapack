playsound minecraft:block.anvil.use player @a ~ ~ ~ 1 0.7
playsound minecraft:block.smithing_table.use player @a ~ ~ ~ 1 0.7
playsound minecraft:block.smithing_table.use player @a ~ ~ ~ 1 0.7
data remove entity @n[tag=assemblyUpperDisplay] item
data remove entity @n[tag=assemblyLowerDisplay] item
data remove entity @n[tag=assemblyCellDisplay] item
execute positioned ^ ^ ^3 run function core:mech/spawn_mech
rotate @n[tag=mechUpperBody] ~ ~
rotate @n[tag=mechLowerBody] ~ ~
rotate @n[tag=leftMechArm] ~ ~
rotate @n[tag=rightMechArm] ~ ~

execute as @p unless entity @s[advancements={core:achievements/assemble_mech=true}] run advancement grant @s only core:achievements/assemble_mech