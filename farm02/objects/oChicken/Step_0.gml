//0=sleep, 1=walk, 2=eat, 3=runAway,4=still,5=grow,6=breed7=die
if(state=0){
	sleep()
}else if(state=1){
	walk()
}else if(state=2){
	eat()
}else if(state=3){
	runAway()
}else if(state=4){
	still()
}else if(state=5){
	grow()
}

if(state != 0) rested -= REST_CHANGE




//increase age
age+=0.01
//check age ?mature
if(age>1){
	sprite_index=sChicken
	state=1
}else{
	sprite_index=sEgg
	state=4
}

//check age ?die
if(age>8){
	dead()//only chances to die
}

//breed
breedCounter-=1
if(state=1 && breedCounter<0){
	state=6
	pickPartner()
	breedCounter=300
}

if(instance_exists(partner)){
	getClose()
	if(point_distance(x,y,partner.x,partner.y)<40){
		speed=0
		//place an egg, back to state 1, partner=noone
		if(gender!=partner.gender){
			newBorn=instance_create_depth(x,y,0,oChicken)
			newBorn.sprite_index=sEgg
		}
		state=1
		partner=noone
	}	
}