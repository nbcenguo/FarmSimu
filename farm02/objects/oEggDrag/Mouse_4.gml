if place_meeting(x,y,oChicken) = false {
    instance_create_depth(x,y,0,oChicken)
    instance_destroy()
    global.dragId=noone
}