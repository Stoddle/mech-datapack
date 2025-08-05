scoreboard players set .raycastDrill variables 0

playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1.5
particle crit ~ ~ ~ 0.5 0.5 0.5 0.1 2

execute positioned ^1 ^1 ^ unless block ~ ~ ~ #core:cant_drill run setblock ~ ~ ~ air destroy
execute positioned ^ ^1 ^ unless block ~ ~ ~ #core:cant_drill run setblock ~ ~ ~ air destroy
execute positioned ^-1 ^1 ^ unless block ~ ~ ~ #core:cant_drill run setblock ~ ~ ~ air destroy

execute positioned ^1 ^ ^ unless block ~ ~ ~ #core:cant_drill run setblock ~ ~ ~ air destroy
execute unless block ~ ~ ~ #core:cant_drill run setblock ~ ~ ~ air destroy
execute positioned ^-1 ^ ^ unless block ~ ~ ~ #core:cant_drill run setblock ~ ~ ~ air destroy

execute positioned ^1 ^-1 ^ unless block ~ ~ ~ #core:cant_drill run setblock ~ ~ ~ air destroy
execute positioned ^ ^-1 ^ unless block ~ ~ ~ #core:cant_drill run setblock ~ ~ ~ air destroy
execute positioned ^-1 ^-1 ^ unless block ~ ~ ~ #core:cant_drill run setblock ~ ~ ~ air destroy