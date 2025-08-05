data modify storage mech dyeID set from entity @s SelectedItem.id
tag @s add dyeClearTarget
execute at @n[tag=selectedMechClick] as @n[tag=mechUpperBody] run function core:mech/apply_dye with storage mech
tag @s remove dyeClearTarget
execute at @s run playsound block.wool.place player @a ~ ~ ~ 1 1
tag @e[tag=selectedMechClick] remove selectedMechClick

execute as @p unless entity @s[advancements={core:achievements/dye_mech=true}] run advancement grant @s only core:achievements/dye_mech