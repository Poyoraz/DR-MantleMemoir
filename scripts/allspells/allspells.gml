function item_s_snowgrave() : item_spell() constructor {
    name = ["SnowGrave"]
    desc = ["Deals fatal damage to all enemies.", "Fatal"]
    use_type = ITEM_USE.EVERYONE
    
    use = function(spell_user, caller, _name) {
        cutscene_set_variable(o_enc, "waiting", true)
        cutscene_dialogue(string(loc("spell_cast"), party_getname(spell_user), "SNOWGRAVE"),, false) //hardcoded so it says "SNOWGRAVE", doesent work if this is not here
        cutscene_sleep(20)
    
        cutscene_audio_play(snd_snowgrave)
        cutscene_instance_create(o_eff_snowgrave, 320-50, 240, 200)
        cutscene_instance_create(o_eff_snowgrave_mist, 0, 0, -1000000000) //spawns a bunch of objects that create the main effect (pillar and mist)
    
        cutscene_wait_until(function() {
            return !instance_exists(o_eff_snowgrave) //idk why this is here but its neccessary
        })
        cutscene_func(function(spell_user, index) {
            var __dmg = round(40*party_getdata(spell_user,"magic") + 600 + irandom(100)) //damage equation
            
            for (var i = 0 ; i < array_length(o_enc.encounter_data.enemies) ; i ++) {
                if !enc_enemy_isfighting(i) 
                    continue
                
                var __fatal = (o_enc.encounter_data.enemies[i].hp - __dmg <= 0) //part that decides how many enemies to damage{
                enc_hurt_enemy(i, __dmg, spell_user,, true)
                if !__fatal 
                    animate(1, 0, 5, anime_curve.linear, o_enc.encounter_data.enemies[i].actor_id, "flash") //}
            }
        }, [spell_user])
        
        cutscene_sleep(30)
        cutscene_func(instance_destroy, [o_ui_dialogue])
        cutscene_set_variable(o_enc, "waiting", false)
    }
    use_args = [name[0]]
    
    tp_cost = 200
}