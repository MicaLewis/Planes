var xx = argument0 + 1
var yy = argument1 + 1
var radius = argument2
var angle1 = argument3
var angle2 = argument4

if (angle2 < angle1){
    var tmp = angle2
    angle2 = angle1
    angle1 = tmp
}

var i
draw_primitive_begin(pr_linestrip)
for(i = angle1; i < angle2; i += min(10, angle2-i)){
    draw_vertex( xx + radius*dcos(i), yy - radius*dsin(i))
}
draw_vertex( xx + radius*dcos(i), yy - radius*dsin(i))
draw_primitive_end()
