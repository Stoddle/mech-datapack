ride @s mount @n[tag=mech]
execute rotated as @n[tag=mechUpperBody] run rotate @s ~ ~
tag @s add mechSafeFall
attribute @s safe_fall_distance modifier add mech_safe_fall 999 add_value
playsound block.iron_trapdoor.open player @a ~ ~ ~ 1 1