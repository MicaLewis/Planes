if(trgt != noone){
    toPlane = 0
    toNext = 0
    radius = 180/anglSpd*spd/pi
    effectiveDist = -1
    anglTo = angle_difference(point_direction(x, y, trgt.x, trgt.y), angl)
    angl += min(abs(anglTo), anglSpd) * sign(anglTo)
    if(abs(anglTo) > 1)
        inRadius = point_distance(trgt.x, trgt.y,
            x + dcos(angl+90*sign(anglTo))*radius,
            y + dsin(angl-90*sign(anglTo))*radius) < radius
    else
        inRadius = 0
    
    if(trgt.next != noone){
        toPlane = point_direction(trgt.x, trgt.y, x, y)
        toNext = point_direction(trgt.x, trgt.y, trgt.next.x, trgt.next.y)
        effectiveDist = abs(radius/dtan(angle_difference(toPlane, toNext)/2))
    }
    
    if(inRadius){
        spd -= min(.05*timespd, spd-minspd)
    } else {
        spd += min(.05*timespd, maxspd-spd)
    }
    
    dist = point_distance(x,y,trgt.x,trgt.y)
    if(dist < spd or (spd == minspd and inRadius) or dist < effectiveDist){
        old = trgt
        trgt = trgt.next
        with(old) instance_destroy()
    }
} else {
    angl = (angl + anglSpd*timespd)%360
    spd += min(.05, maxspd-spd)
}
image_angle = angl
x += dcos(angl)*spd*timespd
y -= dsin(angl)*spd*timespd
