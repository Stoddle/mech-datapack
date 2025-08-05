data modify entity @n[tag=assemblyLowerDisplay] item set from entity @p[advancements={core:right_click_assembly_station=true}] SelectedItem
item replace entity @p[advancements={core:right_click_assembly_station=true}] weapon.mainhand with air
playsound block.stone.place block @a ~ ~ ~ 1 1
playsound minecraft:entity.iron_golem.hurt block @a ~ ~ ~ 0.5 0.5