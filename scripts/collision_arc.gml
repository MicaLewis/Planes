inst = argument0
angle1 = argument1
angle2 = argument2
radius1 = argument3
radius2 = argument4

anglTo = point_direction(x, y, inst.x, inst.y)
dist = point_distance(x, y, inst.x, inst.y)

return angle_difference(anglTo, angle1) > 0 and 
    angle_difference(anglTo, angle2) < 0 and
    dist > radius1 and dist < radius2
