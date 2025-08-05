playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
playsound minecraft:entity.player.breath player @a ~ ~ ~ 1 1
item replace entity @s weapon.mainhand with echo_shard[item_name="Energy Cell (empty)",lore=[{"color":"gray","italic":false,"text":"Right-Click while carrying a block of Lapis Lazuli to charge"}],rarity="common",max_stack_size=1,custom_data={mechItemID:4b},consumable={consume_seconds:999999,animation:"none",has_consume_particles:false},item_model="mech:other/energy_cell_empty"]
execute as @n[tag=selectedMechClick] run execute on vehicle run function core:mech/reset_target_mech_energy
tag @e[tag=selectedMechClick] remove selectedMechClick