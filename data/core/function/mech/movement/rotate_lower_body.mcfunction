rotate @s ~ 0

execute if score .moveForward variables matches 1.. run return run function core:mech/movement/adjust_forward
execute if score .moveBackward variables matches 1.. run return run function core:mech/movement/adjust_backward
execute if score .moveRight variables matches 1.. run return run rotate @s ~90 0
execute if score .moveLeft variables matches 1.. run return run rotate @s ~-90 0