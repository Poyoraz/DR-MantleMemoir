function item_lb_darkcandy() : item() constructor {
	name = ["Dark Candy"]
	desc = ["Heals 40 HP. A red-and-black star that tastes like marshmallows.", "Heals 40HP"]
	
	use = function(item_index, target_index, caller = -1) {
		party_heal(global.party_names[target_index], 40, caller)
		item_delete(item_index)
	}
	reactions = {
		susie: "Yeahh!! That's good!",
		ralsei: {
		ralsei: "Yummy!!! Marshmallows!!",
		susie: "Hey, feed ME!",
		},
		noelle: "Oh, it's... sticky?",
	}   
	buy_price = 40
	sell_price = 13
}

function item_lb_favorite_sandwich() : item() constructor {
	name = function() {
		if instance_exists(o_enc)
		return "Favwich"
	return "FavoriteSandwich"
	}
	
	desc = ["You'd think it tastes perfect. Heals 500HP.", "Heals ALL HP"]
	
	use = function(item_index, target_index, caller = -1) {
		party_heal(global.party_names[target_index], 500, caller)
		item_delete(item_index)
	}
	reactions = {
		susie: "(It's SO good!)",
		ralsei: "K-Kris!? I..",
		noelle: "(Huh? I didn't know Kris liked this flavor.)",
	}   
	sell_price = 5
}

function item_lb_clubs_sandwich() : item() constructor {
	name = function() {
		if instance_exists(o_enc)
		return "Clubswich"
	return "ClubsSandwich"
	}
	
	desc = ["A sandwich that can be split into 3. Heals 70 HP to the team.", "Heals team 70HP"]
	
	use_type = ITEM_USE.EVERYONE
	use = function(item_index, target_index, caller = -1) {
		party_heal_all(70, caller)
		item_delete(item_index)
	}
	reactions = {
		susie: "Quit hogging!",
		ralsei: "(It's cut evenly...)",
		noelle: "(Kris took two thirds of it...)",
	}  
	sell_price = 35
}

function item_lb_rouxls_roux() : item() constructor {
	name = ["RouxlsRoux"]
	desc = ["A dark roux with a delicate aroma. Also... has worms in it. +50HP", "Heals 50HP"]
	
	use = function(item_index, target_index, caller = -1) {
		if instance_exists(o_enc)
		party_heal(global.party_names[target_index], 50, caller)
		else
		party_heal(global.party_names[target_index], 60, caller)
		
		item_delete(item_index)
	}
	reactions = {
		susie: "Cool, it's wriggling.",
		ralsei: "Yum, is this spaghetti?",
		noelle: "Tastes like... jumprope?",
	}
	sell_price = 25
}

function item_lb_tv_slop() : item() constructor {
	name = ["TVSlop"]
	desc = ["Some sort of bland cafeteria food. The ice cream cone is soggy and saggy.", "Heals 80HP"]
	
	use = function(item_index, target_index, caller = -1) {
		party_heal(global.party_names[target_index], 80, caller)
		item_delete(item_index)
	}
	reactions = {
		susie: "Like my old school.",
		ralsei: "Is this legal?",
		noelle: "Here, I refreezed it!",
	}
	sell_price = 90
}

function item_lb_flat_soda() : item() constructor {
	name = ["FlatSoda"]
	desc = ["Flat soda someone already took a big sip from. Recovers 20HP", "Heals 20HP"]
	
	use = function(item_index, target_index, caller = -1) {
		party_heal(global.party_names[target_index], 20, caller)
		item_delete(item_index)
	}
	reactions = {
		susie: "Fine, I'll finish it.",
		ralsei: "Aw, you saved me half?",
		noelle: "(Whatever, it's just Kris's...)",
	}
	sell_price = 1
}

function item_lb_exec_buffet() : item() constructor {
	name = ["ExecBuffet"]
	desc = ["A dinner for cushy TV executives. The blue \"caviar\" is unforgettable.", "Heals party 100HP"]
	
	use_type = ITEM_USE.EVERYONE
	use = function(item_index, target_index, caller = -1) {
		party_heal_all(100, caller)
		item_delete(item_index)
	}
	reactions = {
		susie: "Rich people eat THIS?",
		ralsei: "P... pinky up!",
		noelle: "Caviar AGAIN?",
	}
	sell_price = 300
}

function item_lb_deluxe_dinner() : item() constructor {
	name = ["DeluxeDinner"]
	desc = ["A TV Dinner for high-ranking contestants. Comes with detachable antennas.", "Heals 140HP"]
	
	use = function(item_index, target_index, caller = -1) {
		party_heal(global.party_names[target_index], 140, caller)
		item_delete(item_index)
	}
	reactions = {
		susie: "Look, I'm a roach.",
		ralsei: "I'm a comfy caterpillar!",
		noelle: "I'm, um, an alien?",
	}
	sell_price = 300	
}

//complex shit, DONT TOUCH

function item_lb_bittertear() : item() constructor {
	name = ["BitterTear"]
	desc = ["Bitter water that fell in droplets from the sky. Recovers all HP.", "Heals All HP"]
	
	use = function(item_index, target_index, caller) {
        var target = global.party_names[target_index]
			var heal = party_getdata(target, "max_hp")
			party_heal(target, heal, caller)			
		item_delete(item_index)
	}
			
	reactions = {
		susie: "...Isn't that rain?",
		ralsei: "",
		noelle: "It's like when we ate snow.",
	}
	can_sell = false
}

function item_lb_dark_burger() : item() constructor {
	name = ["Darkburger"]
	desc = ["A mysterious black burger made of... Hey, this is just burnt!", "Heals 70HP"]
	
    use = function(item_index, target_index, caller = -1) {
        {
         switch(global.party_names[target_index])
        {
        case "kris": party_heal(global.party_names[target_index], 70, caller) break
        case "susie": party_heal(global.party_names[target_index], 70, caller) break
        case "ralsei": party_heal(global.party_names[target_index], 70, caller) break
        case "noelle": party_heal(global.party_names[target_index], 20, caller) break
        }
        item_delete(item_index)
        }
    }
	reactions = {
		susie: "Cooked to perfection!",
		ralsei: "A bit burnt...?",
		noelle: "I-is this real meat...?",
	}
	buy_price = 70
	sell_price = 35
}

function item_lb_dd_burger() : item() constructor {
	name = ["DD-Burger"]
	desc = ["It's the Double-Dark-Burger. It'll take two bites to finish!", "Heals 60HP 2x"]
	
    use = function(item_index, target_index, caller = -1) {
        {
         switch(global.party_names[target_index])
        {
        case "kris": party_heal(global.party_names[target_index], 60, caller) break
        case "susie": party_heal(global.party_names[target_index], 60, caller) break
        case "ralsei": party_heal(global.party_names[target_index], 60, caller) break
        case "noelle": party_heal(global.party_names[target_index], 20, caller) break
        }
        array_set(global.items,item_index,new item_lb_dark_burger())
        }
    }
	reactions = {
		susie: "C'mon, gimme the rest!",
		ralsei: "M-maybe give Susie the rest?",
		noelle: "Th... there's MORE!?",
	}
	sell_price = 70
}

function item_lb_ancient_sweet() : item() constructor {
	name = ["AncientSweet"]
	desc = ["A chocolatey cone etched with arcane glyphs. Only Kris can eat it. +400 HP.", "Heals 400HP"]
	
	use = function(item_index, target_index, caller = -1) {
		{
		 switch(global.party_names[target_index])
		{
		case "kris": party_heal(global.party_names[target_index], 400, caller) break
		case "susie": party_heal(global.party_names[target_index], 40, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 40, caller) break
		case "noelle": party_heal(global.party_names[target_index], 40, caller) break
		}
		item_delete(item_index)
		}
	}
		reactions = {
		susie: "Ugh! How old is this?!",
		ralsei: "Aww Kris, y-your favorite...",
		noelle: "I'd... I'd rather eat meat...",
		}
	sell_price = 500
	}
	
	function item_java_cookie() : item() constructor {
	name = ["JavaCookie"]
	desc = ["A coffee-and-chocolate flavored cookie. Words spark out when you bite it.", "Heals 90HP"]
	
	use = function(item_index, target_index, caller = -1) {
		{
		 switch(global.party_names[target_index])
		{
		case "kris": party_heal(global.party_names[target_index], 100, caller) break
		case "susie": party_heal(global.party_names[target_index], 90, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 90, caller) break
		case "noelle": party_heal(global.party_names[target_index], 90, caller) break
		}
		item_delete(item_index)
		}
	}
		reactions = {
		susie: "It says GUTS!",
		ralsei: "It says Fluffy...",
		noelle: "I... I can't read these symbols...",
		}
	sell_price = 80
	}
	
function item_lb_giga_salad() : item() constructor {
    name = ["GigaSalad"]
    desc = ["An enormous salad... but, it's just lettuce, so it's worthless. +4HP", "Heals 4HP"]
    
    use = function(item_index, target_index, caller = -1) {
        {
         switch(global.party_names[target_index])
        {
        case "kris": party_heal(global.party_names[target_index], 4, caller) break
        case "susie": party_heal(global.party_names[target_index], 4, caller) break
        case "ralsei": party_heal(global.party_names[target_index], 4, caller) break
        case "noelle": party_heal(global.party_names[target_index], 90, caller) break
        }
        item_delete(item_index)
        }
    }
        reactions = {
        susie: "Why this!?",
        ralsei: "Let's be healthy!",
        noelle: "Something to graze on!",
        }   
	sell_price = 5
    }
	
	function item_lb_scarlixir() : item() constructor {
	name = ["Scarlixir"]
	desc = ["A red brew with a sickeningly fruity taste. Recovers 160 HP.", "Heals 160HP"]
	
	use = function(item_index, target_index, caller = -1) {
		{
		 switch(global.party_names[target_index])
		{
		case "kris": party_heal(global.party_names[target_index], 160, caller) break
		case "susie": party_heal(global.party_names[target_index], 160, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 160, caller) break
		case "noelle":
		{
		party_heal("kris",5,caller)
		party_heal("noelle",155,caller)
		break
		}
		}
		item_delete(item_index)
		
		}
	}
		reactions = {
		susie: "Hell yeah! Cheers!",
		ralsei: "Y-yuck! Er, mmm, medicine?",
		noelle: "... fine, you can have the LAST DROP.",
			}
		sell_price = 225
		}
		
	function item_lb_revivebrite() : item() constructor {
	name = ["ReviveBrite"]
	desc = ["A breakable mint that revives all fallen party members to 100% HP.", "Revives team 100%"]
	
	use_type = ITEM_USE.EVERYONE
	use = function(item_index, target_index, caller = -1) {
		for (var i = 0;i < array_length(global.party_names);i ++){ //this checks if party members are downed or not
			if instance_exists(o_enc){
				if party_isup(global.party_names[i]){
					party_heal(global.party_names[i], 50, caller)
				}else {
					var heal = max(party_getdata(global.party_names[i], "max_hp") - party_getdata(global.party_names[i], "hp"), 0)
					party_heal(global.party_names[i], heal, caller)
	} 
	  }
	  else{
			party_heal(global.party_names[i], 50, caller)  
	  }
		 }
		 item_delete(item_index)
			}
	  		reactions = {
		susie: "Don't throw mints at me!",
		ralsei: "It's minty!",
		noelle: "What are you throwing?",
			}
	sell_price = 2000
	}
	
function item_lb_revivedust() : item() constructor {
    name = ["ReviveDust"]
    desc = ["A minty powder that revives all fallen party members to 25% HP.", "Revives team 25%"]
   
    use_type = ITEM_USE.EVERYONE
	use = function(item_index, target_index, caller = -1) {
        for (var i = 0; i < array_length(global.party_names); i ++) { // changed the variable name to "i" and made it local
            if instance_exists(o_enc){
                if party_isup(global.party_names[i])
                    party_heal(global.party_names[i], 10, caller)
                else {
                    // moved the /4 thing to where we calculate the max hp so we subtract properly
                    var heal = max(party_getdata(global.party_names[i], "max_hp")/4 - party_getdata(global.party_names[i], "hp"), 0)
                    party_heal(global.party_names[i], round(heal), caller) // round the healing amount to avoid artifacts
                } 
            }
            else
                party_heal(global.party_names[i], 10, caller)  
            
        }
        
        item_delete(item_index)
    }
    
    reactions = {
        susie: "Don't throw dust at me!",
        ralsei: "It's minty!",
        noelle: "What are you sprinkling?",
    }
	sell_price = 50	
}

function item_lb_cdbagel() : item() constructor {
	name = ["CD Bagel"]
	desc = ["A bagel with a reflective inside. Makes music with each bite. +80HP", "Heals 80HP"]
	
	use = function(item_index, target_index, caller = -1) {
		party_heal(global.party_names[target_index], 80, caller)
		switch(global.party_names[target_index])
	{
	case "kris": audio_play(snd_krisreactionbagel) break
	case "susie": audio_play(snd_susiereactionbagel) break
	case "ralsei": audio_play(snd_ralseireactionbagel) break
	case "noelle": audio_play(snd_noellereactionbagel) break
	}
		item_delete(item_index)
	}
	reactions = {
		susie: "It's got crunch.",
		ralsei: "How elegant!",
		noelle: "What a nice song...",
	}
	sell_price = 50	
}

function item_lb_lancer_cookie() : item() constructor {
	name = function() {
		if instance_exists(o_enc)
		return "LancerCookie"
	return "Lancer Cookie"
	}
	
	desc = ["A cookie shaped like Lancer's face. Maybe not a cookie. Heals 5/1 HP?", "Heals 50HP"]
	
	use = function(item_index, target_index, caller = -1) {
		if instance_exists(o_enc){
		party_heal(global.party_names[target_index], 50, caller)
		}
		else{
		party_heal(global.party_names[target_index], 4, caller)
		}
		item_delete(item_index)
	}
	reactions = {
		susie: "Mmm... face",
		ralsei: "(uncomfortable)",
		noelle: "Umm, what is this? It's cute...",
	}
	buy_price = 40
	sell_price = 5	
}

function item_lb_spincake() : item() constructor {
	name = function() {
		if instance_exists(o_enc)
		return "Spincake"
	return "SpinCake"
	}
	
	desc = function() {
		if global.chapter == 1
			return "A pastry in the shape of a top. Heals 80 HP to the team."
		if global.chapter == 2
			return "A pastry in the shape of a top. Heals 140 HP to the team."
		if global.chapter == 3
			return "A pastry in the shape of a top. Heals 150 HP to the team."
		if global.chapter == 4
			return "A pastry in the shape of a top. Heals 160 HP to the team."
	}
	
	use_type = ITEM_USE.EVERYONE
	use = function(item_index, target_index, caller = -1) {
		if global.chapter == 1{
		party_heal_all(80, caller)
		}
		if global.chapter == 2{
		party_heal_all(140, caller)
		}
		if global.chapter == 3{
		party_heal_all(150, caller)
		}
		if global.chapter == 4{
		party_heal_all(160, caller)
		}
		item_delete(item_index)
	}
	reactions = {
		susie: "I'm dizzy.",
		ralsei: "Mmm, thank you!",
		noelle: "My eyes are spinning...",
	}
	sell_price = 3
	}


function item_lb_hearts_donut() : item() constructor {
		name = function() {
		if instance_exists(o_enc)
		return "HeartsDonut"
	return "Hearts Donut"
	}
	
	desc = ["Hearts, don't it!? It's filled with divisive, clotty red jam. +??HP", "Healing varies"]
	
	use = function(item_index, target_index, caller = -1){

	if instance_exists(o_enc)
	{
	 switch(global.party_names[target_index])
	{
		case "kris": party_heal(global.party_names[target_index], 10, caller) break
		case "susie": party_heal(global.party_names[target_index], 90, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 60, caller) break
		case "noelle": party_heal(global.party_names[target_index], 30, caller) break
		}
		item_delete(item_index)
	}
		else
	{
	switch(global.party_names[target_index])
	{
		case "kris": party_heal(global.party_names[target_index], 20, caller) break
		case "susie": party_heal(global.party_names[target_index], 80, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 50, caller) break
		case "noelle": party_heal(global.party_names[target_index], 30, caller) break
		}
		item_delete(item_index)
	}
	buy_price = 40
	sell_price = 20
}
	
	reactions = {
		susie: "Mmm, blood!",
		ralsei: "Aah, sticky...",
		noelle: "Mmm... what!? It's blood!?",
		}
	sell_price = 20
}

function item_lb_choco_diamond() : item() constructor {
	name = function() {
		if instance_exists(o_enc)
		return "ChocDiamond"
	return "Choco Diamond"
	}
	
	desc = ["It's quite small, but some people REALLY like it. +??HP", "Healing varies"]
	
	use = function(item_index, target_index, caller = -1){

	if instance_exists(o_enc)
	{
	 switch(global.party_names[target_index])
	{
		case "kris": party_heal(global.party_names[target_index], 80, caller) break
		case "susie": party_heal(global.party_names[target_index], 20, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 50, caller) break
		case "noelle": party_heal(global.party_names[target_index], 70, caller) break
		}
		item_delete(item_index)
		}
		else
		{
		switch(global.party_names[target_index])
		{
		case "kris": party_heal(global.party_names[target_index], 80, caller) break
		case "susie": party_heal(global.party_names[target_index], 20, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 50, caller) break
		case "noelle":
		{
		party_heal("kris",35,caller)
		party_heal("noelle",35,caller)
		break
		}
		}
		item_delete(item_index)
		}
	}
		reactions = {
		susie: "THAT'S it?",
		ralsei: "Aww, thanks, Kris!",
		noelle: "Umm, it's ok, Kris, I'll share..",
		} 
	buy_price = 40
	sell_price = 20		
}


function item_lb_tensionbit() : item() constructor {
	name = ["TensionBit"]
	desc = ["Raises TP 32% in battle.", "Raises TP 32%"]
	use_encounter_text = ""
	use_type = ITEM_USE.EVERYONE
    
    use_type = ITEM_USE.EVERYONE
    
    use_instant = function() {
        o_enc.tp += 32
		audio_play(snd_cardrive)
    }
    use_instant_cancel = function() {
        o_enc.tp -= 32
    }
    use = function(item_index, target_index) {
        if !instance_exists(o_enc) {
            instance_destroy(o_ui_menu)
            dialogue_start(loc("ex_item_tensiongem_use"))
        }
		if instance_exists(o_enc)
        item_delete(item_index)
    }
		sell_price = 50
        }
function item_lb_tensiongem() : item() constructor {
	name = ["TensionGem"]
	desc = ["Raises TP 50% in battle.", "Raises TP 50%"]
	use_encounter_text = ""
	use_type = ITEM_USE.EVERYONE
    
    use_type = ITEM_USE.EVERYONE
    
    use_instant = function() {
        o_enc.tp += 50
		audio_play(snd_cardrive)
    }
    use_instant_cancel = function() {
        o_enc.tp -= 50
    }
    use = function(item_index, target_index) {
        if !instance_exists(o_enc) {
            instance_destroy(o_ui_menu)
            dialogue_start(loc("ex_item_tensiongem_use"))
        }
        if instance_exists(o_enc)
        item_delete(item_index)
    }
		sell_price = 150
        }
function item_lb_tensionmax() : item() constructor {
	name = ["TensionMax"]
	desc = ["Raises TP to full in battle.", "Raises TP Max"]
	use_encounter_text = ""
	use_type = ITEM_USE.EVERYONE
    
    use_type = ITEM_USE.EVERYONE
    
    use_instant = function() {
        o_enc.tp += 100
		audio_play(snd_cardrive)
    }
    use_instant_cancel = function() {
        o_enc.tp -= 100
    }
    use = function(item_index, target_index) {
        if !instance_exists(o_enc) {
            instance_destroy(o_ui_menu)
            dialogue_start(loc("ex_item_tensiongem_use"))
        }
        if instance_exists(o_enc)
        item_delete(item_index)
    }
		sell_price = 500
        }
function item_lb_rhapsotea() : item() constructor {
	name = ["Rhapsotea"]
	desc = ["A smooth, silvery drink, It sounds like whispered singing as it's poured.", "+115 HP."]
	
	use = function(item_index, target_index, caller = -1) {
		party_heal(global.party_names[target_index], 115, caller)
		item_delete(item_index)
	}
	reactions = {
		susie: "Sounds kinda like Noelle.",
		ralsei: "... the hymn of the prophecy.",
		noelle: "(... Kris would never join choir...)",
	}
	sell_price = 125
}

//genuinely the most complex item here
function item_lb_s_poison() : item() constructor {
	name = ["S.POISON"];
	desc = ["A strange concoction made of colorful squares. Will poison you.","Hurts party member"];
	use_encounter_text = "* {0} admidistered S.POISON!"

	use = function(item_index,target_index,caller=-1){
	if(instance_exists(o_enc)){
		party_heal(global.party_names[target_index],40,caller);
		audio_play(snd_hurt)
		instance_destroy(o_eff_healeffect)
		
		var target_name = global.party_names[target_index];
		var member_struct = party_get_struct(target_name);
		var start_hp = struct_get(member_struct, "hp");
		
		var o = party_get_inst(global.party_names[target_index])
		instance_create(o_eff_purple_poison_effect, o.x, o.s_get_middle_y(), o.depth-100, {target: o})
	
		var drainer = instance_create(o_enc_hpdrainer_spoison); //genuinely got to lazy to type this object name

		drainer.target_name = target_name;
		drainer.starting_hp = start_hp;
		drainer.inflicted = 1;	
	}else{
		switch(global.party_names[target_index]){
		case "kris": party_hurt(global.party_names[target_index],20,caller); break;
		case "susie": party_hurt(global.party_names[target_index],20,caller); break;
		case "ralsei": party_hurt(global.party_names[target_index],20,caller); break;
		case "noelle": party_heal(global.party_names[target_index],0,caller); break;
		}
	}
	item_delete(item_index);
	};
		reactions={
		susie:"Ugh! ...tastes good?",
		ralsei:"Ow... er, thanks, Kris!",
		noelle:"(I'll... just pretend to drink it...)"
	};
	sell_price = 55
}

//teas
function item_lb_rottontea() : item() constructor {
	name = ["RottonTea"]
	desc = ["A tea that has deteriorated after a short while due to it's poor craftsmanship. +10HP", "Heals 10HP"]
	
	use = function(item_index, target_index, caller = -1) {
		party_heal(global.party_names[target_index], 10, caller)
		item_delete(item_index)
	}
	reactions = {
		susie: "Yuck.",
		ralsei: "Um?",
		noelle: "No flavor... anymore.",
	}
	sell_price = 1
}

function item_lb_kristea() : item() constructor {
	name = ["Kris Tea"]
	desc = ["It's own-flavored tea. The flavor just says \"Kris\"", "Healing varies"]
	
	use = function(item_index, target_index, caller = -1){

	if instance_exists(o_enc)
	{
	 switch(global.party_names[target_index])
	{
		case "kris": party_heal(global.party_names[target_index], 10, caller) break
		case "susie": party_heal(global.party_names[target_index], 120, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 120, caller) break
		case "noelle": party_heal(global.party_names[target_index], 70, caller) break
		}
		item_delete(item_index)
	}
		else
	{
	switch(global.party_names[target_index])
	{
		case "kris": party_heal(global.party_names[target_index], 40, caller) break
		case "susie": party_heal(global.party_names[target_index], 120, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 120, caller) break
		case "noelle": party_heal(global.party_names[target_index], 70, caller) break
		}
		item_delete(item_index)
	}
}
	
	reactions = {
		kris: {
		susie: "(No reaction?)",
		noelle: "(...no reaction?)",
		},
		susie: {
		susie: "Hell yea, apple juice!!",	
		ralsei: "Don't drink so fast!!"
		},
		ralsei: {
		ralsei: "Tastes like blueberries!",
		susie: "Huh? Really?",
		},
		noelle: "Tastes like cinnamon! (What is this aftertaste...?)",
		}
	sell_price = 5
}

function item_lb_susietea() : item() constructor {
	name = ["Susie Tea"]
	desc = ["It's own-flavored tea. The flavor just says \"Susie\"", "Healing varies"]
	
	use = function(item_index, target_index, caller = -1){

	if instance_exists(o_enc)
	{
	 switch(global.party_names[target_index])
	{
		case "kris": party_heal(global.party_names[target_index], 120, caller) break
		case "susie": party_heal(global.party_names[target_index], 10, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 120, caller) break
		case "noelle": party_heal(global.party_names[target_index], 400, caller) break
		}
		item_delete(item_index)
	}
		else
	{
	switch(global.party_names[target_index])
	{
		case "kris": party_heal(global.party_names[target_index], 120, caller) break
		case "susie": party_heal(global.party_names[target_index], 40, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 120, caller) break
		case "noelle": party_heal(global.party_names[target_index], 400, caller) break
		}
		item_delete(item_index)
	}
}
	
	reactions = {
		kris: {
		ralsei: "(They seem into it)",
		susie: "STOP LOOKING AT ME!",
		},
		susie: "... this is tea?",
		ralsei: {
		ralsei: "Its grape juice!",
		susie: "Huh? Really?",
		},
		noelle: "(Wonder if they sell these in gallons?)",
		}
	sell_price = 5
}

function item_lb_ralseitea() : item() constructor {
	name = ["Ralsei Tea"]
	desc = ["It's own-flavored tea. The flavor just says \"Ralsei\"", "Healing varies"]
	
	use = function(item_index, target_index, caller = -1){

	if instance_exists(o_enc)
	{
	 switch(global.party_names[target_index])
	{
		case "kris": party_heal(global.party_names[target_index], 60, caller) break
		case "susie": party_heal(global.party_names[target_index], 120, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 10, caller) break
		case "noelle": party_heal(global.party_names[target_index], 50, caller) break
		}
		item_delete(item_index)
	}
		else
	{
	switch(global.party_names[target_index])
	{
		case "kris": party_heal(global.party_names[target_index], 60, caller) break
		case "susie": party_heal(global.party_names[target_index], 120, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 40, caller) break
		case "noelle": party_heal(global.party_names[target_index], 50, caller) break
		}
		item_delete(item_index)
	}
}
	
	reactions = {
		kris: {
		susie: "(No reaction?)",
		ralsei: "(Im happy!)",
		},
		susie: {
		susie: "Hey, it's like marshmallows!!",	
		ralsei: "D-Don't drink so fast!"
		},
		ralsei: "Um... isn't this water?",
		noelle: "There's nothing in here!",
		}
	sell_price = 5
}

function item_lb_noelletea() : item() constructor {
	name = ["Noelle Tea"]
	desc = ["It's own-flavored tea. The flavor just says \"Noelle\"", "Healing varies"]
	
	use = function(item_index, target_index, caller = -1){

	if instance_exists(o_enc)
	{
	 switch(global.party_names[target_index])
	{
		case "kris": party_heal(global.party_names[target_index], 70, caller) break
		case "susie": party_heal(global.party_names[target_index], 120, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 50, caller) break
		case "noelle": party_heal(global.party_names[target_index], 10, caller) break
		}
		item_delete(item_index)
	}
		else
	{
	switch(global.party_names[target_index])
	{
		case "kris": party_heal(global.party_names[target_index], 70, caller) break
		case "susie": party_heal(global.party_names[target_index], 120, caller) break
		case "ralsei": party_heal(global.party_names[target_index], 50, caller) break
		case "noelle": party_heal(global.party_names[target_index], 40, caller) break
		}
		item_delete(item_index)
	}
}
	
	reactions = {
		kris: {
		ralsei: "(They're drinking it...",
		susie: "(...do they like it?)",
		noelle: " (Umm, do they like it or not...?)",
		},
		susie: {
		susie:	"... this is tea?",
		ralsei: "D-don't drink so fast!"
		},
		ralsei: {
		ralsei: "It's soft and sweet.",
		},
		noelle: "... this is just water! You're pranking me, right?!",
		}	
	sell_price = 5		
}