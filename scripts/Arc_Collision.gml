px = argument0
py = argument1
angle1 = argument2 + image_angle
angle2 = argument3 + image_angle
radius1 = argument4
radius2 = argument5

anglTo = point_direction(x, y, px, py)
dist = distance_to_point(px, py)

return angle_difference(anglTo, angle1) > 0 and
    angle_difference(anglTo, angle2) < 0 and
    dist < radius1 and dist > radius2
