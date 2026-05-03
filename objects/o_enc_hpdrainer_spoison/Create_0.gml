inflicted = 0
initialized = false;
drained_total = 0;
for (var i = 0; i < array_length(global.party_names); i++) {
    var member_struct = party_get_struct(global.party_names[i]);
    starting_hp[i] = struct_get(member_struct, "hp");
}