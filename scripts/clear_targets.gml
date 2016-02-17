trgt = argument0

while(trgt != noone){
    old = trgt
    trgt = trgt.next
    with(old) instance_destroy()
}
