function pickPartner(){
	//pick the other chicken
	var num=instance_number(oChicken)
	
	//fill a list with chickens that dont have a parnter
	var avail=ds_list_create()
	for(var k=0; k<num; k++) {
		var cid=instance_find(oChicken,k)
		if cid!=id and cid.partner=noone
		  ds_list_add(avail,cid)
	}
	
	if ds_list_size(avail)<=0 
		return;
	  
	//pick the partner in avail list, and link the two
	var pos=irandom_range(0,ds_list_size(avail)-1)
	partner=ds_list_find_value(avail,pos)
	
	ds_list_destroy(avail)

	state=7
	if(partner.state!=6){
		partner.state=6
		partner.partner=id
	}
}

function giveGender(){
	self.gender=irandom_range(0,1)
}


