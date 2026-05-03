function item_lb_dogdollar() : item() constructor {
	name = ["DogDollar"]
	desc = ["A dollar with a certain dog on it. Its value decreases each Chapter.", "Not so useful"]
	
	use = function(item_index, target_index, caller) {
		if instance_exists(o_enc)
	{
	switch(global.party_names[target_index])
	{
		case "kris": dialogue_start("* Kris admired DOGDOLLAR!") break
		case "susie": dialogue_start("* Susie admired DOGDOLLAR!") break
		case "ralsei": dialogue_start("* Ralsei admired DOGDOLLAR!") break
		case "noelle": dialogue_start("* Noelle admired DOGDOLLAR!") break
			}
		}else{
		//does nothing in the overworld	
		}
	}
}

//i gave up so dogdollar is all yall get 