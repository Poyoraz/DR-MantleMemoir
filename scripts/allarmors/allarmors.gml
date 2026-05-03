function allarmors() : item() constructor {
	type = ITEM_TYPE.ARMOR
}

function item_alb_ironshackle() : item_armor() constructor {
	name = ["IronShackles"]
	desc = ["Shackle that ironically increases your attack and defense", "--"]
	
	stats = {
		defense: 2,
		attack: 1,
	}
	
	reactions = {
		susie: "(Damn, it's actually cool...)",
		ralsei: "*jingle jangle* Haha!",
		noelle: "I'm the ghost of holidays past!",
	}
   
}

function item_alb_goldwidow() : item_armor() constructor {
	name = ["GoldWidow"]
	desc = ["A spider made of gold. It gathers coins into it, reducing $ gains", "--"]
	
	armor_blacklist = ["noelle"]
	
	stats = {
		defense: 5,
		attack: 1,
		magic: 1,
}
	effect = {
        text: "$ -10%",
        sprite: spr_ui_menu_icon_down
    }
    
    stats_misc = {
        money_modifier: -.1
    }
	
	reactions = {
		susie: "Spider on my head. K.",
		ralsei: "Itsy and/or bitsy!",
		noelle: "E-ew! Kris, get that away!",
	}
   
}

function item_alb_princessrbn() : item_armor() constructor {
	name = ["PrincessRBN"]
	desc = ["Elegant lace ribbon with gloves, delicate enough to see through.", "--"]
	
	armor_blacklist = ["susie"]
	
	stats = {
		defense: 2,
		attack: 1,
	}
	
	effect = {
        text: "Elegance UP",
        sprite: spr_ui_menu_icon_up
    }
	
	reactions = {
		susie: "Nah, Gloves don't fit.",
		ralsei: "Cute! (Gloves don't fit)",
		noelle: "Kris, you can wear the gloves!",
	}
   
}

function item_alb_mousetoken() : item_armor() constructor {
	name = ["MouseToken"]
	desc = ["A golden coin with a once-powerful mousewizard engraved.", "--"]
	
	stats = {
		defense: 1,
		magic: 2,
	}
	
	reactions = {
		susie: "This guy's... familiar?",
		ralsei: "Chu! Healing power UP!",
		noelle: "... from the family entertainment center?",
	}
   
}

function item_alb_mannequin() : item_armor() constructor {
	name = ["Mannequin"]
	desc = ["It's a mannequin with the clothes permanently attached. Useless", "--"]
	
	armor_blacklist = ["susie", "noelle", "ralsei"]
	
	stats = {
		element_resistance: {
			puppet_cat: .35,
		},
	}
	
	reactions = {
		susie: "Not even gonna ask.",
		ralsei: "Um, the d-dress is cute...",
		noelle: "(Why did they spend $300 on this!?)",
	}
   
}

function item_alb_dicebrace() : item_armor() constructor {
	name = ["DiceBrace"]
	desc = ["A bracelet made out of various symbol-inscribed cubes.", "--"]
	
	stats = {
		defense: 2,
	}
	
	reactions = {
		susie: "... okay",
		ralsei: "It says \"Friendship!\"",
		noelle: "Hey, y-you jumbled it...",
	}
   
}

function item_alb_spikeband() : item_armor() constructor {
	name = ["SpikeBand"]
	desc = ["A black wristband covered in spikes. Has the tendency to get stuck to itself.", "--"]
	
	stats = {
		defense: 1,
		attack: 2,
	}
	
	reactions = {
		susie: "Can't say no to spikes.",
		ralsei: "Um, do I... look tough?",
		noelle: "(Maybe Susie would like this look?)",
	}
   
}

function item_alb_chainmail() : item_armor() constructor {
	name = ["Chainmail"]
	desc = ["Chain-armor. Send it to 10 others or it'll lose its defensive rating", "--"]
	
	stats = {
		defense: 4,
	}
	
	reactions = {
		susie: "Damn, guess I'm cursed.",
		ralsei: "A letter?... For me...?",
		noelle: "Armor? (It's cool...)",
	}
   
}

function item_alb_wafeguard() : item_armor() constructor {
	name = ["Wafeguard"]
	desc = ["Although it looks brittle, it contains a magical energy that blunt damage on inpact. +4DF", "--"]
	
	stats = {
		defense: 4,
	}
	
	reactions = {
		susie: "(Don't eat it. Don't eat it.)",
		ralsei: "It's got drool on it.",
		noelle: "What's next, cheezy armor? faha!",
	}
   
}

function item_alb_mysticband() : item_armor() constructor {
	name = ["MysticBand"]
	desc = ["A silver armlet stained in amber. Increases magic only. magic +4", "--"]
	
	stats = {
		magic: 4,
	}
	
	reactions = {
		susie: "Let's go, Rude Buster!",
		ralsei: "Behold! Heal Prayer!",
		noelle: "(The other flavor is better)",
	}
   
}

function item_alb_glowwrist() : item_armor() constructor {
	name = ["GlowWrist"]
	desc = ["A tough bracelet made of green wires and studded with sharp glowing lights.", "--"]
	
	stats = {
		defense: 2,
	}
	
	reactions = {
		susie: "Whoops, it's tangled.",
		ralsei: "Let me just untangle this...",
		noelle: "It's like holiday lights...",
	}
   
}

function item_alb_spikeshackle() : item_armor() constructor {
	name = ["SpikeShackle"]
	desc = ["", "--"]
	
	stats = {
		defense: 1,
		attack: 3,
	}
	
	reactions = {
		susie: "Get a load of THIS!",
		ralsei: "Looking SHARP!",
		noelle: "(It's tearing my sleeves...)",
	}
   
}

function item_alb_frayedbowtie() : item_armor() constructor {
	name = ["FrayedBowtie"]
	desc = ["An old bowtie. It seems to have lost much of its defensive value.", "--"]
	
	armor_blacklist = ["susie"]
	
	stats = {
		defense: 1,
		attack: 1,
		magic: 1,
		element_resistance: {
			puppet_cat: .15,
		},
	}
	
	reactions = {
		susie: "Look. I have standards.",
		ralsei: "It's still wearable!",
		noelle: "(Reminds me of Asgore...)?",
	}
}

function item_alb_darkgoldband() : item_armor() constructor {
	name = ["DarkGoldBand"]
	desc = ["A black metal with a golden shine.", "--"]
	
	armor_blacklist = ["susie", "ralsei", "noelle"]
	
	stats = {}
	
	reactions = {
		susie: "Not even gonna ask.",
		ralsei: "Um, the d-dress is cute...",
		noelle: "(Why did they spend $300 on this!?)",
	}
}

function item_alb_gingerguard() : item_armor() constructor {
	name = ["GingerGuard"]
	desc = ["A steel bangle tempered by extreme flame. Its shape is humanoid in nature.", "--"]
		
	stats = {
	defense: 3
	}
	
	reactions = {
		susie: "Look! I punched through a guy!",
		ralsei: "A bigger one could make Kris!",
		noelle: "This smells amazing! um, sorry.",
	}
}

function item_alb_tennatie() : item_armor() constructor {
	name = ["TennaTie"]
	desc = ["A giant, heavy-duty, bullet-proof tie. How to even wear it...?", "--"]
	
	stats = {
	defense: 5,
	magic: -2,
	}
	
	reactions = {
		susie: "Bandana-Style",
		ralsei: "Like a sash...?",
		noelle: "Look I'm like a gift!",
	}
}

function item_alb_powerband() : item_armor() constructor {
	name = ["PowerBand"]
	desc = ["A Silver armlet stained with red essence. Increases strength only. ATK +4", "--"]
	
	stats = {
	attack: 4,
	}
	
	reactions = {
		susie: "BLOOD POWER ACTIVATE!",
		ralsei: "I'm juiced up!",
		noelle: "Why always jewelery?",
	}
}

function item_alb_lodestone() : item_armor() constructor {
	name = ["LodeStone"]
	desc = ["A lodestone token shaped like a snail's shell.", "--"]
	
	stats = {
	defense: 2,
	}
	
		effect = {
        text: "TPGain",
        sprite: spr_ui_menu_icon_up
    }
	
	reactions = {
		susie: "Escargot? ... escargross.",
		ralsei: "I have no opinions on snails!",
		noelle: "Did your mom eat the non-shell part?",
	}
}

function item_alb_tensionbow() : item_armor() constructor {
	name = ["TensionBow"]
	desc = ["Gain 10% more tension from grazing bullets", "--"]
	
	stats = {
	defense: 2,
	}
	
		effect = {
        text: "TPGain",
        sprite: spr_ui_menu_icon_up
    }
	
	reactions = {
		susie: "",
		ralsei: "",
		noelle: "",
	}
}

function item_alb_jevilstail() : item_armor() constructor {
	name = ["Jevilstail"]
	desc = ["A J-shaped tail that gives you devilenergy.", "--"]
	
	stats = {
		defense: 2,
		magic: 2,
		attack: 2,
	}
	
	reactions = {
		susie: "Figured I'd grow one someday.",
		ralsei: "I'm a good devil, OK?",
		noelle: "... (I like it...)",
	}
   
}