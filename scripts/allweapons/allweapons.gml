function allweapons() : item() constructor {
	type = ITEM_TYPE.WEAPON
}

//swords (that arent already declared)
function item_wlb_twistedsword() : item_weapon() constructor {
    name = ["TwistedSwd"]
    desc = ["A strange blade."]

    stats = {
        attack: 16
    }

    icon = spr_ui_menu_icon_sword
    weapon_whitelist = ["kris"]
	
    reactions = {
        susie: "...uhh, looks bad.",
        ralsei: "It’s like a spiral.",
        noelle: "It’s... kind of scary."
    }

}
	
	function item_wlb_brokensword() : item_weapon() constructor {
    name = ["BrokenSwd"]
    desc = ["A rejected sword cut into 2 pieces. Not even you can equip this..."]

	weapon_whitelist = []

    stats = {}
	effect = {
    text: "Failure",
    sprite: spr_ui_menu_icon_down
    }
		
    icon = spr_ui_menu_icon_sword
    weapon_whitelist = []
	
    reactions = {
        susie: "... this is trash.",
        ralsei: "Should we fix this...?",
        noelle: "(Wh... why give this to me?)"
    }
}

	function item_wlb_trefoil() : item_weapon() constructor {
    name = ["Trefoil"]
    desc = ["Mossy rapier with a clover emblem."]

	weapon_whitelist = ["kris"]

    stats = {
        attack: 4,
    }
		effect = {
        text: "$ +5%",
        sprite: spr_ui_menu_icon_up
    }
	
	    stats_misc = {
        money_modifier: .05
    }
	
    icon = spr_ui_menu_icon_sword
    weapon_whitelist = ["kris"]
	
    reactions = {
        susie: "That tacky thing? No!",
        ralsei: "Not my shade of green...",
        noelle: "Okay! ...? What do you mean, unused!?"
    }
}

	function item_wlb_mecha_saber() : item_weapon() constructor {
    name = ["MechaSaber"]
    desc = ["The blade extends when you press the hilt. CHA-CHK!"]

	weapon_whitelist = ["kris"]

    stats = {
        attack: 4,
    }
		effect = {
        text: "Annoying",
        sprite: spr_ui_menu_icon_demon
    }
	
    icon = spr_ui_menu_icon_sword
    weapon_whitelist = ["kris"]
	
    reactions = {
        susie: "*chk chk chk chk* Nah.",
        ralsei: "You'd look cool holding it, Kris!",
        noelle: "*chk* A-AHH! Scared myself..."
    }
}

	function item_wlb_bounceblade() : item_weapon() constructor {
    name = ["BounceBlade"]
    desc = ["A pink saber with a rubber blade. Weak, but increases defence."]

	weapon_whitelist = ["kris"]

    stats = {
        attack: 2,
		defense: 1,
    }
	
    icon = spr_ui_menu_icon_sword
    weapon_whitelist = ["kris"]
	
    reactions = {
        susie: "What is this, rubber?",
        ralsei: "Soft and squishy!",
        noelle: "S-stop thwacking me!"
    }
}

	function item_wlb_winglade() : item_weapon() constructor {
    name = ["Winglade"]
    desc = ["A majestic sword with a white feathered hilt. Slightly increases money won."]

	weapon_whitelist = ["kris"]

    stats = {
        attack: 8,
    }
			effect = {
        text: "$ +5%",
        sprite: spr_ui_menu_icon_up
    }
	
		    stats_misc = {
        money_modifier: .05
    }
	
    icon = spr_ui_menu_icon_sword
    weapon_whitelist = ["kris"]
	
    reactions = {
        susie: "Don't make me sneeze!",
        ralsei: "Th-that tickles!",
        noelle: "... whose feather is this?"
    }
}

	function item_wlb_blackshard() : item_weapon() constructor {
    name = ["BlackShard"]
    desc = ["A dagger-like shard of the Black Knife. Strikes the weakness of dark-element enemies."]

	weapon_whitelist = ["kris", "noelle"]

    stats = {
		attack: 16,
    }
			effect = {
        text: "SlayDark",
        sprite: spr_ui_menu_icon_shard
    }
	
    icon = spr_ui_menu_icon_shard
    weapon_whitelist = ["kris"]
	
    reactions = {
        susie: "... how is this a weapon?",
        ralsei: "I... shouldn't use it.",
        noelle: ""
    }
}

	function item_wlb_everybody_weapon() : item_weapon() constructor {
    name = ["EverybodyWeapon"]
    desc = ["It felt right for everyone."]
	
	weapon_whitelist = ["kris", "susie", "ralsei", "noelle",]

    stats = {
        attack: 12,
		defense: 6,
		magic: 8,
    }
	
    icon = spr_ui_menu_icon_sword
	
    reactions = {
        susie: "Uhhh... Ok.",
        ralsei: "A perfect fit!",
        noelle: "Wh... what is this?"
    }
}

//axes (that arent already declared
	function item_wlb_braveax() : item_weapon() constructor {
    name = ["BraveAxe"]
    desc = ["A glossy ax from a block warrior. Suitable for heroes."]

	weapon_whitelist = ["susie"]

    stats = {
        attack: 2,
    }
	
    icon = spr_ui_menu_icon_axe
    weapon_whitelist = ["susie"]
	
    reactions = {
        susie: "Well, if I have to.",
        ralsei: "It's a bit too heavy...",
        noelle: "(W-wow, that presence…)"
    }
}

	function item_wlb_autoaxe() : item_weapon() constructor {
    name = ["AutoAxe"]
    desc = ["Make sure to charge it by plugging it into the wall."]

	weapon_whitelist = ["susie"]

    stats = {
        attack: 4,
    }
	effect = {
        text: "BadIdea",
        sprite: spr_ui_menu_icon_demon
    }
	
    icon = spr_ui_menu_icon_axe
    weapon_whitelist = ["susie"]
	
    reactions = {
        susie: "*chainsaw noises* Hahaha!!",
        ralsei: "(Is this a good idea?)",
        noelle: "*zrrt* A-AHH! Scared myself..."
    }
}

	function item_wlb_toxicaxe() : item_weapon() constructor {
    name = ["ToxicAxe"]
    desc = ["An axe used to clear wastelands in a fetid swamp. Not poison but gross."]

	weapon_whitelist = ["susie"]

    stats = {
        attack: 6,
    }
	
    icon = spr_ui_menu_icon_axe
    weapon_whitelist = ["susie"]
	
    reactions = {
        susie: "Eat dirt, losers.",
        ralsei: "Could I wash it off first?",
        noelle: "N-no way! Susie wouldn't use that!"
    }
}

function item_wlb_justiceaxe() : item_weapon() constructor {
	name = ["JusticeAxe"]
	desc = ["It has no special powers. However, in order to attain this item, you became much stronger!"]
	
	stats = {
        attack: 12,
    } 
	icon = spr_ui_menu_icon_axe
	weapon_whitelist = ["susie"]
	
	reactions = {
		susie: "Watch this, old man!",
		ralsei: "...Isn't Susie amazing?",
		noelle: "...Susie beat up an old man!?",
	}
   

} 

//scarfs (that arent already declared)
function item_wlb_ragger() : item_weapon() constructor {
	name = ["Ragger"]
	desc = ["A rugged scarf that cuts enemies like a dagger."]
	
	stats = {
		attack: 2,
    } 
	icon = spr_ui_menu_icon_scarf
	weapon_whitelist = ["ralsei"]
	
	reactions = {
		susie: "This is Ralsei's deal.",
		ralsei: "I'm a prickly prince!",
		noelle: "(It's like Santa's beard?)",
	}
}
function item_wlb_fiberscarf() : item_weapon() constructor {
	name = ["FiberScarf"]
	desc = ["A scarf made of soft microfiber. Balances attack and magic."]
	
	stats = {
        attack: 2,
    } 
	icon = spr_ui_menu_icon_scarf
	weapon_whitelist = ["ralsei"]
	
	reactions = {
		susie: "(Soft...)",
		ralsei: "Oh! My fur's staticy!",
		noelle: "Sure, I'll... huh? It's a weapon?",
	}
}
function item_wlb_ragger2() : item_weapon() constructor {
	name = ["Ragger2"]
	desc = ["A sharp and scratchy scarf. Worse healing, better attack."]
	
	stats = {
        attack: 5,
        magic: -1,
    } 
	icon = spr_ui_menu_icon_scarf
	weapon_whitelist = ["ralsei"]
	
	reactions = {
		susie: "Ow! That can't be comfy!",
		ralsei: "Feels prickly... Nice!",
		noelle: "Ouch! ... kind of nice",
	}
}
function item_wlb_daintyscarf() : item_weapon() constructor {
	name = ["DaintyScarf"]
	desc = ["Delicate scarf that increases healing power but has no attack."]
	
	stats = {
        magic: 2,
    }
		effect = {
        text: "Fluffiness UP",
        sprite: spr_ui_menu_icon_up
    }
	icon = spr_ui_menu_icon_scarf
	weapon_whitelist = ["ralsei"]
	
	reactions = {
		susie: "IT'S MADE OF DOILIES!",
		ralsei: "I'll protect everyone!",
		noelle: "S-stop covering me with it!",
	}
}
function item_wlb_cheerscarf() : item_weapon() constructor {
	name = ["CheerScarf"]
	desc = ["A scarf with colorful you-can-do-it imagery. Gains more TP from criticals."]
	
	stats = {
        magic: 2,
		attack: 1,
    }
		effect = {
        text: "Smiley",
        sprite: spr_ui_menu_icon_smile
    }
	icon = spr_ui_menu_icon_scarf
	weapon_whitelist = ["ralsei"]
	
	reactions = {
		susie: "Smiley faces? Ecch.",
		ralsei: "You can do it!",
		noelle: "Now THIS is a tacky scarf! Faha!",
	}
}
function item_wlb_scarfmark() : item_weapon() constructor {
	name = ["ScarfMark"]
	desc = ["A thin scarf with a thin sheen.Holy writing has been pressed into it, imbuing it with magic."]
	
	stats = {
        magic: 1,
		attack: 4,
		defense: 1,
    }
	icon = spr_ui_menu_icon_scarf
	weapon_whitelist = ["ralsei"]
	
	reactions = {
		susie: "Heheh...",
		ralsei: "I'll keep my place",
		noelle: "Look, ribbon dancing!",
	}
}

//ring, the singular ring
function item_wlb_thornring() : item_weapon() constructor {
	name = ["ThornRing"]
	desc = ["Wearer takes damage from pain. Reduces the TP cost of ice spells"]
	
	stats = {
        attack: 14,
        magic: 12,
    } 
		effect = {
        text: "Trance",
        sprite: spr_ui_menu_icon_ring
    }
	icon = spr_ui_menu_icon_ring
	weapon_whitelist = ["noelle"]
	
	reactions = {
		susie: "A torture device?",
		ralsei: "...",
		noelle: "",
	}
}