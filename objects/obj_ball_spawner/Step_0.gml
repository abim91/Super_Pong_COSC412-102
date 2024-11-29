/// @description Update Spawner Cues

if (timer > 0) { timer--; }
else if (timer == 0) {
	timer = -1;
	instance_create_layer(864, 436.2, layer, obj_ball);
}