timer++
		
if(timer >= duration) {
	timer -= duration
			
	repeat_count--
}
		
if(repeat_count == 0) {
	instance_destroy()
}