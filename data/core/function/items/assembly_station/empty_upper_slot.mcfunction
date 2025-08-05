execute at @p run summon item ~ ~ ~ {Tags:["upperItem"],Item:{id:"minecraft:stone",count:1}}
data modify entity @n[tag=upperItem] Item set from entity @s item
data remove entity @s item