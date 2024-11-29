/// @description Updates the player's paddle.
// Feather disable GM2017

var winHeight =  window_get_height();

if ((keyboard_check(ord("W")) || keyboard_check(vk_up)) && (bbox_top > 0)) {
	move_and_collide(0, -4*velocity, In_Game_Ball_Object);
	if (bbox_top < 0) { y = 0; }
} else if ((keyboard_check(ord("S")) || keyboard_check(vk_down)) && (bbox_bottom < winHeight)) {
	move_and_collide(0, 4*velocity, In_Game_Ball_Object);
	if (bbox_bottom > winHeight) { y = winHeight - sprite_height; }
} else if (keyboard_check(ord("A"))) {
	if (velocity > 0) {
		velocity -= v_inc;
		if (velocity < 0) { velocity = 0; }
	}
} else if (keyboard_check(ord("D"))) {
	velocity += v_inc;
}