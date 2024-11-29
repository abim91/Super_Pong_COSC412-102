/// @description Insert description here
// You can write your code in this editor
var _file;
var _size;
if(file_exists("gameinfo.json")){
	_file = file_bin_open("gameinfo.json", 0);//must be 0 for read only, if mode it will overirde with empty string
	_size = file_bin_size(_file);
	file_bin_close(_file);
	
	if( _size == 0 && _file != -1){
		room_goto(rm_login);   
		}	 
	else{
		room_goto(menu_room);
		}
	}
else{
	_file = file_bin_open("gameinfo.json", 1);//must be 0 for read only, if mode it will overirde with empty string
	_size = file_bin_size(_file);
	file_bin_close(_file);
	
	if( _size == 0 && _file != -1){
		room_goto(rm_login);
	
    
}	 else{
		room_goto(menu_room);
}

}

