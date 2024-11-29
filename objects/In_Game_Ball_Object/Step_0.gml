/// @description Updates the ball's position and checks for collisions with paddles.

var _collisions = move_and_collide(xstep*xvel, ystep*yvel, all);

if (array_length(_collisions) >= 1) {
	// Object collisions
	//	Left / Right
	if (bbox_right >= other.bbox_left || bbox_left <= other.bbox_right) { xvel *= -1; }
	
	//	Top / Bottom
	if (bbox_top >= other.bbox_bottom || bbox_bottom <= other.bbox_top) { yvel *= -1; }
	
} else {
	// OOB collisions
	//	The ball is behind the player
	if (bbox_right >= window_get_width()) {
		instance_destroy();
		is_dead = true;
	}
	
	//	Ball hit top/bottom of the room
	else if (bbox_top <= 0 || bbox_bottom >= window_get_height()) { yvel *= -1; }
	
	//	Ball hit the left of the room
	else if (bbox_left <= 0) { xvel *= -1; }
}