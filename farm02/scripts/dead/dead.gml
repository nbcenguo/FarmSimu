// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dead(){

	var k =irandom_range(0,1000)
	if(k>985){
		instance_destroy()
		instance_create_depth(x,y,0,oBlood)
	}
}