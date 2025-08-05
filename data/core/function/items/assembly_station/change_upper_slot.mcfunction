data modify entity @n[tag=assemblyUpperDisplay] item set from entity @p[advancements={core:right_click_assembly_station=true}] SelectedItem
item replace entity @p[advancements={core:right_click_assembly_station=true}] weapon.mainhand with air
playsound item.armor.equip_chain block @a ~ ~ ~ 1 1
playsound block.chain.place block @a ~ ~ ~ 0.7 1
playsound block.chain.place block @a ~ ~ ~ 0.7 1.2
playsound minecraft:entity.iron_golem.hurt block @a ~ ~ ~ 0.5 0.5