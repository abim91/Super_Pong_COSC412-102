/// @description Initial Load
// You can write your code in this editor
randomize();

xvel = -4;
yvel = choose(-5, 5);

xstep = 1;
ystep = 1;

timer = 0;
start_at = 2;
game_speed = game_get_speed(gamespeed_fps);

gameover = false;

move_bounce_all(true);