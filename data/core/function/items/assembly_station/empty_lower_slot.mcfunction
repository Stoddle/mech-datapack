execute at @p run summon item ~ ~ ~ {Tags:["lowerItem"],Item:{id:"minecraft:stone",count:1}}
data modify entity @n[tag=lowerItem] Item set from entity @s item
data remove entity @s item