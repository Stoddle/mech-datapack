execute on vehicle run scoreboard players add @s mechPowerConsumption 200

execute if score .mechSide variables matches 1 run scoreboard players set @s rightArmCD 13
execute if score .mechSide variables matches 2 run scoreboard players set @s leftArmCD 13

summon armor_stand ~ ~-0.2 ~ {Tags:["mechBomb","newMechBomb"],Invulnerable:true,NoGravity:false,Invisible:true,Small:true,equipment:{head:{id:"minecraft:tnt",count:1,components:{"minecraft:item_model":"mech:other/bomb"}}}}
particle cloud ~ ~-0.1 ~ 0 0 0 0.1 3
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 1 1
playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 1 0.5
execute store result score .tempID mechID on vehicle run scoreboard players get @s mechID
execute as @n[tag=newMechBomb] at @s run function core:mech/arm_management/cannon/setup_bomb

function core:mech/arm_management/cannon/tick_bomb