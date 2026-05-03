timerr++
if flake {
if (timerr<125+(altpath*30)){
    snowflake[0]=instance_create(obj_spell_sg_snowflake,o_camera.x+455/2,o_camera.y+560/2, DEPTH_ENCOUNTER.ACTORS - 1000) 
    snowflake[1]=instance_create(obj_spell_sg_snowflake,o_camera.x+500/2,o_camera.y+600/2, DEPTH_ENCOUNTER.ACTORS - 1000) 
    snowflake[2]=instance_create(obj_spell_sg_snowflake,o_camera.x+545/2,o_camera.y+520/2, DEPTH_ENCOUNTER.ACTORS - 1000) 
    for (i=0; i<3; i++){
        snowflake[i].gravity=-2
        snowflake[i].vspeed=sin(timerr/2)*0.5
        snowflake[i].siner=timerr/2
    }
    timer2=0
}
	}