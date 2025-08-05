tag @s remove newMechBullet
rotate @s facing entity @n[tag=bulletRotationAnchor]
execute store result score @s mechID run scoreboard players get .tempID mechID