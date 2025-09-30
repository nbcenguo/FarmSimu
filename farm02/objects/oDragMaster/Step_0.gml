if instance_exists(global.dragId)=false{
	global.dragId=noone;
}

if global.dragId != noone{
	global.dragId.x=mouse_x
	global.dragId.y=mouse_y
}