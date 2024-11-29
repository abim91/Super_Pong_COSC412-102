// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TimedSpawn(duration, object){
	game_speed = game_get_speed(gamespeed_fps);
	timer = duration * game_speed;
	
	while (timer > 0) {
		timer -= 1;
	}
	
	instance_create_layer(864, 436.2, layer, object);
}