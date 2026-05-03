if instance_exists(o_enc){// this is coded specifically for the thorn ring, you can use this code as a base for S.POISON or anything else that requires draining.
if (o_world.frames % 6 == 0) {
    for (var i = 0; i < array_length(global.party_names); i++) {

        var member_struct = party_get_struct(global.party_names[i]);
        var member_hp = struct_get(member_struct, "hp");
        var member_max_hp = struct_get(member_struct, "max_hp");

        var hp_floor = ceil(member_max_hp / 3);

        if (item_get_equipped(item_wlb_thornring, global.party_names[i]) 
        && member_hp > hp_floor) {

            struct_set(member_struct, "hp", max(member_hp - 1, hp_floor));
	        }
	    }
	}
}

if !instance_exists(o_enc) instance_destroy()