kill @e[tag=mechPart]
kill @e[tag=assemblyStationPart]

scoreboard objectives remove variables
scoreboard objectives remove mechID
scoreboard objectives remove mechColorID
scoreboard objectives remove rightArmID
scoreboard objectives remove leftArmID
scoreboard objectives remove rightArmCD
scoreboard objectives remove leftArmCD
scoreboard objectives remove mechPowerPercent
scoreboard objectives remove mechPowerConsumption
scoreboard objectives remove mechHealth
scoreboard objectives remove mechDamageBuildUp
scoreboard objectives remove mechWalkAnimation
scoreboard objectives remove bumpCooldown
scoreboard objectives remove cableMoving
scoreboard objectives remove damageResisted
scoreboard objectives remove useSpawnEgg
scoreboard objectives remove age
scoreboard objectives remove age2
scoreboard objectives remove xPos
scoreboard objectives remove yPos
scoreboard objectives remove zPos
scoreboard objectives remove constant

tellraw @a [{"text":"Every objectives and "},{"text":"loaded","color":"gold"},{"text":" entities used by Stoddle's Mech Datapack have been removed. You may now remove the datapack from your datapack folder."}]