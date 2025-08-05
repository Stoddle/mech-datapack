kill @s
kill @n[tag=assemblyStationDisplay]
kill @n[tag=assemblyCellDisplay]
kill @n[tag=assemblyUpperDisplay]
kill @n[tag=assemblyLowerDisplay]
playsound entity.item.pickup player @a ~ ~ ~ 1 1
execute as @p[advancements={core:left_click_assembly_station=true}] unless entity @s[gamemode=creative] run function core:items/assembly_station/give