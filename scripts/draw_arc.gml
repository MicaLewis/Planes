var xx = argument0 + 1
var yy = argument1 + 1
var radius = argument2
var angle1 = argument3
var angle2 = argument4

var i
draw_primitive_begin(pr_linestrip)
for(i = angle1; abs(i) < abs(angle2); i += sign(angle2 - angle1)*min(10, abs(angle2)-abs(i))){
    draw_vertex( xx + radius*dcos(i), yy - radius*dsin(i))
}
draw_vertex( xx + radius*dcos(i), yy - radius*dsin(i))
draw_primitive_end()
