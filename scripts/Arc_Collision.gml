px = argument0
px = argument1
angle1 = argument2 + image_angle
angle2 = argument3 + image_angle
radius1 = argument4
radius2 = argument5

anglTo = point_direction(x, y, px, py)
dist = distance_to_point(x, y)

return anglTo > angle1 and anglTo < angle2 and dist < radius1 and dist > radius2
