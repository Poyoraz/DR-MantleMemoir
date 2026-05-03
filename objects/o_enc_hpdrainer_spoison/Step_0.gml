if (!instance_exists(o_enc)) { instance_destroy(); exit; }

if (!initialized) {
    if (variable_instance_exists(id, "target_name")) {
        starting_hp = struct_get(party_get_struct(target_name), "hp");
        initialized = true;
    }
    exit;
}

if (inflicted == 1) {
    if (o_world.frames % 6 == 0) {
        var member_struct = party_get_struct(target_name);
        var member_hp = struct_get(member_struct, "hp");
        var drained_total = max(0, starting_hp - member_hp);
        if (drained_total < 60 && member_hp > 1) {
            struct_set(member_struct, "hp", member_hp - 1);
        } else {
            instance_destroy();
        }
    }
}