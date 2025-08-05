data modify entity @s Motion[1] set value 0.8
data merge entity @n[tag=mechLowerBody] {item:{components:{"minecraft:custom_model_data":{floats:[100]}}}}
playsound block.piston.extend player @a ~ ~ ~ 1 1
particle white_smoke ~ ~ ~ 0.3 0.2 0.3 0.1 15