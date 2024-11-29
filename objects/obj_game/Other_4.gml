/// @description Insert description here
// You can write your code in this editor
audio_play_sound(menuBg, 0, true);

//check for userinfo.json existance

var info = loadInfo();
var current_username = info[0].username;
//show_debug_message(info[0].username);