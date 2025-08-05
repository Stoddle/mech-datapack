execute at @p run summon item ~ ~ ~ {Tags:["cellItem"],Item:{id:"minecraft:stone",count:1}}
data modify entity @n[tag=cellItem] Item set from entity @s item
data remove entity @s item