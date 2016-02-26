var xx = argument0 + 1
var yy = argument1 + 1
var radius = argument2
var angle1 = argument3
var angle2 = argument4

angle2 = angle_difference(angle1, angle2)

var i
draw_primitive_begin(pr_linestrip)
for(i = 0; i < abs(angle2); i += min(10, abs(angle2)-i)){
    draw_vertex( xx + radius*dcos(angle1-i*sign(angle2)),
        yy - radius*dsin(angle1-i*sign(angle2)))
}
draw_vertex( xx + radius*dcos(angle1-i*sign(angle2)),
    yy - radius*dsin(angle1-i*sign(angle2)))
draw_primitive_end()
